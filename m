Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A692FA7794B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 13:06:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8E7644B14
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 11:06:43 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2051.outbound.protection.outlook.com [40.107.220.51])
	by lists.linaro.org (Postfix) with ESMTPS id 818D23F66E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 11:03:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=UxTFPNTe;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.51 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KwtoeOcWPGgAcWVMfozNVDEe5ObpHXuYhsSpDK+xubPMVqjrTdzsVMQpslK6Z/UFEIRCTg/VGHlG5ayJvowbnqrDsNL12T21UeeTO/7VEO8L+7rw10tUAZ8oey0z7P7UtAgFcnrDzllXbMDaxpXn7oJZQjSlYKBXpRC1YZqrfCCgw1K4NtAa/UJmLA7rjKDKbPre+RlAmVZ+evXbwp8yd6A/vuGqdurtA1CvZ1NdUdyQWOfAC+OOEuRt+VxiTHhMkiBghFqlI6v3OW+84kzZ700VA3FL2i5IVOatEIMmqT319m9IGRcJKfIU2XCp/iVtyxr45Dtg5WS1LNvTy6fvSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n0jdkrSUxkbvzJ4eiEo3Se/YQpwiF3vG/Bcp+ZAVlmc=;
 b=xoHbUwAewsRA095zlrKwi8X9pil9bMLMULz1i639EdroIYFft2VRbR+JPEonxfCp3WUczsdRqTY6f0vKE/lrsH2P4fq8XFS9IwMzcE5j/XZO03DSeN/1idWua2yO/PRnHM5FF2/ZLuxfuwVBN2GImDnqTkGRXccfstgIwrVL3bFwtiTrHXFHHSd9HuW/x2ubEwnKXGtjKEY4Rnjq1USAVeGluiwWjypDEKWKPX/MBAppqsWvTAlMe4/zuN1POMjSGrFM8Yih96hlu20IMUGsxVfPZYyRK1NtdfXMxktxHL67V+dX+Yafnm0QnW2gt1dJHSUkeLzGQ0mCip/BF1Zbkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n0jdkrSUxkbvzJ4eiEo3Se/YQpwiF3vG/Bcp+ZAVlmc=;
 b=UxTFPNTeKTx5NVhkYWtUJ/7AOpkwxzmwkABJ4GNh7n0x92vmsPj4yLr/kZqQlCCTqRxwazRpXw5k1c/VQ9HGVc7uQNMSLuUpfb5a0fTZMq5CgwMK15FvI75+4tE4nJkFt/emLQqQk6SxwTECqsXjuMJ1qK/OP/NjPhGU+eVRP0s=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB6351.namprd12.prod.outlook.com (2603:10b6:8:a2::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.44; Tue, 1 Apr 2025 11:03:43 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8534.043; Tue, 1 Apr 2025
 11:03:42 +0000
Message-ID: <e08f10da-b0cd-444b-8e0b-11009b05b161@amd.com>
Date: Tue, 1 Apr 2025 13:03:29 +0200
User-Agent: Mozilla Thunderbird
To: Dave Airlie <airlied@gmail.com>, Maxime Ripard <mripard@kernel.org>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <f5fdc666-dd72-4a4f-9270-b539a3179382@amd.com>
 <20250310-eccentric-wonderful-puffin-ddbb26@houat>
 <CAPM=9tzkLXOz=-3eujUbbjMHunR+_5JZ4oQaqNmbrWWF9WZJ0w@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAPM=9tzkLXOz=-3eujUbbjMHunR+_5JZ4oQaqNmbrWWF9WZJ0w@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0014.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c8::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB6351:EE_
X-MS-Office365-Filtering-Correlation-Id: 37874360-f8aa-4bf1-57a5-08dd710cdd75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cHo5WjdZZzYwbGZpdFpwb1F6Vm5HMjBBeGRFNSs4OVBlRzdac3dXWGRDL3RQ?=
 =?utf-8?B?dXpSbDhXTGtlUG9qdHJyd3dYZWp2NFRCQk1DVWNqRklqSGJIOWIzRktTczFR?=
 =?utf-8?B?V1RLQjIxSS9MeFZycEg0OWlmYW5OdUdlOWthbjV0WTl6QUE0U1FOWC9zdjN4?=
 =?utf-8?B?NVhQVzNNWXNJT1NJRWdlQUY5SVY5RWkyd3hxamdoY2d4d0NmOHI5Njd2cTRi?=
 =?utf-8?B?eUxMQTJsbTlYamJobWhTaXF4ajFYM29Ya3FyNDkzd0JpZ1NFRmZydzd0OHN5?=
 =?utf-8?B?SXIyZlRiWDlOVUhXRkhYblVqWDhwNVAvWTJiaWhjRU1VMlJMbnQ3b3UyN0RQ?=
 =?utf-8?B?N2FzUlZ1SGdIb3daTzRObTZpRkpYRktRT2h6Y2F3eTFzR1A0S1Zhc1UyVDAr?=
 =?utf-8?B?Z0dTVE5qVFpQY1JxN3NaMjdMdkxPU3gwc09zNHJIQXY2SEZYclNGMS90dXRI?=
 =?utf-8?B?YjA5cWpVd1BsWmxqQkIwK0dKQmRtbXdmcmY3Yms3Z3phejVpa0dVWU53djdQ?=
 =?utf-8?B?Y0tlenVibnZrdUFHREhoZitJQUc4OHcxUHpwVkxobTlPOUhtS0doVk53eFZS?=
 =?utf-8?B?ZlJpZk00bXl6bVpkYWZLZS91UjB1eUxFWWppN1NjUHlaYU9DVVJST2E5SHlS?=
 =?utf-8?B?UmFzSC9vUTZub295R0tWNFZ6OG9nMXNjeWZYajVrNjhERGpiajBqTmJzeE1O?=
 =?utf-8?B?SEx1c3kxT0ZubWlOZVJHK0NLdWxvZFVNbEM3UmFFbkMwdnhhRUNoOTdwbkRO?=
 =?utf-8?B?djJSUU52UkdrKyswemZWZy9qZGNOaFh3bmtTRTB0cXQ0VEFzUitJb3JYamtv?=
 =?utf-8?B?ampCZ0lncmh3K2FFQnprZVh2TWtycVFPZUFjS2w3YU9vV2UrK3Z6V01DM0hD?=
 =?utf-8?B?aEI0Z2thSTBXRUpNUERVdkhXWWxtT0JzbWhHQXU0bXloOWlRZ0xQVW16Qi9I?=
 =?utf-8?B?UW9lbWhBQ0VlZGxFeUxlWnR6YTJlM1gvaWhRTUp5dHBKOG9YRVZ3NW1FNG1E?=
 =?utf-8?B?TXNSUXVrQlRkWnZ5MnlBQi8wWXlFTVY3MCtmeVZBbUFLb1Z0Ymo1RWZ4dTBj?=
 =?utf-8?B?OE9NazZaTURPNjlZSEgwK1JRb2doK3FyQ0NOY1hqcy9UY2t0K0hBU2VuRzhE?=
 =?utf-8?B?bndRMzBmVmRtUHFPUWtnNC9ZUzEvT0FiVGF3RGh5YXpJNk5HOFJtRkdnMUxr?=
 =?utf-8?B?MkFHZVlkeHZGOXArS1o0a1NCcmJZSWpienNmcUNaQW1NMmhwNzlGNEtPQjln?=
 =?utf-8?B?RmJVWVZrK0VhN3FXV0kwOG9YSXJMbERHOGpXRGpXNyt2NWhSMDEzUCtTREpj?=
 =?utf-8?B?ZENIMVpGN3NaVzZ0blNtQ3ptUnE0dUROWFZFcmZ5bVhtZnFOVG9FVnR2MzJB?=
 =?utf-8?B?eTI2bEdjaVNCOGhLRHdnYURXaEpCbndUNVVJWG9vUW0zM2hhRDB0aVNWLzhy?=
 =?utf-8?B?OXYvNlNBMnFJSytpMUtxeFJCckhHTGNZQktybU9UZWdRWWwwdXBJUVM3cEZt?=
 =?utf-8?B?Ykw0WlRhS3lqKzhZaU5yZ1B1aGZsNTcvVWhXNXN2c2h2azlOcUo3THUyeVgy?=
 =?utf-8?B?dlZoQWpyeTAzUnp0M1M4M2lYUzdXK0tsbGZaaXhNVG9hYWIxT3lLMDl1UXJU?=
 =?utf-8?B?RjhHT243dCtDbGNDQjVTVXZINU5zc2VtTW5KZTVtakIvZGNqQTlLWGR0Q3FC?=
 =?utf-8?B?Q2puQmZJbmVTWmtHVGJPcGFuMjRRLytkRHpBRmJJVnRkN0RGek82cDArVHJG?=
 =?utf-8?B?eGY0cGtyR1hHNkVUUk9mdTd6a3VuS1VtWEJ6VmpWWGVjZ1gwa0VzWEs1Y1lQ?=
 =?utf-8?B?RGE4S2pMN2ZqTGFnUW1hcVVMUG4yS09KbFY3K1JWR1Bsa2prWGRoNzFuQTBo?=
 =?utf-8?B?Rnltb0VnNmtESTc2a3ZhZWE3aDJpN2xQMkxiMzEzbEtVUjBzMWR1cW11Z0tx?=
 =?utf-8?Q?wNDCpm1XqEY=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TkJvQS9WZ1V6Z015alNUZzdWbGovRGJHS2dCR3ZPZlIrT2gzZ05nc0o1VTlN?=
 =?utf-8?B?c1BRWC93aXpxYlZZMjA3V2lNVlJhcFhSR0pibzkvbXBGaEp3eGY1YzJuSEFl?=
 =?utf-8?B?UWZCR0ZsQWpZZ1p4bFNDbFdzeFZaSDQ0UVZrK0VwTDJDdHd0Mk92d21Ld2Ny?=
 =?utf-8?B?NC8rTG1KRWJaN0p6SEp4Y0NCNUhKUkFKWTBrYzF5WjkrbFVXa0xCTWpDUXdO?=
 =?utf-8?B?UjBncHFZODB6UzYyR2gzc295azA4MldkM1ZxT0poUEpBRmwxV2Y4SUxsbGQr?=
 =?utf-8?B?Z2RUQ21hQlQyelhqQW12QXBrNTkyb1Zib0NETmRLSWorSnZWWDZveEhLZDd1?=
 =?utf-8?B?WHRWZnY1bHFmYzd1WjVUYVhZRVRsTnV2NGxSbFNzSC9RZkkybE9hZ3pteHF3?=
 =?utf-8?B?OGExTml6SEFiZmc3MXM0dFdWTkdCbFVFUDFoRnUzS2ZlckJFc0s5YWF4YTVT?=
 =?utf-8?B?ODhXdndvZnNjU042b0hVTUZNbXgyNVNOM0syTEhQQklOdUdwZ21IRkJwbnpL?=
 =?utf-8?B?VFdYblBHeVpsZTR1SU9rSTR2d1Erb0VqbC9KaGV0bGlDRmFlSHZ6MXkrMVo0?=
 =?utf-8?B?QitrM2hZS05Lb25ETi9nWW0zdlZGOExubVA4UFo3SEl2RGh6V2hONHNFRXFD?=
 =?utf-8?B?bzJUZW0xQitxS1pyakZ0cTRjR0gyU1FCM0xGVFAybkR4cHB4UHJtNy9hSWNQ?=
 =?utf-8?B?b3I2T3Z4WUlnamxLMnRubjZwZ2UvWFJmRC9RRDh3QmxLT094cXF5dXFSTW8r?=
 =?utf-8?B?N0JIVzFUWGx2RnlXUSsyUGtCUWVEY0t2UUpyZmhILzNuNmRoNnNsSmw5ZVV3?=
 =?utf-8?B?ZWlYZW9CZ1hKMDhGTitueWs1SDNwZ2pkc2dXYk5BRGVFcWRnTkV0b1dneEht?=
 =?utf-8?B?QnEzWWxGWUFWaC93d1FjakFOV0s5ejYxbWZ4OUd1cEVMeXNpWkVzSVdqODBs?=
 =?utf-8?B?amhzLzhGT0x2clNway9ncEhVbFZiR2tSQWNjU2xvMFBlSFN3R2Q3Z0dNUjVZ?=
 =?utf-8?B?TDJndUZnOGZ1UmZieFY1UjY3ZnpYQnpseUJuS3p3UzB2MDdsajNKZEJEck5J?=
 =?utf-8?B?UlUyQm5qREZpSkFEaDBIam1iZVZWRlpxVjRmMXVwLzg3d3QxSml0MlZNczV1?=
 =?utf-8?B?ZE01SUJ1Ui9QL0MweHkxS0NFcEJETG8reTNJeXNZaDY1UnFHcHR6MlhxVm5t?=
 =?utf-8?B?OUx1eDJQT29SYTYwOTlVeWN1bzFKVEh6Wi84cEcyNEdubDl1SGhVeU1GeHlX?=
 =?utf-8?B?blEveGZJd0xWMWdONDV5dlIyS244RFp3and1TlNhUXJEMFNWN3hhNjQvR0tt?=
 =?utf-8?B?eEZwbHZvTDFVTUxodmp6QlhnUUNJdm5Yc24vWm9MbGE2L05FWHlyT3lxUGxo?=
 =?utf-8?B?QW8xY1Y0QlZ3Sks5UUZVNlptbHJDQlRjcFdRZzEyZGczV3V0Zmp6ZjdFejRx?=
 =?utf-8?B?ZVhqN0grTStpbXp3SVlrZmFPRUt5RlZ3a2NuRzdLTXNEUktXaWVPVDFBZW5V?=
 =?utf-8?B?cmtCaVE3MEhjaHVsL3h1QTV0WEcrZmliK0N1MHdhWVgrRTZ2NTRuN1RkdHJi?=
 =?utf-8?B?dGdLc2kyUFFPNDk5dnZJbEhzR0hveGQrVUxGaWtwd2EvbnlpY1ZCRjBpeVV5?=
 =?utf-8?B?RGtFQWxVM2RUcVZ5SGRsd2VLRzJ5S1JCcTZLUERVa04xTEZDc01TOFhSRkhv?=
 =?utf-8?B?eWtNVk5IclBsdjErOEhJVDZqQWRrSjlMOUUvdFRSOXhVaW1reHkwZGplU3RV?=
 =?utf-8?B?VS9pOG9EdFlTMTg3QlFKYktwbzNTOTJFdjJWeGhEZU9vU0YyS1hKWmJVdTRC?=
 =?utf-8?B?d20yT0hPN1MvY29VNUNDSHVveWxsdnBzanZxZ3hyM3R5cGZzVTVSYjhMeXNu?=
 =?utf-8?B?cXY0NUZBM0FPZ0FHM3FXVHErclh0WFBEb1BjMm44WFJVejlpUU1nVkVwakpG?=
 =?utf-8?B?R2JlWkxyMXlqaTdheXBiV3Zzb2ViVTU2Y2VwWU5pN25CZVUxMEdXR1FKM1Ev?=
 =?utf-8?B?bkNJbU5Xb2VvZ2E1UVNibEJMUnhXVGRQanRCaW9yWndleEcxajZUaVhFcGpT?=
 =?utf-8?B?Wm1hV1l5TXZnKzNRbTc0YzhPdVoyWU0rWEFPMHJQMC9Oelc2eDhxUFlEb25I?=
 =?utf-8?Q?e+i5vgfD1idAayX+0KNqTzisI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37874360-f8aa-4bf1-57a5-08dd710cdd75
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2025 11:03:42.8668
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Al4+liSQfiTTxF1+AAq7XZP+D5Sw7YW/m3U4hiIwIf0hj7XwrLgyETYit2WaCtmT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6351
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 818D23F66E
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.98%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.51:from];
	TAGGED_RCPT(0.00)[renesas];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	RBL_SENDERSCORE_REPUT_8(0.00)[40.107.220.51:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,samsung.com,arm.com,linaro.org,collabora.com,google.com,linux.intel.com,suse.de,ffwll.ch,chromium.org,kernel.org,redhat.com,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: KU2LGLJTVLE4ZUHDW5MQE5NHNPEYR6NA
X-Message-ID-Hash: KU2LGLJTVLE4ZUHDW5MQE5NHNPEYR6NA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ben Woodard <woodard@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KU2LGLJTVLE4ZUHDW5MQE5NHNPEYR6NA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMzEuMDMuMjUgdW0gMjI6NDMgc2NocmllYiBEYXZlIEFpcmxpZToNCj4gT24gVHVlLCAxMSBN
YXIgMjAyNSBhdCAwMDoyNiwgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiB3cm90
ZToNCj4+IEhpLA0KPj4NCj4+IE9uIE1vbiwgTWFyIDEwLCAyMDI1IGF0IDAzOjE2OjUzUE0gKzAx
MDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gW0FkZGluZyBCZW4gc2luY2Ugd2UgYXJl
IGN1cnJlbnRseSBpbiB0aGUgbWlkZGxlIG9mIGEgZGlzY3Vzc2lvbg0KPj4+IHJlZ2FyZGluZyBl
eGFjdGx5IHRoYXQgcHJvYmxlbV0NCj4+Pg0KPj4+IEp1c3QgZm9yIG15IHVuZGVyc3RhbmRpbmcg
YmVmb3JlIEkgZGVlcCBkaXZlIGludG8gdGhlIGNvZGU6IFRoaXMgdXNlcw0KPj4+IGEgc2VwYXJh
dGUgZG1lbSBjZ3JvdXAgYW5kIGRvZXMgbm90IGFjY291bnQgYWdhaW5zdCBtZW1jZywgZG9uJ3Qg
aXQ/DQo+PiBZZXMuIFRoZSBtYWluIHJhdGlvbmFsZSBiZWluZyB0aGF0IGl0IGRvZXNuJ3QgYWx3
YXlzIG1ha2Ugc2Vuc2UgdG8NCj4+IHJlZ2lzdGVyIGFnYWluc3QgbWVtY2c6IGEgbG90IG9mIGRl
dmljZXMgYXJlIGdvaW5nIHRvIGFsbG9jYXRlIGZyb20NCj4+IGRlZGljYXRlZCBjaHVua3Mgb2Yg
bWVtb3J5IHRoYXQgYXJlIGVpdGhlciBjYXJ2ZWQgb3V0IGZyb20gdGhlIG1haW4NCj4+IG1lbW9y
eSBhbGxvY2F0b3IsIG9yIG5vdCB1bmRlciBMaW51eCBzdXBlcnZpc2lvbiBhdCBhbGwuDQo+Pg0K
Pj4gQW5kIGlmIHRoZXJlJ3Mgbm8gd2F5IHRvIG1ha2UgaXQgY29uc2lzdGVudCBhY3Jvc3MgZHJp
dmVycywgaXQncyBub3QgdGhlDQo+PiByaWdodCB0b29sLg0KPj4NCj4gV2hpbGUgSSBhZ3JlZSBv
biB0aGF0LCBpZiBhIHVzZXIgY2FuIGNhdXNlIGEgZGV2aWNlIGRyaXZlciB0byBhbGxvY2F0ZQ0K
PiBtZW1vcnkgdGhhdCBpcyBhbHNvIG1lbW9yeSB0aGF0IG1lbWNnIGFjY291bnRzLCB0aGVuIHdl
IGhhdmUgdG8NCj4gaW50ZXJmYWNlIHdpdGggbWVtY2cgdG8gYWNjb3VudCB0aGF0IG1lbW9yeS4N
Cg0KVGhpcyBhc3N1bWVzIHRoYXQgbWVtY2cgc2hvdWxkIGJlIGluIGNvbnRyb2wgb2YgZGV2aWNl
IGRyaXZlciBhbGxvY2F0ZWQgbWVtb3J5LiBXaGljaCBpbiBzb21lIGNhc2VzIGlzIGludGVudGlv
bmFsbHkgbm90IGRvbmUuDQoNCkUuZy4gYSBzZXJ2ZXIgYXBwbGljYXRpb24gd2hpY2ggYWxsb2Nh
dGVzIGJ1ZmZlcnMgb24gYmVoYWx2ZXMgb2YgY2xpZW50cyBnZXRzIGEgbmljZSBkZW55IG9mIHNl
cnZpY2UgcHJvYmxlbSBpZiB3ZSBzdWRkZW5seSBzdGFydCB0byBhY2NvdW50IHRob3NlIGJ1ZmZl
cnMuDQoNClRoYXQgd2FzIG9uZSBvZiB0aGUgcmVhc29ucyB3aHkgbXkgT09NIGtpbGxlciBpbXBy
b3ZlbWVudCBwYXRjaGVzIG5ldmVyIGxhbmRlZCAoZS5nLiB5b3UgY291bGQgdHJpdmlhbGx5IGtp
bGwgWC9XYXlsYW5kIG9yIHN5c3RlbWQgd2l0aCB0aGF0KS4NCg0KPiBUaGUgcGF0aG9sb2dpY2Fs
IGNhc2Ugd291bGQgYmUgYSBzaW5nbGUgYXBwbGljYXRpb24gd2FudGluZyB0byB1c2UgOTAlDQo+
IG9mIFJBTSBmb3IgZGV2aWNlIGFsbG9jYXRpb25zLCBmcmVlaW5nIGl0IGFsbCwgdGhlbiB1c2lu
ZyA5MCUgb2YgUkFNDQo+IGZvciBub3JtYWwgdXNhZ2UuIEhvdyB0byBjcmVhdGUgYSBwb2xpY3kg
dGhhdCB3b3VsZCBhbGxvdyB0aGF0IHdpdGgNCj4gZG1lbSBhbmQgbWVtY2cgaXMgZGlmZmljdWx0
LCBzaW5jZSBpZiB5b3Ugc2F5IHlvdSBjYW4gZG8gOTAlIG9uIGJvdGgNCj4gdGhlbiB0aGUgdXNl
ciBjYW4gZWFzaWx5IE9PTSB0aGUgc3lzdGVtLg0KDQpZZWFoLCBjb21wbGV0ZWx5IGFncmVlLg0K
DQpUaGF0J3Mgd2h5IHRoZSBHVFQgc2l6ZSBsaW1pdCB3ZSBhbHJlYWR5IGhhdmUgcGVyIGRldmlj
ZSBhbmQgdGhlIGdsb2JhbCA1MCUgVFRNIGxpbWl0IGRvZXNuJ3Qgd29yayBhcyBleHBlY3RlZC4g
UGVvcGxlIGFsc28gZGlkbid0IGxpa2VkIHRob3NlIGxpbWl0cyBhbmQgYmVjYXVzZSBvZiB0aGF0
IHdlIGV2ZW4gaGF2ZSBmbGFncyB0byBjaXJjdW12ZW50IHRoZW0sIHNlZSBBTURHUFVfR0VNX0NS
RUFURV9QUkVFTVBUSUJMRSBhbmTCoCBUVE1fVFRfRkxBR19FWFRFUk5BTC4NCg0KQW5vdGhlciBw
cm9ibGVtIGlzIHdoZW4gYW5kIHRvIHdoaWNoIHByb2Nlc3Mgd2UgYWNjb3VudCB0aGluZ3Mgd2hl
biBldmljdGlvbiBoYXBwZW5zPyBGb3IgZXhhbXBsZSBwcm9jZXNzIEEgd2FudHMgdG8gdXNlIFZS
QU0gdGhhdCBwcm9jZXNzIEIgY3VycmVudGx5IG9jY3VwaWVzLiBJbiB0aGlzIGNhc2Ugd2Ugd291
bGQgZ2l2ZSBib3RoIHByb2Nlc3NlcyBhIG1peCBvZiBWUkFNIGFuZCBzeXN0ZW0gbWVtb3J5LCBi
dXQgaG93IGRvIHdlIGFjY291bnQgdGhhdD8NCg0KSWYgd2UgYWNjb3VudCB0byBwcm9jZXNzIEIg
dGhlbiBpdCBjYW4gYmUgdGhhdCBwcm9jZXNzIEEgZmFpbHMgYmVjYXVzZSBvZiBwcm9jZXNzIEJz
IG1lbWNnIGxpbWl0LiBUaGlzIGNyZWF0ZXMgYSBzaXR1YXRpb24gd2hpY2ggaXMgYWJzb2x1dGVs
eSBub3QgdHJhY2VhYmxlIGZvciBhIHN5c3RlbSBhZG1pbmlzdHJhdG9yLg0KDQpCdXQgcHJvY2Vz
cyBBIG5ldmVyIGFza2VkIGZvciBzeXN0ZW0gbWVtb3J5IGluIHRoZSBmaXJzdCBwbGFjZSwgc28g
d2UgY2FuJ3QgYWNjb3VudCB0aGUgbWVtb3J5IHRvIGl0IGVpdGhlciBvciBvdGhlcndpc2Ugd2Ug
bWFrZSB0aGUgcHJvY2VzcyByZXNwb25zaWJsZSBmb3IgdGhpbmdzIGl0IGRpZG4ndCBkby4NCg0K
VGhlcmUgYXJlIGdvb2QgYXJndW1lbnQgZm9yIGFsbCBzb2x1dGlvbnMgYW5kIHRoZXJlIGFyZSBh
IGNvdXBsZSBvZiBibG9ja3Mgd2hpY2ggcnVsZSBvdXQgb25lIHNvbHV0aW9uIG9yIGFub3RoZXIg
Zm9yIGEgY2VydGFpbiB1c2UgY2FzZS4gVG8gc3VtbWFyaXplIEkgdGhpbmsgdGhlIHdob2xlIHNp
dHVhdGlvbiBpcyBhIGNvbXBsZXRlIG1lc3MuDQoNCk1heWJlIHRoZXJlIGlzIG5vdCB0aGlzIG9u
ZSBzb2x1dGlvbiBhbmQgd2UgbmVlZCB0byBtYWtlIGl0IHNvbWVob3cgY29uZmlndXJhYmxlPw0K
DQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IERhdmUuDQo+PiBNYXhpbWUNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
