//
//  HomeResponseData.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

 
import SwiftUI

import Foundation

struct HomeResponseData: Codable {
    let advertisementImgs: [AdvertisementImg]
}

struct AdvertisementImg: Identifiable, Codable {
    let id: String
    let img: String
    let title: String
    let description: String?
    let type: String
    let voyageId: String?
    let landTransportId: String?
    let hotelId: String?
    let travelCompanyId: String?
    let driverId: String?
    let createdAt: String
    let updatedAt: String
}

struct Voyage: Identifiable, Codable {
    let id: String
    let visa_price: Int
    let number_seats: Int
    let discount_rate: Int
    let isFamily: String
    let isOpen: String
    let voyage_status: String
    let voyage_day_file: String?
    let date_from: String
    let date_to: String
    let createdAt: String
    let updatedAt: String
    let voyageDetailsId: String
    let voyageDetails: VoyageDetails
    let voyageProgram: [VoyageProgram]
    let daysCount: Int

    enum CodingKeys: String, CodingKey {
        case id
        case visa_price
        case number_seats
        case discount_rate
        case isFamily
        case isOpen
        case voyage_status
        case voyage_day_file
        case date_from
        case date_to
        case createdAt
        case updatedAt
        case voyageDetailsId
        case voyageDetails = "VoyageDetails"
        case voyageProgram = "VoyageProgram"
        case daysCount
    }
}

struct VoyageDetails: Identifiable, Codable {
    let id: String
    let img: String
    let title: String
    let description: String
    let transportationType: String
    let voyageScope: String
    let travelCompanyId: String
    let airlineId: String
    let placeId: String
    let airline: Airline
    let travelCompany: TravelCompany
    let place: Place

    enum CodingKeys: String, CodingKey {
        case id
        case img
        case title
        case description
        case transportationType
        case voyageScope
        case travelCompanyId
        case airlineId
        case placeId
        case airline = "Airline"
        case travelCompany = "travelCompany"
        case place = "Place"
    }
}

struct Airline: Identifiable, Codable {
    let id: String
    let title: String
    let description: String
    let img: String
    let createdAt: String
    let updatedAt: String
}

struct TravelCompany: Identifiable, Codable {
    let id: String
    let title: String
    let location: String
    let manager: String
    let description: String
    let app_comission: Int
    let logo: String
    let cover_img: String
    let mobile: [String]
    let monday: Bool
    let tuesday: Bool
    let wednesday: Bool
    let thursday: Bool
    let friday: Bool
    let saturday: Bool
    let sunday: Bool
    let email: String
    let workingStartTime: String
    let workingEndTime: String
    let createdAt: String
    let updatedAt: String
}

struct Place: Identifiable, Codable {
    let id: String
    let city: String
    let img: String?
    let description: String?
    let priority: Int
    let createdAt: String
    let updatedAt: String
    let countryId: String
    let country: Country

    enum CodingKeys: String, CodingKey {
        case id
        case city
        case img
        case description
        case priority
        case createdAt
        case updatedAt
        case countryId
        case country = "Country"
    }
}

struct Country: Identifiable, Codable {
    let id: String
    let name: String
    let isIraq: Bool
    let img: String
    let description: String
    let priority: Int
    let createdAt: String
    let updatedAt: String
}

struct VoyageProgram: Identifiable, Codable {
    let id: String
    let price_adualt: Int
    let price_child: Int
    let price_child_seat: Int
    let price_infant: Int
    let price_single: Int
    let voyageId: String
    let voyageHotelId: String
    let notes: String
    let voyageHotel: VoyageHotel

    enum CodingKeys: String, CodingKey {
        case id
        case price_adualt
        case price_child
        case price_child_seat
        case price_infant
        case price_single
        case voyageId
        case voyageHotelId
        case notes
        case voyageHotel = "VoyageHotel"
    }
}

struct VoyageHotel: Identifiable, Codable {
    let id: String
    let hotel_img: String
    let hotel_name: String
    let hotel_location: String
    let hotel_rate: Int
    let hotel_description: String
    let createdAt: String
    let updatedAt: String
    let travelCompanyId: String
}

struct Hotel: Identifiable, Codable {
    let id: String
    let name: String
    let rate: Int
    let mobile: [String]
    let description: String
    let active: Bool
    let createdAt: String
    let updatedAt: String
    let placeId: String
    let place: Place
    let hotelImg: [HotelImg]

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case rate
        case mobile
        case description
        case active
        case createdAt
        case updatedAt
        case placeId
        case place = "Place"
        case hotelImg = "HotelImg"
    }
}

struct HotelImg: Identifiable, Codable {
    let id: String
    let img: String
    let createdAt: String
    let updatedAt: String
    let hotelId: String
}

struct LandTransport: Identifiable, Codable {
    let id: String
    // Add other properties as needed
}
 
