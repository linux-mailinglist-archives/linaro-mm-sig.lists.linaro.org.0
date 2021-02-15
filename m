Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D1131B923
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Feb 2021 13:25:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 562E960654
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Feb 2021 12:25:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3A57C619C1; Mon, 15 Feb 2021 12:25:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63880607B9;
	Mon, 15 Feb 2021 12:25:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A4E7560642
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Feb 2021 12:25:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 81A09607B9; Mon, 15 Feb 2021 12:25:14 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760055.outbound.protection.outlook.com [40.107.76.55])
 by lists.linaro.org (Postfix) with ESMTPS id A67C160642
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Feb 2021 12:25:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ekzQUWgJxD4fVCgJvLAUERsdTwe3Z35+k5AtQ1GL9fYFcft46tJf1G6mYfO5IQEwJ7GMOkhFN5PWzVwyRUsT6hZ1OAdFA3tsXZlt0wfO+i2tNCFJoKhLiwnrxAiosZOWz2GsbCVqDv4K8unQHS/OdgHxoz0EAMPILgeChgWxcunl3vU8dPGVf7SaNUDF7r5SSFCW8+4sviLhMWjsm/MdTZxrTvRsWMwLOA41U4QvN7puhu1qf5XiynowdWlUi/QHsLDVp2fqihFFyXdV3XqYnpZPYKFpcXpU9i/Cq94C3PI8JadXHhWpHk1cOL6z9z32Jn9lxCTd/5TjEEV3tlJhvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y/lBEeXgI/RRAz1rrd1URdZGwzrd5UMMkpJijXhyi8o=;
 b=df6teeF+qKzicDo9S/vAnlDY1giwPnXWRZmdmTvzMPOIa1UXBX+LpT/tTr8f1YQWg2AvFJEO4FtX7kQ1DRu5CnIMFedndZ7UBOqlLsCvizGntfenmOSeKsDyJlQqH6tUK8/lZYX8O09uF6oHzfc1BRSyYXqr/TzxfOASv3meaSCReTEWxJ/LYlgQtBqaQDiymXtTXaDZR9uoEpjKING6l9MdeFdtELCQyRtbulqQxvY7Ko2vmBaWxPCDJiXnGUDl3hSX2nmhlcbfZ8w96sdWxHeGbIrC8SEOb9zh1nU9EYtHZWrrVcnPNdVZ8+WPPnWEKi9HbY4+tuPwtZPUaXi/Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3935.namprd12.prod.outlook.com (2603:10b6:208:168::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27; Mon, 15 Feb
 2021 12:25:07 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2%2]) with mapi id 15.20.3846.038; Mon, 15 Feb 2021
 12:25:07 +0000
To: Lucas Stach <l.stach@pengutronix.de>, Simon Ser <contact@emersion.fr>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <GUuZYSQk2hxgykDhSxfB2GWo47lQlVrKBtWMwQUG7Ar2GAag5WQDxBI0zq6nDTooPBzTktyRpnu25Ju1UKE3FYD9yHbkNMAHcmSI96hoJhA=@emersion.fr>
 <da9edfa0-8a18-44a2-fa79-83b4177afd8e@amd.com>
 <8d23f1ca6fe76d8971365bf54ca71ba71698980d.camel@pengutronix.de>
 <7ecf008d-a1f5-ddff-c8ac-8e7bfaf9c680@amd.com>
 <04f2e57540896d2c51120236889a6ae293e711d8.camel@pengutronix.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <cc98293f-eb4f-bf0c-2e25-7e41b12d5ca2@amd.com>
Date: Mon, 15 Feb 2021 13:25:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <04f2e57540896d2c51120236889a6ae293e711d8.camel@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:3e90:5494:cc4a:73e5]
X-ClientProxiedBy: AM4PR0202CA0014.eurprd02.prod.outlook.com
 (2603:10a6:200:89::24) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:3e90:5494:cc4a:73e5]
 (2a02:908:1252:fb60:3e90:5494:cc4a:73e5) by
 AM4PR0202CA0014.eurprd02.prod.outlook.com (2603:10a6:200:89::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25 via Frontend
 Transport; Mon, 15 Feb 2021 12:25:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4540ee28-3519-4137-9d7d-08d8d1acba98
X-MS-TrafficTypeDiagnostic: MN2PR12MB3935:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB393512A00C6F0FEB95935D9D83889@MN2PR12MB3935.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3iX/8jT6SHdDIPpEzsqelWGRx2F7soqzfOeEZ1eH+eSd1LupjUsNH4K/jBMLJnPqQi6LPdltBKr2DIQNJ/iYqT/3EvS1Y6PeaewMrz5Y5TzW/Og4A5DGunC1w+gFPTXQAgIU487hlxNzbt75MNwEVfH7L/aKSyP6QW8ctWXEI2Wr3a7y4PEEg8uKKeW1ebtpAjDomFeWnlu1jcmQIbl3Z84bhYcTCX9YbGCfbWq7VrPReW27aTw10wGs8hibUF0ocq2C2ekx2Q0rJgf9ImhVgvSbmCYRnEaHYFbxh3odXCxm6xmkclFwQGYl+tZPC8QlCzxwNXimEMiASgqfYwALiAhL08fO/cW5ypqtQqLgi3UWV1xqf3MGKuIe/5NPTkF9ei6ENmpCEqHTvpYOu1YWEK3d4NebTrrO1v2E536owi11BbjtIp2q9JBTdUZPRiP/+EgnzVrEnnLSfSE19dhHXlLdrurjtBUOGOumFx2dvigh9zsqUFH+8SToukamyjsH+UOiNlF87/SeYG0aJsT6Bi9q5kETaUfLbfLWrWVB+zutfjocpwtmION0N5QjEWPMmstwrSVG44fUMbW2yxxJeb9KBYyTL3bnKmgqtZS3pIY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(39860400002)(366004)(396003)(346002)(4326008)(6486002)(31686004)(52116002)(36756003)(478600001)(5660300002)(66476007)(316002)(54906003)(110136005)(8676002)(31696002)(86362001)(66946007)(186003)(16526019)(6666004)(8936002)(66556008)(2616005)(83380400001)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NS9mbnpGdFVOMnlCaDFpUi9uVzdJVkZTejR5cm9PMEFkNXB6bCs3ZjliYm5W?=
 =?utf-8?B?R1puQWM3UWpVZFZJRUtEazh2ZWkrQ2xKK3dETTFEdTFJdWdUS2tudTF0TUxi?=
 =?utf-8?B?QTUwZWt6bGZlYnFieGR0OE9XYVpiTENTZFVEVldRQU5MSWlzOFBncFVNeW8x?=
 =?utf-8?B?QWs2KzJURklPZkRFdmZlbHhiSUFwd0hXWnlvWUR0dG1tczg4R1RNWG1zWDF3?=
 =?utf-8?B?TmlQSE1UcTdFNUplZzJrQXJiZHROZlNEbG13VDdoNFJMd1lSdGxJNm4xVTJo?=
 =?utf-8?B?eC90empoeElGQmVoc01meFkyakwzcUtrR0ZVZHFSQkE0MWxzOGZBQWpYWnBS?=
 =?utf-8?B?dXRONE5GUmZidS92bnF6dGFpcDNJWTNwYklacHNQYlNtR2E1TCtENWo2a25y?=
 =?utf-8?B?aEtwVjR5N1NRandOUTE1dFp0Q1kwUXAzU0tYWkJKaWVMV21ybU81WWNNWno0?=
 =?utf-8?B?TmVvT0Z4YXlNVXpSU0NUeXA5RUxBcmdKSUtMbjcxME94OTJOb1NUVnphQ0w0?=
 =?utf-8?B?dm8yYmMyc0RyR2d5b1B5QXdhbi8rZTFPMndMbXFiQ2FNSmZ0RGJ1YnZCNVlO?=
 =?utf-8?B?SWl3V2dVdTJWOEJhNHVOZnRybjhNcmlDSDFnbzhPNWtWTGtKYk1jUXdBempy?=
 =?utf-8?B?TUtORGRnMnkrSStiSXBSd0dxNVV3L1hJQ2FrRzd2QllKb3VDV1B2YjMxUjZG?=
 =?utf-8?B?RjVlRkViOEdJUHdJaUhncW1FTkFXQU5JTFUzRVEvK2lrTDhJUlA1M3lPUEZS?=
 =?utf-8?B?MmVmbml1amxCeTRyOS84TXBWdDZwZE1ucmxjT2l1UWdqSkpTYnFLVTYvMzUx?=
 =?utf-8?B?SEoxb3dLdFlRMCsxUVBIaTMzY2lPMWFEV1p1THptK3l2UlBCN0VuUkdNbjcx?=
 =?utf-8?B?cEsvbVJoMVp0ZHpYOTdRU3NxbUdlREFZZ1EwaHM2cFVCTFpOeHRJME00TUt3?=
 =?utf-8?B?Y1lLS09xeEdjUCtVSGc1Y0pzZjZjTmwvWnY2QWo2S2dwTzRpNFZoTVQ2dGtM?=
 =?utf-8?B?Vzg3a2RQYWYzN3dPR1JPbTZOVnM2MlBZMlpNWEJPbUd5QXZUMnh4QmhFNENx?=
 =?utf-8?B?VURpcVZwQnBYNG1NVVpEOHdmUFdIcTQ5TWpJU3VQOElzd1pEalNNcC9VS3d1?=
 =?utf-8?B?RWJRanU0eStiRHU4ZTNEeDk1VlczM3lUOW9JYkxoT3VxQS9oRW9vUVNCL2ZH?=
 =?utf-8?B?VlFFOUpRTjYwSGI3bUtzMkVWUnJjQVNmQW9hWHdhQ2w5N1ZiZFdSWllhZzRN?=
 =?utf-8?B?YitHUHZzcFJlcWFKZldrQ3B1dWFxNmtjOFFPM2o4Q2NHK29MbisvMEIyd0pk?=
 =?utf-8?B?eDJHYzVnc1J0T2VzV2twaDNCb21VVlQ4RjJBRE1nSGIrUVg2TEpSWWYvZzZm?=
 =?utf-8?B?WWlocTBaTVpqZEZqcG96aXFhbklnTlhkbElLY3g3cDhWZ0VBNnpEWEdmb1U3?=
 =?utf-8?B?a3JnenFqSzljK2laQzZsY0g3Q29Hc0ppOVgwZ0xmWjdmd0orbkhJR3VKbHkv?=
 =?utf-8?B?VFJqZEFab3REMzZaMjBWQlZPUVVBTXZEUHpxMVFrNmI5Y3ZmRGVEcnNmRzNC?=
 =?utf-8?B?WWtQTXk0RlNDR1pmL2x1bGtJZXU2TzB0eEhvdGFRSDFvemNPaHhub2s4bjB3?=
 =?utf-8?B?cW5zWi96bGY2WmxnMUFoamIreDZtbGdaQys3MkNwUDdRTWNyU2JoRVJpcHQx?=
 =?utf-8?B?dFl3OEN3TkxMQlM5dk1GUU14Unc2aHhIRVZ5R0diMmxteHl1emEwVlZpSHJR?=
 =?utf-8?B?REw1VnRYS3Uwek92anVnQjdzMjBTVXFHZXhyMUZMNUVkRDJxYlhta2NESSs5?=
 =?utf-8?B?NUlFUGZ3KzZON1VRY1lWTU9Xb2FqbUVOdVcxYlRORFlneWozTDdLWUhSbWNL?=
 =?utf-8?Q?drBGrCnNwYPQE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4540ee28-3519-4137-9d7d-08d8d1acba98
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2021 12:25:07.2556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +JzS2WgA5aeutjVWMUo23xusLv0Zl4YBqW/N4iZ34jwng8SZIjMktiWiAjx2ndUH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3935
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-media <linux-media@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, "Sharma,
 Shashank" <Shashank.Sharma@amd.com>
Subject: Re: [Linaro-mm-sig] DMA-buf and uncached system memory
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTUuMDIuMjEgdW0gMTM6MTYgc2NocmllYiBMdWNhcyBTdGFjaDoKPiBbU05JUF0KPj4+PiBV
c2Vyc3BhY2UgY29tcG9uZW50cyBjYW4gdGhlbiBvZiBjb3Vyc2UgdGVsbCB0aGUgZXhwb3J0ZXIg
d2hhdCB0aGUKPj4+PiBpbXBvcnRlciBuZWVkcywgYnV0IHZhbGlkYXRpb24gaWYgdGhhdCBzdHVm
ZiBpcyBjb3JyZWN0IGFuZCBkb2Vzbid0Cj4+Pj4gY3Jhc2ggdGhlIHN5c3RlbSBtdXN0IGhhcHBl
biBpbiB0aGUga2VybmVsLgo+Pj4gV2hhdCBleGFjdGx5IGRvIHlvdSBtZWFuIGJ5ICJzY2Fub3V0
IHJlcXVpcmVzIG5vbi1jb2hlcmVudCBtZW1vcnkiPwo+Pj4gRG9lcyB0aGUgc2Nhbm91dCByZXF1
ZXN0b3IgYWx3YXlzIHNldCB0aGUgbm8tc25vb3AgUENJIGZsYWcsIHNvIHlvdSBnZXQKPj4+IGdh
cmJhZ2UgaWYgc29tZSB3cml0ZXMgdG8gbWVtb3J5IGFyZSBzdGlsbCBzdHVjayBpbiB0aGUgY2Fj
aGVzLCBvciBpcwo+Pj4gaXQgc29tZSBvdGhlciByZXF1aXJlbWVudD8KPj4gU25vb3BpbmcgdGhl
IENQVSBjYWNoZXMgaW50cm9kdWNlcyBzb21lIGV4dHJhIGxhdGVuY3ksIHNvIHdoYXQgY2FuCj4+
IGhhcHBlbiBpcyB0aGF0IHRoZSByZXNwb25zZSB0byB0aGUgUENJZSByZWFkIGNvbWVzIHRvIGxh
dGUgZm9yIHRoZQo+PiBzY2Fub3V0LiBUaGUgcmVzdWx0IGlzIGFuIHVuZGVyZmxvdyBhbmQgZmxp
Y2tlcmluZyB3aGVuZXZlciBzb21ldGhpbmcgaXMKPj4gaW4gdGhlIGNhY2hlIHdoaWNoIG5lZWRz
IHRvIGJlIGZsdXNoZWQgZmlyc3QuCj4gT2theSwgdGhhdCBjb25maXJtcyBteSB0aGVvcnkgb24g
d2h5IHRoaXMgaXMgbmVlZGVkLiBTbyB0aGluZ3MgZG9uJ3QKPiB0b3RhbGx5IGV4cGxvZGUgaWYg
eW91IGRvbid0IGRvIGl0LCBidXQgdG8gaW4gb3JkZXIgdG8gZ3VhcmFudGVlIGFjY2Vzcwo+IGxh
dGVuY3kgeW91IG5lZWQgdG8gdGFrZSB0aGUgbm8tc25vb3AgcGF0aCwgd2hpY2ggbWVhbnMgeW91
ciBkZXZpY2UKPiBlZmZlY3RpdmVseSBnZXRzIGRtYS1ub25jb2hlcmVudC4KCkV4YWN0bHkuIE15
IGJpZyBxdWVzdGlvbiBhdCB0aGUgbW9tZW50IGlzIGlmIHRoaXMgaXMgc29tZXRoaW5nIEFNRCAK
c3BlY2lmaWMgb3IgZG8gd2UgaGF2ZSB0aGUgc2FtZSBpc3N1ZSBvbiBvdGhlciBkZXZpY2VzIGFz
IHdlbGw/Cgo+PiBPbiB0aGUgb3RoZXIgaGFuZCB3aGVuIHRoZSBkb24ndCBzbm9vcCB0aGUgQ1BV
IGNhY2hlcyB3ZSBhdCBsZWFzdCBnZXQKPj4gZ2FyYmFnZS9zdGFsZSBkYXRhIG9uIHRoZSBzY3Jl
ZW4uIFRoYXQgd291bGRuJ3QgYmUgdGhhdCB3b3JzZSwgYnV0IHRoZQo+PiBiaWcgcHJvYmxlbSBp
cyB0aGF0IHdlIGhhdmUgYWxzbyBzZWVuIG1hY2hpbmUgY2hlY2sgZXhjZXB0aW9ucyB3aGVuCj4+
IGRvbid0IHNub29wIGFuZCB0aGUgY2FjaGUgaXMgZGlydHkuCj4gSWYgeW91IGF0dGFjaCB0byB0
aGUgZG1hLWJ1ZiB3aXRoIGEgc3RydWN0IGRldmljZSB3aGljaCBpcyBub24tY29oZXJlbnQKPiBp
dCdzIHRoZSBleHBvcnRlcnMgam9iIHRvIGZsdXNoIGFueSBkaXJ0eSBjYWNoZXMuIFVuZm9ydHVu
YXRlbHkgdGhlIERSTQo+IGNhY2hpbmcgb2YgdGhlIGRtYS1idWYgYXR0YWNobWVudHMgaW4gdGhl
IERSTSBmcmFtZXdvcmsgd2lsbCBnZXQgYSBiaXQKPiBpbiB0aGUgd2F5IGhlcmUsIHNvIGEgRFJN
IHNwZWNpZmljIGZsdXNoIG1pZ2h0IGJlIGJlIG5lZWRlZC4gOi8gTWF5YmUKPiBtb3ZpbmcgdGhl
IHdob2xlIGJ1ZmZlciB0byB1bmNhY2hlZCBzeXNtZW0gbG9jYXRpb24gb24gZmlyc3QgYXR0YWNo
IG9mCj4gYSBub24tY29oZXJlbnQgaW1wb3J0ZXIgd291bGQgYmUgZW5vdWdoPwoKQ291bGQgd29y
ayBpbiB0aGVvcnksIGJ1dCBwcm9ibGVtIGlzIHRoYXQgZm9yIHRoaXMgdG8gZG8gSSBoYXZlIHRv
IHRlYXIgCmRvd24gYWxsIENQVSBtYXBwaW5ncyBhbmQgYXR0YWNobWVudHMgb2Ygb3RoZXIgZGV2
aWNlcy4KCkFwYXJ0IGZyb20gdGhlIHByb2JsZW0gdGhhdCB3ZSBkb24ndCBoYXZlIHRoZSBpbmZy
YXN0cnVjdHVyZSBmb3IgdGhhdCB3ZSAKZG9uJ3Qga25vdyBhdCBpbXBvcnQgdGltZSB0aGF0IGEg
YnVmZmVyIG1pZ2h0IGJlIHVzZWQgZm9yIHNjYW4gb3V0LiBJIAp3b3VsZCBuZWVkIHRvIHJlLWlt
cG9ydCBpdCBkdXJpbmcgZmIgY3JlYXRpb24gb3Igc29tZXRoaW5nIGxpa2UgdGhpcy4KCk91ciBj
dXJyZW50IGNvbmNlcHQgZm9yIEFNRCBHUFVzIGlzIHJhdGhlciB0aGF0IHdlIHRyeSB0byB1c2Ug
dW5jYWNoZWQgCm1lbW9yeSBhcyBtdWNoIGFzIHBvc3NpYmxlLiBTbyBmb3IgdGhlIHNwZWNpZmlj
IHVzZSBjYXNlIGp1c3QgY2hlY2tpbmcgCmlmIHRoZSBleHBvcnRlciBpcyBBTURHUFUgYW5kIGhh
cyB0aGUgZmxhZyBzZXQgc2hvdWxkIGJlIGVub3VnaCBmb3Igbm90LgoKPj4gU28gdGhpcyBzaG91
bGQgYmV0dGVyIGJlIGNvaGVyZW50IG9yIHlvdSBjYW4gY3Jhc2ggdGhlIGJveC4gQVJNIHNlZW1z
IHRvCj4+IGJlIHJlYWxseSBzdXNjZXB0aWJsZSBmb3IgdGhpcywgeDg2IGlzIGZvcnR1bmF0ZWx5
IG11Y2ggbW9yZSBncmFjZWZ1bAo+PiBhbmQgSSdtIG5vdCBzdXJlIGFib3V0IG90aGVyIGFyY2hp
dGVjdHVyZXMuCj4gQVJNIHJlYWxseSBkaXNsaWtlcyBwYWdldGFibGUgc2V0dXBzIHdpdGggZGlm
ZmVyZW50IGF0dHJpYnV0ZXMgcG9pbnRpbmcKPiB0byB0aGUgc2FtZSBwaHlzaWNhbCBwYWdlLCBo
b3dldmVyIHlvdSBzaG91bGQgYmUgZmluZSBhcyBsb25nIGFzIGFsbAo+IGNhY2hlZCBhbGlhc2Vz
IGFyZSBwcm9wZXJseSBmbHVzaGVkIGZyb20gdGhlIGNhY2hlIGJlZm9yZSBhY2Nlc3MgdmlhIGEK
PiBkaWZmZXJlbnQgYWxpYXMuCgpZZWFoLCBjYW4gdG90YWxseSBjb25maXJtIHRoYXQgYW5kIGhh
ZCB0byBsZWFybiBpdCB0aGUgaGFyZCB3YXkuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gUmVn
YXJkcywKPiBMdWNhcwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
