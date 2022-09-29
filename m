Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F185EFCDF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 20:18:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE3F93F508
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 18:18:20 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by lists.linaro.org (Postfix) with ESMTPS id 12B993F0CB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 18:18:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MyM0mOS42JG4DRdJ4HefZVLij4vpcmEYkMJ0oqH2nEYAuayNstGM57kRlP4w8rkILzEK4ImpytJntZavawjNr6U5vZyKA/khccke50jRq+sg0UtJCTAifeXq6L72XNmpBkgWiHJpfSdTfRPSypALm7mWWXgaSeEyQWyBqkSX8zpUaSiuFCGjbv+tmAXET9Glo/4ewo4vzE8v+whvz/n0avyjBTU9tHyCygBDQt+U4VPfEYW+JKbtFtMttq7FyIB/WCSoU9IktiXELaGFcHPSRlCH1GZ+29RHKLumi32mTjyzvKSsVa8LuCAurhkQmL8DeNOg6+vQsSgMQ3HZfy6leg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NB1XcMneQTW8uvP5t2qApO/nYxG1/VGADKbZY95AHiU=;
 b=g9Icm1fdcSBsU3OfpQvLevGKTCeTnDrFiJFtDEgBKNhSMeHuM5PO9zeoymwkbEwQtRJ5QCbfJawf1O5KYWJ2Zpm+OxxlShH9d+Xp8KtY51sGut2lHafyrB5Qj/sw+ms6O652rmushG24KrBOzmv2TlzdNDsr+KPg6qwWoirXlbbC46lN7F5waQjihaeC5I7OjYSCh8apnAOt7uK7ZKbeo+pWNjUNtzNgycFMmLwlxl8g4h8WQ4tbrJIUo8DBDIGLY1/duYiPJI9D4kuAgi7dJlMzzNq2YOM6EbyQXnnNsSKJilofxDqSF1U1QdY4eiAiBLfhnbrCCaULQ4WL0BQOvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NB1XcMneQTW8uvP5t2qApO/nYxG1/VGADKbZY95AHiU=;
 b=dY8UMR6r1XT94+hIRCStz7xHGPL9i3Z0x9nWnftknrME80nT727CQJBMmNLhOflufidTzwrY1UzOvlHImwHZRPn2zNRmVZWiC0fgvZcYrcYxscfHxEXDg4emUWXpEdDFB5BDgJmDgJWEbSUhOj28zS2ydgz9d2lgOWxdWr6rmOI=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by PH0PR12MB5433.namprd12.prod.outlook.com (2603:10b6:510:e1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Thu, 29 Sep
 2022 18:17:59 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644%6]) with mapi id 15.20.5676.015; Thu, 29 Sep 2022
 18:17:59 +0000
Message-ID: <b6cfe4fd-2292-4b1b-b919-caba979dd0bc@amd.com>
Date: Thu, 29 Sep 2022 20:17:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220927172409.484061-1-Arvind.Yadav@amd.com>
 <20220927172409.484061-3-Arvind.Yadav@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220927172409.484061-3-Arvind.Yadav@amd.com>
X-ClientProxiedBy: FR0P281CA0113.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::13) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|PH0PR12MB5433:EE_
X-MS-Office365-Filtering-Correlation-Id: 1253d504-a51e-446c-1695-08daa246efe5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DEqiLrb+QJztkhJyAq6LO6ZDMXFPYgzmLdkUvBlx5Kk8r4klpyiftJB9vUQcUfCgwDLfJpPvJ0uYTXD2AOWypJajIsae1ivawjI4H8fiNxscs8bjPVL5kGWC4B5t2qiR+XCOJkWwZPA6dbQmVvkRqwBCbgNZkgWKjSMA2rAqA2aMwMmcZ3+MJ3zfFqpS8QKLy0iEisexmT1Whgp+vbT4SHDhMei/3kq2rrCeYI+xrrMnsJonhRESfR+9bYIf1UmyA8y3nr1UNDOjfi5iLoSCJw7+eCLzNjQvm8tUx9VW56QJNBTUQNbWeFxzVC6LcOUA66jukSz3evUnPVLAdfDPEJHk9GbCqNA7QveVwTlOBQsUmJLC8udVRy8/hZLZTBauBVXh6LYkpepC4WDEM3P2nYkpK1YuuU3Ix3icsPyR2TRMn4g5Jiay+RtIwwqhC1/X0ahcMvcl0n4jFqiDBsn+PV0lTIz3TcQlEtc+YMMDCC2ROHdZSlBJsbj7EL1v6Cus9fBDIuLgIEqlJexOiYBTVUpzfJ0fm4P1VJMXbEMEBbvcvfUti/gaSPHlxqpPAR/JC2Ix4sJ+JEYlEJL6xcxmouSY7K2HY1DiI+c8eI5Wyy9nlPrxYWFkorlK4uTYp+TL0qZD/Tjk4L1AuNo7MYFJyKbugfuxEb1oIVWhoNATxMmOsfRlkabNK31MVPAxjT0xTQB7rUdOuxtJnDtmWHcQr6BIDMbrhat9+m4+EvGvjKLx+l8hKwET7884ALhgtvV19l2WV0O7N7tI1i++yd25ubM72RT8Yo0fgBO0JTLQ6iDGwBjTjQFhwcm81eiN7AF+
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(136003)(376002)(366004)(396003)(451199015)(4744005)(5660300002)(8936002)(41300700001)(316002)(38100700002)(6506007)(66574015)(6486002)(83380400001)(2906002)(921005)(31686004)(6512007)(6666004)(66556008)(66946007)(31696002)(86362001)(36756003)(8676002)(66476007)(186003)(2616005)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bjJ3cUNnd0xjSXJWZjFaOE8zbndJME5CcWVDNW5wendTN2VnY3NPYUR4QWZL?=
 =?utf-8?B?N3poZ0t1eW1Wcks5c0V2c3g1Q1JZNWJ3dXQwZk1yNnAyT2dlSnVqVGlyNVZZ?=
 =?utf-8?B?MVBSVUdERHZZRHQ4dVRITWw3eE04VU83OXhvWHJaVmdsSTlyZ3J5RnRWUjBQ?=
 =?utf-8?B?em1oSmcwUXJZVUEzTVYyMDBVZ2UrS1YzczVCeUZ6U0ZlWlpmOU9xRzBXTjhL?=
 =?utf-8?B?bkdsMG1pNkxWa0wwM2lZUGFNQUJjSVZ5R01ZZm5qKzFpTjdRcHVCTFJ2MCs2?=
 =?utf-8?B?ckhkcEdEWGlZZ1hzTU1zaDB5dHh3NUd2Tyt1S2hJL2I3ejJveEUzcVkxYTFY?=
 =?utf-8?B?eG9SSlFVczJDanJOcm5wbFZMU1o3dyt6Rmx6RWRqblBDaVVEQ0FTbE9ueU01?=
 =?utf-8?B?YVhhYkFkVklMa21nVUtNZXE5WFArelkrU1B1bnRnQ3c1VlZoQm9QNFl2VHFQ?=
 =?utf-8?B?cE9NZmdOWlBBZkt1K2ovVzVqY0hkUVJ0UnA3ZW5jVUV0Z3JqNCtSQVkrZ2lC?=
 =?utf-8?B?NVpiSVRtMnhvdm9iSUE3S0cvRXJiT2ZYWVNiQXBFTmlteXpOT29pU2E4YWRw?=
 =?utf-8?B?cmhJQ2RBMDczcUJCdEhCKzRXWHhQcE9tK3c4WGorTUx2Y042SDJPcnBPaFNx?=
 =?utf-8?B?VDBUT2M1ejVpVTdjR3A5aEtaVVI1NFo2V2cvWC8zT2ZWZ3FoVndLMWNJdXo5?=
 =?utf-8?B?dzN0MFdiUmh1ZURjQkd2NE1OejMzeVdZTng2YS9VYWd0eXlxaFcrZHlxeTAv?=
 =?utf-8?B?Q1BGT2pRblJ3SWtBdEZQOU1hMUEySFJFSEdJVlgrUy9aY2ExR3NIM09rUkhX?=
 =?utf-8?B?dEVsNm1EekU0aVA5bm9UQkpRR3g1a1JsVmJDNWp2WUtSeHFxMi8rcm4rcWxo?=
 =?utf-8?B?Y1NOK1NyUWs2eHNUa0FHcEcwWkdzZjdWbThUdVVJOUxEN3dPSlhTYjk5eHNj?=
 =?utf-8?B?c205T1p5QVljVWxPU3VlSE9yZXRtaElIZFBFelBMeVMxQlZTZktyYzYxV1Bv?=
 =?utf-8?B?Rks0K2hQTVdhc09rYmJkYit1NXlmVTFWY3A1bkowVzN1VnB3cmZyTVpOQU5B?=
 =?utf-8?B?OXJuMEl1MGo1dTNJRFBHTGNTdXNKTXRRL0tJcmIyMmV2Ui9vYnpidzU2Z0dG?=
 =?utf-8?B?a1FxYjdaS09kQ1V6WDZsTjF5bjJwUWxKbER0TWlFVTgrcElhK25BSVJCalJl?=
 =?utf-8?B?QXpQYisxZWVxL2txekczbWtPcUhwMnF5VDN5R2hPSnZJZTVjUmFZbVBSc24w?=
 =?utf-8?B?S3VuaVhGb21RYlRLWmRqbS9zbGcxaXN4a1lNWkxwenBrU3d3ZGJUWHI3R3Bj?=
 =?utf-8?B?WitrcWE4cEhTaGhUbVA2cjVHS0xqOTBHaUtlR3c3cS8xSGF2THhtMHFVVEM4?=
 =?utf-8?B?YUVIMFBzZmhHdHJLODEwL0UwQ056NEZ2M0trNGlvbmtsaDZUdHhhaWxMQnJW?=
 =?utf-8?B?Y2ROdkYvclNGczFmQ1RTUXZTR2lxcWZYdW5ZdHpIRGRnUXAwNlRlTG1WNk8x?=
 =?utf-8?B?TExFTW9CSTdiaEpKZi83Z3hwT0FoTHZaZjl3a3FXQko4UVJvOGpoTmx2T01m?=
 =?utf-8?B?dVg1U1djWXlCZjhXbjYxWWZvU3NyWkhOa2sxUGcwTU9uL044b0k5Z0lrVlRh?=
 =?utf-8?B?azZPV3M3OE1lWEFSb2E3aEc2RHdmZ0ZkUHVGUjJtSHRLTnNoVktOWFdHK1pv?=
 =?utf-8?B?VGt4QVpieVhLYmh3SExXZWw3NHM5QlNGZWNiSDVqQnA2TjdVN0ViQnVXcU56?=
 =?utf-8?B?ZWZXVTV6Z1JYWUx5Y2I2S3liMW95M0dzV1FsL1NOL2RQR1FLLzduV3BIMHNw?=
 =?utf-8?B?cFhlVW9qblJheE9ycDhCR1lYSTFROFhuajJjakQ5U0xUcWMrckREcDlIQjRX?=
 =?utf-8?B?OGQ4citvSFFrYVU4QTduaHVrQS9wVXNrVCsvcnp4KzdhaEFnQUZlQW5uNW9I?=
 =?utf-8?B?bGdtVWlUU2U5Nm1RZ1EzZUZBbVJRZ0R4dVIyVG8rRk5jOENNSmxVL2hndGxp?=
 =?utf-8?B?bnVoVTZKaENvNzJxbldVZm02Wlo1d3dRRTlrbnlGNkNlM20zYU03T3BJNmtt?=
 =?utf-8?B?bDlIcklOcm5rajRyWStQWHJ2WWcrNlVyUHJ3Uys0NVNpU1EwR0dLUkhQR010?=
 =?utf-8?B?R2lCZ3pDbUhvU2JsTjErSWNiTStTKzFNTHQ4TUd3NDF6a1hrRENldXdDY3ZE?=
 =?utf-8?Q?PLR8ne7X2pV1tAnberV6Z0AhNAZsb9DWWv1781tnndKW?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1253d504-a51e-446c-1695-08daa246efe5
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 18:17:58.8774
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6jzwaSboa9e61s3816uBQe1xmrSIJ1aOi+3t7p49ucZigSNLuNX1NAFoBBM8A9yi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5433
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 12B993F0CB
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[40.107.236.41:from];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.972];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.41:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=dY8UMR6r;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.41 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
Message-ID-Hash: ILXCFKMHAYYQCBJF6YIPINO7V5WSN4KR
X-Message-ID-Hash: ILXCFKMHAYYQCBJF6YIPINO7V5WSN4KR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dma-buf: Enable signaling on fence for sw_sync
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ILXCFKMHAYYQCBJF6YIPINO7V5WSN4KR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjcuMDkuMjIgdW0gMTk6MjQgc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+IEhlcmUncyBlbmFi
bGluZyBzb2Z0d2FyZSBzaWduYWxpbmcgb24gZmVuY2UgZm9yIHN3X3N5bmMuDQo+DQo+IFNpZ25l
ZC1vZmYtYnk6IEFydmluZCBZYWRhdiA8QXJ2aW5kLllhZGF2QGFtZC5jb20+DQoNClJldmlld2Vk
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0t
DQo+ICAgZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyB8IDIgKysNCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3df
c3luYy5jIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KPiBpbmRleCAzNDhiM2E5MTcwZmEu
LmQyYTUyY2VhYzE0ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0K
PiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jDQo+IEBAIC0yNDQsNiArMjQ0LDggQEAg
c3RhdGljIHN0cnVjdCBzeW5jX3B0ICpzeW5jX3B0X2NyZWF0ZShzdHJ1Y3Qgc3luY190aW1lbGlu
ZSAqb2JqLA0KPiAgIAkJICAgICAgIG9iai0+Y29udGV4dCwgdmFsdWUpOw0KPiAgIAlJTklUX0xJ
U1RfSEVBRCgmcHQtPmxpbmspOw0KPiAgIA0KPiArCWRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFs
aW5nKCZwdC0+YmFzZSk7DQo+ICsNCj4gICAJc3Bpbl9sb2NrX2lycSgmb2JqLT5sb2NrKTsNCj4g
ICAJaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKCZwdC0+YmFzZSkpIHsNCj4gICAJ
CXN0cnVjdCByYl9ub2RlICoqcCA9ICZvYmotPnB0X3RyZWUucmJfbm9kZTsNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
