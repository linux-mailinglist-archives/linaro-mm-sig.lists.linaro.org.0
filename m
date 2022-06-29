Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED8955FB6F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 11:12:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D34F3F441
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 09:12:44 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2082.outbound.protection.outlook.com [40.107.92.82])
	by lists.linaro.org (Postfix) with ESMTPS id 8265A3EF6B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 09:12:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aD41KtCc2xID56lqgk6oZnsyA4IuHsVVVinhqSwSxvfXa4uI/TURNtBZmkkrww5Gzr4OLvCZUgsu8iDmefdVcCMNtb0gv04IHVx/zc4O2iDDPelydsXTNfqlNwtPk8DqULxBcLt9dnFW7SgcONKnWSsnxp+bn4bEbN6xueBrT/vQsKzVzxkoZ82Ip9IQ/cmWiTnYGuMke0sTNKCJgej+2L6ty+OIDODAec3jDMpQIBFt5aZGxUHBJLCVE2mZfT9hA8nrKDfWfNxFrjOXWUsLP2PAqY3CjXVgtrCVS0oxKUJWc6pS7p2nSJh/1dg6HnL2IjqxOTtxDPRCqhPdPif+Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HKnjmI/D06DvqqJSU5BT8xKxvwJWeZgmuUEikkeXZrY=;
 b=isRtb3mFtsTw0kSIIUpRUPlKFOyLBrflKFvPrG+Gai3EIuhFzDBnMzmgsyGqA3lgD0cCBGJASZfmI7TSBK3T2tEx8vzDtmRMmRz5z5U4pryRtHVFggzCgVfytrj8vly/1P+CvE9JKL5Fk/wHXBM/81ezXH/LiiBPjFjpo6ILoVzPdDSNha9cum1XmrMkhQbycA5D21QS99zxBmQ3UwCTa85YlcvfDjkkjVOE59umfOqMMBrBnGY+Pg+ETUw0h7Hlkhvp7I8gtVa8xZouuyF46IKuSXpg/V0+EyRIvbQ0PfvSmX3XeeGf001Me7hJ7i5gCljhJkFgHP/O+DsoPD8pZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HKnjmI/D06DvqqJSU5BT8xKxvwJWeZgmuUEikkeXZrY=;
 b=N7Gw13+KMXJkIxI5CEmmQSTLYYiEe9RhjNzXcP6EBv8SPbDqKT7/UBoXrgBirnX5ae7EK9lV1SAW5Lvai6jLQszc9vt3BieBnLVY7LRcAHFHm01d8z7fCuhpvlznJ22Z1pQbwYw0mH0U2jQ2ymjvKYsNGIpNOFHNdrx8n8dI23Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MWHPR1201MB0141.namprd12.prod.outlook.com (2603:10b6:301:56::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Wed, 29 Jun
 2022 09:12:35 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5395.014; Wed, 29 Jun 2022
 09:12:34 +0000
Message-ID: <8499b1f1-cd39-5cb4-9fac-735e68393556@amd.com>
Date: Wed, 29 Jun 2022 11:12:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: jie1zhan <jesse.zhang@amd.com>, broonie@kernel.org,
 alsa-devel@alsa-project.org
References: <20220629060236.3283445-1-jesse.zhang@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220629060236.3283445-1-jesse.zhang@amd.com>
X-ClientProxiedBy: AS9PR04CA0137.eurprd04.prod.outlook.com
 (2603:10a6:20b:48a::12) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6e61abe0-4415-4f62-cda0-08da59af80ec
X-MS-TrafficTypeDiagnostic: MWHPR1201MB0141:EE_
X-LD-Processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	z/UcpfzSfzv6i6bKL116Qx7BeTevDwuDtAqnIfq9K5F5TObuaSCnpshEYLEVN+y0S2hxNRRWWpW21fGqTltcOHAmVXtljVC4kzOfoiXKUEiarA6+nhM70iS+ac77VLIaUMfczJLkLp6jbPTqB1MYQxzz7KSBYsGrmxkYUFiQmpI5BUUgfas6yrOQST/YrpOqFDuwlLII5qRq+Zo7UOyYiId1bwb8QKcnPDfXy+zHxscXexR+evgnNfCLt+9jPdYQvO6C/UVOB5wHTVIPSU7x22tqg1B7cSvioVIjW8sUJEvJtTvCzqAIqE3yrFA3H35PzzuQ8QrLFqBDGBlrG0d9jj2g2o8nYshm+T9nk0WVz+/h+Py7CTHKLztI8Cs3uk4T0TlThzUuyyVANzwM0Jnb1LWRBmkYuWskpNO5KT7ud/opRZ9CCkPzAIcPk2dxDHs1hikPTJNZBWPHtRiRuAML5iSGPM0UbEW2qZoht4zZ204BBTeLqH4JxguHjwvqyHyuYIUdWJCenH0P/vD+w7PGDsKpUMlbCORl4/+IeHUr/Fdv6G1S62b0tI9jdqZ8xaMOdokLpb8EH9INVdJ93EyrRZqUVU9QVY8kHyVTF0cLcjpX2RJK2QDurTVepJM7Ic4lPTJN+gdGsDsuemLTyWCDZd+9l6hXOlsk2xXTYqEKZtq2TjssvRANPNd3t7E9UAzZQ644cPG93yTryS8+SI7BfyqnIwfVYAhlpP7MikRQ6HnMSCDWu+xNBjtY7uYh+PiqmrcbnaurdE5gOlOnner2udmKJPbF4dOaXOKzWDpwLPwet0b5AZDnPBSekQTZ6rs9BjaP9AtFI3eilkNq44OgtDDsafe8+G4XhpNIxd/ENgb8S2IwQeUaVFWw5dZVZOuc
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(366004)(376002)(396003)(346002)(39860400002)(31696002)(86362001)(38100700002)(8936002)(5660300002)(6486002)(478600001)(2906002)(41300700001)(7416002)(316002)(54906003)(6666004)(8676002)(4326008)(66476007)(66556008)(66946007)(66574015)(186003)(83380400001)(6506007)(2616005)(6512007)(36756003)(31686004)(45980500001)(43740500002)(414714003)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Uy9DRUR4S1h6Lzdhd3N2L2gyU2VMdHFXbFBwSE9lbFRMYkYwTlg4eDhWUDll?=
 =?utf-8?B?cWxGd09TWU1hK2pkeXhUUjFrTzk4YW00bUtMMWRwdzl3cEFmRVFYU2RtZkow?=
 =?utf-8?B?YmNnR0V4TzZzNjBuYWZkM1d2TjR3aU1ObGVPdjk3SWZxd1RyM3VDbzk1NjBn?=
 =?utf-8?B?KzVDSUdvT0xpVTg1bnEwMEhnM1pob1grdlhvUWtITDdoeVl0LzczSWpKT0o4?=
 =?utf-8?B?UFdxdy85cGxJNjNFVXhoc1JGRUJTcC9meHJoN0lYWjh6SGJ2RlBvcGFYc0g3?=
 =?utf-8?B?RzlJbG91Z0lHMExxeXQ4RVJUQmVWOEJoRDZkYWJndXUwaVNTa3JzeHlFOTFl?=
 =?utf-8?B?VHJ2OUhoL2hHZEFqOEdJZStrc2dRb0NBWTJPeGVodmF0VlBmZVNZM3ZXT2JX?=
 =?utf-8?B?Z1lvemY3eElzRG95LzVBSkk2bWlzTFFweldKbVpHaVlSVjl5Q2tKY2RsQ3Ev?=
 =?utf-8?B?VFlKSHduTFh3MmdpTTg3bFFyMXdnOHlBbE1PdFYxY3hpZDdoLzZnbFNqdXha?=
 =?utf-8?B?djlPZVNYczhNRExBbWU5MW5nRTZUZ2RCeW9KVnNiVFBUaWJJUUltZThDWVYv?=
 =?utf-8?B?OUhFbDZUNGRzWXFrUUluM0xKcXRPc0hvNktYVmkyTXUyZUtWWGFxUjhkd0ln?=
 =?utf-8?B?YXB0ZmV3YSt3V0dpUEVIb2VyV1dLWVl2c0lFdFRMdDU0NUNtVXVlOHBnS3hl?=
 =?utf-8?B?SjJkUHpRTGU1aXRCMXcyb213Z1NqT05uajZFbkxHZW5yd3V4R0htWVRQMzYy?=
 =?utf-8?B?cWdJZ3laL21Nd1VLbnI2ZlI0N1NQZjl3bHBwSndyREo2NUVSRm5JRE5mTW5R?=
 =?utf-8?B?QjUzc1pPWXpNV1haMEp3R2Z0VVQvZDMveG52cDRwZnAyU2NaRDhLZzV6MzNM?=
 =?utf-8?B?ZzFRbXp0b0JObjJ3NnR5Z0E0VCtrWTExTTVGRG1Dem1GTzl5R01sbkdkY2wx?=
 =?utf-8?B?dG1aNHE1OHNHVG01MjZYVzJDWVc3QzFreGRjMTl1NXZHV3I1a3JSNVFyQXd0?=
 =?utf-8?B?TW1YalNaWDVybkY5MjZwbnNHWnRhSVlIL3lIMHM3eUljL2gxeDJmS1o3S1da?=
 =?utf-8?B?dVE2am8wYzZNMTZDS0VUV0FFTGx4RFZzc3RnNVNpTnJTWTdRMUtrL3NZbTla?=
 =?utf-8?B?Zk04UUFVOGNTdGtwTzVCQVdhWmVBWndwSU5ZcC8xSSs3dFlvdTFxMjFkQ1Nu?=
 =?utf-8?B?M3JvRGsySXBNVUQzMmN0RHNoWmVsNDEwZWF0RHVsK2M5WWZLYzFWRjRmQ2ZJ?=
 =?utf-8?B?QU44ejkrbHNXYmwvejZnWE1vZEtSanU1REVjQ2ZKN0I3YkljRmVvRjlVaUJX?=
 =?utf-8?B?U05nZGlQeWNFNFhGYS9FRm02bjhZQzZmMHdmWktMNFNXYS8zb09mcE9xcmNn?=
 =?utf-8?B?aGhTWGNNVnBYd3ZqMVd2QUtIN3pVU3EyN0ViMWt3NVl5azhJWC9sTm13WWhn?=
 =?utf-8?B?blNvUHAyWkZjeFlwNUFuL3BlMCtSRkNMM0JuWG5RcTRkUUZTYmltR24xeWtJ?=
 =?utf-8?B?N0pIcUxod2dSZ2ZmSkk0dmh1L05aS1hrdC9kM1dBZkpPYXkxajVTMXZ3TW9h?=
 =?utf-8?B?eEZNSWxnVHVmdDkxbzdXSEZvcmdRMklLYWVudG5kdnJGcVlQbElDM0ZISi9J?=
 =?utf-8?B?cUR3bHE5ZlVyaThRTEI2Y0U3cERZYnVvcWY0YkF6NWJMKzl6NnVHcUF1UVVN?=
 =?utf-8?B?WjUrSU5WTTM3MjlMYlVmSkl2Z1hKbEIxVm9YREFzazJqU3czRzRjdVd6azh5?=
 =?utf-8?B?Zmw1UHNSd21sTi9abU5yYUQ0amJxRUMyODNyUjJNSHcyblNwSG1tZ0Z0QVlw?=
 =?utf-8?B?ckVNc3QyS1JzVW5DakVUWFBXbW4wOEFDTWtacEFWa0plY3FhbzNsbzAxY3dC?=
 =?utf-8?B?R3V0QXhtallTQXpkTkJtUU5wVVplc1JYNzVFbnVWVFo2aFdwSWNHN1BVK2xj?=
 =?utf-8?B?RGZ0NHI1SVlJMjdkNjRHOTlXeVY2RFM4ZTFoRFBWVHRveHluMWt6WFNXQXR4?=
 =?utf-8?B?aCsxdEZkK2YrUW1DcWdPM2FESTlhM0YwVUI3bFI1UDBKZDFxL1RJcFZBQnN5?=
 =?utf-8?B?T3hSeklJUGFEaVJsWnBFSDdaOXNOM2twRXhXcFcyR2tkUm9TUzI4dkF4aDZB?=
 =?utf-8?B?MlBLZHRIdUxkRGdNaUZFRUl0SDhBTUVqbjUwaVpCcVBvYXBxa3lnUWJCaDNB?=
 =?utf-8?Q?UW5Eb/xy7RVQVOTs2/UlsiCAt/CucRbRYgJqhFSnyghj?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e61abe0-4415-4f62-cda0-08da59af80ec
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2022 09:12:34.5841
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iybp/BPA0GSNVfZr7eLMfXvVxSm3LV2y1EXVgXHC14QFpnx8JpocjTHu/3jM5TCs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB0141
Message-ID-Hash: FA5TOPXVGGRY3HKYPDVXPRQRQDNSA2C3
X-Message-ID-Hash: FA5TOPXVGGRY3HKYPDVXPRQRQDNSA2C3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Vijendar.Mukunda@amd.com, Basavaraj.Hiregoudar@amd.com, Sunil-kumar.Dommati@amd.com, ajitkumar.pandey@amd.com, Nirmoy Das <nirmoy.das@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] Fix: SYNCOBJ TIMELINE Test failed.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FA5TOPXVGGRY3HKYPDVXPRQRQDNSA2C3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjkuMDYuMjIgdW0gMDg6MDIgc2NocmllYiBqaWUxemhhbjoNCj4gICBUaGUgaXNzdWUgY2F1
c2UgYnkgdGhlIGNvbW1pdCA6DQo+DQo+IDcyMTI1NWI1MjcoZHJtL3N5bmNvYmo6IGZsYXR0ZW4g
ZG1hX2ZlbmNlX2NoYWlucyBvbiB0cmFuc2ZlcikuDQo+DQo+IEJlY2F1c2UgaXQgdXNlIHRoZSBw
b2ludCBvZiBkbWFfZmVuY2UgaW5jb3JyZWN0bHkNCj4NCj4gQ29ycmVjdCB0aGUgcG9pbnQgb2Yg
ZG1hX2ZlbmNlIGJ5IGZlbmNlIGFycmF5DQoNCldlbGwgdGhhdCBwYXRjaCBpcyBqdXN0IHV0dGVy
bHkgbm9uc2Vuc2UgYXMgZmFyIGFzIEkgY2FuIHNlZS4NCg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBq
aWUxemhhbiA8amVzc2UuemhhbmdAYW1kLmNvbT4NCj4NCj4gUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4NCj4gUmV2aWV3ZWQtYnk6IE5p
cm1veSBEYXMgPG5pcm1veS5kYXNAbGludXguaW50ZWwuY29tPg0KDQpJIGhhdmUgc3Ryb25nIGRv
dWJ0cyB0aGF0IE5pcm1veSBoYXMgcmV2aWV3ZWQgdGhpcyBhbmQgSSBjZXJ0YWlubHkgDQpoYXZl
bid0IHJldmlld2VkIGl0Lg0KDQpDaHJpc3RpYW4uDQoNCj4gLS0tDQo+ICAgZHJpdmVycy9ncHUv
ZHJtL2RybV9zeW5jb2JqLmMgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X3N5bmNvYmouYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+IGluZGV4IDdlNDhk
Y2QxYmVlNC4uZDVkYjgxOGYxYzc2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X3N5bmNvYmouYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPiBAQCAt
ODg3LDcgKzg4Nyw3IEBAIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpfZmxhdHRlbl9jaGFpbihzdHJ1
Y3QgZG1hX2ZlbmNlICoqZikNCj4gICAJCWdvdG8gZnJlZV9mZW5jZXM7DQo+ICAgDQo+ICAgCWRt
YV9mZW5jZV9wdXQoKmYpOw0KPiAtCSpmID0gJmFycmF5LT5iYXNlOw0KPiArCSpmID0gYXJyYXkt
PmZlbmNlc1swXTsNCj4gICAJcmV0dXJuIDA7DQo+ICAgDQo+ICAgZnJlZV9mZW5jZXM6DQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
