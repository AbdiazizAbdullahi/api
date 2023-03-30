class ReviewsController < ApplicationController
    def index
        reviews  = Review.all
        render json: reviews
    end

    def show
        review = Review.find_by(id: params[:id])
        if review
        render json: review
        else  
            render json: { error: "Review not found" }, status: :not_found
        end
    end
    def create 
        review = Review.find_by(id: params[:id])
        review.create(review_params)

    end

    def destroy
        review = Review.find_by(id: params[:id])
        review.destroy
        head :no_content
        
    end
end

    private

    def review_params
        params.permit(:comment, :rating)
    end