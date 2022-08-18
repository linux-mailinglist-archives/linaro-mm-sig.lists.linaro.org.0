Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D955F6868
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 15:43:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29ED03F56D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 13:43:50 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2069.outbound.protection.outlook.com [40.107.93.69])
	by lists.linaro.org (Postfix) with ESMTPS id D51813F525
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Aug 2022 13:16:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OfYGyJ4WEz9+xNtqyt88gthUhG8FF38LHg7N1bQhGXs2fx8FWFG326FUfVzppP2/9rjeBaIgHf3SwGYMWmP3qLQG5QNPkJH76vG7exdyr6NVT9x6FqKmWdshxrURXILpEA7Pm27mq3zODhO8BETb4AXFb7oz+Mz4HgWrFPMHSKNFUfyglXL5a/Ul6xlW3e13kJPuaR6zEv6uBu5A8WbWY35/Xh2CWBEAVNeKsPlfc8HLjFbsqE39DREccBXWKUt7Gop1tWh4A120ZKpF2MNA91RufsxQM5057P7zSpXsNEWKdrhGnlsDbB0G/BwEDNM//j09ngsUhRYZUVBvd2o76Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=28VhYa5QunRXQkBBnMZMo/T9V3EeOeRmCT+Y7T+enls=;
 b=MCDNSCSWznYsLBFVRaTqFIBNkcu9yGBnmfJ2l7TKC3ZL6vJRhp8NR4Mf1nVTPJrOd26Xs9DK3D+LdvUWwp7Kl7JN23vEyvdZDkcvFVV7/VUv0LevL0WGi3MPfZAU5APBdK2M19kUM38Qky++VCNCmUu7q6A6ipSEulRfx+xu0EKq/e7ARAe1PmQiSII5pnOwy6DNay7V8e26Yd89NNw02tjAdUev5ovHtGo+TkODeQ2g9umLVNOsjgC05QYrDgNyQhmypW8e4q+yTGfnqZLrHWRwHqkba4VCrF/88Q+bHi3QQHQbNpo+dQuFKIEvE0Aepc81OfsZ29vMGLB6agTH2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=28VhYa5QunRXQkBBnMZMo/T9V3EeOeRmCT+Y7T+enls=;
 b=V12GjMOkQ2PLCZWC2LJGL1lI2ARwuWUC3MGfcmfLh123IioyLjvh8AKcTb9Csea58QCGfl1T+JPOd/zMphn943yUDWtdVZwZP7MH/y5KMW0rLjPElHkhIGdSRizwed91z96JGeGkCIrs0vnRPuWDoJ4kp0/6a+jiXwd8nHa1E+LPakYVGIIRwNGgaDbwCTyACPqFCqnyp/NNIpI1GypIhcb/wHVWU9hmJ09KR6OP0gOz3+xLSGvcOoalJSmPxMDeSXT/6UhmqEIEk8QBcZk6v0mXQPNAJEXp3aYVtGHeK5ClOUW8AJBgTvPNCN36l5lSq+MGKFjzQjDaOaFzS1l8Fw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB4192.namprd12.prod.outlook.com (2603:10b6:208:1d5::15)
 by PH8PR12MB7025.namprd12.prod.outlook.com (2603:10b6:510:1bc::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.19; Thu, 18 Aug
 2022 13:16:08 +0000
Received: from MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5]) by MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5%6]) with mapi id 15.20.5525.019; Thu, 18 Aug 2022
 13:16:08 +0000
Date: Thu, 18 Aug 2022 10:16:06 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <Yv47lkz7FG8vhqA5@nvidia.com>
References: <0-v1-9e6e1739ed95+5fa-vfio_dma_buf_jgg@nvidia.com>
 <921de79a-9cb3-4217-f079-4b23958a16aa@amd.com>
 <Yv4qlOp9n78B8TFb@nvidia.com>
 <d12fdf94-fbef-b981-2eff-660470ceca22@amd.com>
Content-Disposition: inline
In-Reply-To: <d12fdf94-fbef-b981-2eff-660470ceca22@amd.com>
X-ClientProxiedBy: MN2PR12CA0027.namprd12.prod.outlook.com
 (2603:10b6:208:a8::40) To MN2PR12MB4192.namprd12.prod.outlook.com
 (2603:10b6:208:1d5::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 13ede1b0-315f-4770-3a56-08da811bcfd4
X-MS-TrafficTypeDiagnostic: PH8PR12MB7025:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cMQEts3JrozPyuFh0j56SLEd9XYjUaT8imCp7+51eT9hQ9Eemk1HsJIgO2N+zXm0kTHHjrBGRFDrK0V4v2vsJA5KM5jlRHqdT1UiZLqToUxVPE8zPirvSEV5a/OqgOHR5qu535VLOMh+gI3JEm/EhtTb1kL7N1gX6/nf9OdSwiAeiSHdHgI0gZZTANwzNFaeLjxR0GaN5ZrtrK6KwtHy4i0QLrenryXSEvdxdpxmZSb8nreqL/Pn+5Lm2YwqTpZyODjBlai6+Il7rb0LWhabciwB6Zb746jLpu0UnKlGNzrPT1R+8E0qg4yV+yCTRcVDYVOhXHwNThO36tZnKBMAm6x0rki+GsBcnwnAjJbPBH92bCbnoJB6WTW+spN3r17Y8wvqih1eNfbh1waMSxJ2cimYOw32xUlIzE2TFfQ0mY8+M88WjvaYXa8pXD/ErureSbi5kktGyzu7Dus9BVpsViZc3f9YOEJLw0KFYn43tntLfyY4R0hxywgQve44Pp4dp80ngDxnhHGMfpblNHkMfAuHRfLvGk2uhOmktds9vabUrVKgWO6Dkq/bChPuY/Pd31dTBRGuYSZju+RR4nW/FDvsixi0qQIKavr1/yQ/TT2uXhEAueRLrT1rKn6ctuAoqzw7SOZKtkAli+XZUN5xAaSMBYuGUPgXg4gXSp3dB5h/RNKiK/WfJl8VbIdkGIkxWir+9tv8UoPfhfGC2uVNug==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4192.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(396003)(366004)(376002)(39860400002)(346002)(66574015)(86362001)(2616005)(186003)(4326008)(83380400001)(38100700002)(66556008)(8676002)(66946007)(66476007)(36756003)(316002)(54906003)(8936002)(5660300002)(7416002)(2906002)(6486002)(41300700001)(6506007)(478600001)(6512007)(26005)(6916009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QythYndwUS94eGplN2l4Z3hFdmxQbkJ1c0hqUWFvVExwbWQ0L0FuNGRpWklj?=
 =?utf-8?B?UmxWRUd1NVU3cnVZUEFhdDdlc2xFdUNDZGU0bzVZN3h6QkdxT2Y0U3VqdTEv?=
 =?utf-8?B?aGFLNlZvanFDQXpnai9EV0lEUTQyK3VOMmxUZS80ZCtqRkNZeU5QS2VXUHFG?=
 =?utf-8?B?V1FWQTN1SmFsY0pJbU15SlRwaEpHRUVyZG1RSkpWby9rVnV1UGI5Mm9XWjNN?=
 =?utf-8?B?N2pMeHkzU1BkaHo4VDVFQzBNQUhldDFQbkhsYnlXdWRTY0V5QXpJYy9OeHlv?=
 =?utf-8?B?RG95UDU1OU85b0lHWnpRSU9JQUo3QWNQeUMzNFZkUWxwd1dadEdlQ2hjaGFV?=
 =?utf-8?B?QmVhY2NRMGlYOE5admxnQnZ5ZEsybEYxQ2p4QVVkMnBsVTVLN1NHNjhYUlF6?=
 =?utf-8?B?WWplajR3a1RtSm0yTjVvUlZ4YXUzR0lMdmZVLzl0UUQ2anBaemJpTXFpbnhI?=
 =?utf-8?B?OTV6eEJwWGdocHR5SFJZcDlMMGl4NUh1ZTg3UWF1T3R2U0dBdEtaU3QvRHkr?=
 =?utf-8?B?czYyaEdwcGtQY2NLU2NKeDRhQVpFY2FQc0VCQ0praG4yOXRETi81ZStTUUFu?=
 =?utf-8?B?R0REcE43YXdvVFN5VGVjZndWU3dENTBsaFVTQ1FXalBNbm9hWkZlUUpXWCs3?=
 =?utf-8?B?dnl3UTFWOHFYR2syYXBLUlcvOFJSby9kZEhmbUFBSmVreVIraTNBekUyNkwx?=
 =?utf-8?B?STBrU2x6RHJjVjdPa0JNWUhOTW5NUmhVbTF0SWRhTk84NC9GZWJnVm1jT3h6?=
 =?utf-8?B?RjlIMHY1UW9Fby9sQlQ4b1NzMVhXdSswQ3ZzT3Y5QzdtSitrd3JhQXFpYk5U?=
 =?utf-8?B?Qm43cy9XdWpPZG8xaWlFcjkzNnRrb0dYcVV3Z0pxd3dPZHlHK0JibWN1dUN3?=
 =?utf-8?B?MzZDd1diQnZMdk1UaGVXOXlhL0hCYTNSc0ZLOG1nalJLWWtYM0NHMURtTkY0?=
 =?utf-8?B?M0l2YjdyQUIxNlJpSWFlWXdjYWgxSm10WGE5YmttQklVRzhneE9UMWpPTkRW?=
 =?utf-8?B?WkVwVWN4b2VoNG1DZHYyUkZQeUJ5dTl1RlZETGwzNG1rY3FVbUd4NDFzQ2pF?=
 =?utf-8?B?eTk4clBoREVvcnVrWkRoN3Z0S0U5bzFRbUtSUzJtWmVReXYwTWpqd1NFYVBL?=
 =?utf-8?B?ZXNuT1JzOW92SDdkd2hSa0NpY2kvWjdqcE4wOXBCRnBpNTRCOHlmalhnQ0o1?=
 =?utf-8?B?RVZBUlBNM0laQnR1TmRuK0tkQ2c2bUpTQmozUHdSRWlRU3RQSnJ5REs5SkJX?=
 =?utf-8?B?WDJsMGxHNFg5c1hBYzZBTXpSSWlld2hjQUw1aU5pVmNTNWNPRkJjRm1hOGdk?=
 =?utf-8?B?dHFuUXM1R1JUSTEzbFlERUZkM0Z4L3VLaWFxZlk1ald3c0FHSzVWb0xWZlRR?=
 =?utf-8?B?dkozM2hUc1lZSHVRQWtqaUQ1Q2xKYWFiQlluWm8wYVR6b2pONkhMYUxXOEZu?=
 =?utf-8?B?ZjFnb04ycXdWR3A3MGd3QW5WY2QvQ3ZUNGJuZFlqaGkrRmJad0RJOWtUQjI2?=
 =?utf-8?B?b2laS2pzbVJiY3Z4S3pUalZnUE93L0VzdmU3dk96S2YvRDEzT0UvRFg4d0d4?=
 =?utf-8?B?SjNGMUlwR3I2Qm91SnNiTktzTVNycWRSS1g1QlRnZ1YzakwxMU5WK2dsMDRF?=
 =?utf-8?B?MjZkOWRncmI1cUJQVjhvUWZPejN0blh6R1FveU5lSzRUaVdsVWZIajBNcUlj?=
 =?utf-8?B?Nit0NzlNSWp0aHhkYzJXUklLOEFmSkdjT0lyYTcwZDVVSzdleUZDSDdWZStk?=
 =?utf-8?B?RDR6WmlJQytMY245eGpyNEpMeW1NVDJNVU1yNmwybDdoNE9TWlUzcWJyMHdL?=
 =?utf-8?B?WTNqVlRObnNTUlMyZW5SMzNRVXZrYnV0NG9lOHh0M0NRbkJHVk9ZUzF1bHpT?=
 =?utf-8?B?OXo2UytCUHJML012RldXalRUZERVYlVvMk9ERDYyTVF0UUVjM29YOW4rcXdX?=
 =?utf-8?B?M1Bidm1uazZnMzBaVFg3eTU5MHllYXFtc1d0dzNaV29RN1BWWjQwT3YydFA4?=
 =?utf-8?B?TXZiSUc3U0IwQXllTkxKU1NaQS9KaHY1S3NwL042V3BjenhnNDRBVkQrVkVl?=
 =?utf-8?B?MFpMYkxsY2F5eUlnTGUrNVFnVU5tam5HbEpoMkhNM082cytzU0UrUVdVUjBj?=
 =?utf-8?Q?NugEBAhd4IK/5ITfEliaVM1Eh?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13ede1b0-315f-4770-3a56-08da811bcfd4
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 13:16:07.9269
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OWhRUz29UZTAaBRZAED1EBbE7uXXTxyKKIP/ImLlvZTEAO09oQnEd6BkLzRfHvdL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7025
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QLVDS6GQRYPHLECZUA5PDBEICOJPWXSJ
X-Message-ID-Hash: QLVDS6GQRYPHLECZUA5PDBEICOJPWXSJ
X-Mailman-Approved-At: Thu, 06 Oct 2022 13:43:03 +0000
CC: Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QLVDS6GQRYPHLECZUA5PDBEICOJPWXSJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBdWcgMTgsIDIwMjIgYXQgMDI6NTg6MTBQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiA+ID4gVGhlIG9ubHkgdGhpbmcgSSdtIG5vdCAxMDAlIGNvbnZpbmNlZCBv
ZiBpcyBkbWFfYnVmX3RyeV9nZXQoKSwgSSd2ZSBzZWVuDQo+ID4gPiB0aGlzIGluY29ycmVjdGx5
IHVzZWQgc28gbWFueSB0aW1lcyB0aGF0IEkgY2FuJ3QgY291bnQgdGhlbSBhbnkgbW9yZS4NCj4g
PiA+IA0KPiA+ID4gV291bGQgdGhhdCBiZSBzb21laG93IGF2b2lkYWJsZT8gT3IgY291bGQgeW91
IGF0IGxlYXN0IGV4cGxhaW4gdGhlIHVzZSBjYXNlDQo+ID4gPiBhIGJpdCBiZXR0ZXIuDQo+ID4g
SSBkaWRuJ3Qgc2VlIGEgd2F5LCBtYXliZSB5b3Uga25vdyBvZiBvbmUNCj4gDQo+IEZvciBHRU0g
b2JqZWN0cyB3ZSB1c3VhbGx5IGRvbid0IHVzZSB0aGUgcmVmZXJlbmNlIGNvdW50IG9mIHRoZSBE
TUEtYnVmLCBidXQNCj4gcmF0aGVyIHRoYXQgb2YgdGhlIEdFTSBvYmplY3QgZm9yIHRoaXMuIEJ1
dCB0aGF0J3Mgbm90IGFuIGlkZWFsIHNvbHV0aW9uDQo+IGVpdGhlci4NCg0KWW91IGNhbid0IHJl
YWxseSBpZ25vcmUgdGhlIGRtYWJ1ZiByZWZjb3VudC4gQXQgc29tZSBwb2ludCB5b3UgaGF2ZSB0
bw0KZGVhbCB3aXRoIHRoZSBkbWFidWYgYmVpbmcgYXN5bmNocm9ub3VzbHkgcmVsZWFzZWQgYnkg
dXNlcnNwYWNlLg0KDQo+ID4gCWRvd25fd3JpdGUoJnZkZXYtPm1lbW9yeV9sb2NrKTsNCj4gPiAJ
bGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHByaXYsIHRtcCwgJnZkZXYtPmRtYWJ1ZnMsIGRtYWJ1
ZnNfZWxtKSB7DQo+ID4gCQlpZiAoIWRtYV9idWZfdHJ5X2dldChwcml2LT5kbWFidWYpKQ0KPiA+
IAkJCWNvbnRpbnVlOw0KPiANCj4gV2hhdCB3b3VsZCBoYXBwZW4gaWYgeW91IGRvbid0IHNraXAg
ZGVzdHJveWVkIGRtYS1idWZzIGhlcmU/IEluIG90aGVyIHdvcmRzDQo+IHdoeSBkbyB5b3UgbWFp
bnRhaW4gdGhhdCBsaXN0IGluIHRoZSBmaXJzdCBwbGFjZT8NCg0KVGhlIGxpc3QgaXMgdG8ga2Vl
cCB0cmFjayBvZiB0aGUgZG1hYnVmcyB0aGF0IHdlcmUgY3JlYXRlZCwgaXQgaXMgbm90DQpvcHRp
b25hbC4NCg0KVGhlIG9ubHkgcXVlc3Rpb24gaXMgd2hhdCBkbyB5b3UgZG8gYWJvdXQgaW52b2tp
bmcNCmRtYV9idWZfbW92ZV9ub3RpZnkoKSBvbiBhIGRtYWJ1ZiB0aGF0IGlzIGFscmVhZHkgdW5k
ZXJnb2luZw0KZGVzdHJ1Y3Rpb24uDQoNCkZvciBpbnN0YW5jZSB1bmRlcmdvaW5nIGRlc3RydWN0
aW9uIG1lYW5zIHRoZSBkbWFidWYgY29yZSBoYXMgYWxyZWFkeQ0KZG9uZSB0aGlzOg0KDQoJbXV0
ZXhfbG9jaygmZGJfbGlzdC5sb2NrKTsNCglsaXN0X2RlbCgmZG1hYnVmLT5saXN0X25vZGUpOw0K
CW11dGV4X3VubG9jaygmZGJfbGlzdC5sb2NrKTsNCglkbWFfYnVmX3N0YXRzX3RlYXJkb3duKGRt
YWJ1Zik7DQoNClNvIGl0IHNlZW1zIG5vbi1pZGVhbCB0byBjb250aW51ZSB0byB1c2UgaXQuDQoN
Ckhvd2V2ZXIsIGRtYV9idWZfbW92ZV9ub3RpZnkoKSBzcGVjaWZpY2FsbHkgaGFzIG5vIGlzc3Vl
IHdpdGggdGhhdCBsZXZlbCBvZg0KZGVzdHJ1Y3Rpb24gc2luY2UgaXQgb25seSBkb2VzDQoNCgls
aXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaCwgJmRtYWJ1Zi0+YXR0YWNobWVudHMsIG5vZGUpDQoN
CkFuZCBhdHRhY2htZW50cyBtdXN0IGJlIGVtcHR5IGlmIHRoZSBmaWxlIHJlZmNvdW50IGlzIHpl
cm8uDQoNClNvIHdlIGNvdWxkIGRlbGV0ZSB0aGUgdHJ5X2J1ZiBhbmQganVzdCByZWx5IG9uIG1v
dmUgYmVpbmcgc2FmZSBvbg0KcGFydGlhbGx5IGRlc3Ryb3llZCBkbWFfYnVmJ3MgYXMgcGFydCBv
ZiB0aGUgQVBJIGRlc2lnbi4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
