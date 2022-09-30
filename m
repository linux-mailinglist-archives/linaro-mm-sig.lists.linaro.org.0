Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E960C354
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:36:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B941A3EE41
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:36:14 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2057.outbound.protection.outlook.com [40.107.94.57])
	by lists.linaro.org (Postfix) with ESMTPS id CDAA53EEF8
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Sep 2022 07:32:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FscJITiMIAzduLUveKyL24bGOJrS/GvPgVfOozr9M/Q1VD0w/2uXlrmrvL6CGZwDsfC1VYdgzXvp86L9qvhLatYRKEjIPUxO70LK2zA00djvMJEznT9klFqix7AR6TeqkxwsdSqQlWY+72Jn975tn8j99sQdw6EHtzone2d5ebBt8oPg0c11+JEhEMre74UxWPlRsfOVqcGfl8zVVr8KlzgTIA2ncXwM9vq8zMOwC++LPcEmBDd3Se1385j2+P7JoZyhSLXADB7bW/enWeupB5T1sZXLH4Jxmc/N56KXDLurhZkMYpNIPClgAulrQJdQFjVBJ2rfy749BnV/lc/sQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NIFVGit1TOX8u/bsEhFSfgjnDAOyL9HW+VGPSvMscJo=;
 b=EhL++Zk3jHlde7t888ztPx2gKVaMNYqkSnlWRaGNeTLDVh5H8znGguMRn5SMd8I7Y3S7u6XVLgdxOliAaBo2s5kMUD7Jb/e46lYPj7lsTpvEpL8349wDlnksoOc4UPhu1GNTzvHaUXsmoSTurc4VEKds+u5Vmy+qEOawDIMEfYnh0TsN0YaqJGSGJNFIyYUQYmitqyzyUHFKr/WXjFmzdOERXBvQKEKYzarsqo9vZBKyf2/jYuC5YokjvKXLhqN68pfhk/0xvUGIKlFRcfhoFmSyhH6bLr8fOLQUHbqC4g1UDZK3ls9BiQvlnWSIMim0XA5DR47nuTcDKrm4t9pEHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NIFVGit1TOX8u/bsEhFSfgjnDAOyL9HW+VGPSvMscJo=;
 b=yKurC7rGG3U8hfguTco1D0qwpiu/M/jX8xPM++fw/6ZtwbRaOe1EzKw4JedAVHXkPVjR7ItkvzhCuqzINFYMvR2CfjQ15xhnnZTEEfLu2EHI/AhfoP+s4np4JF2TOi8kf1EDtGY6tW3j2wt46sk8omKNnB4deLIG6AaRQjEDaIM=
Received: from PH7PR12MB6000.namprd12.prod.outlook.com (2603:10b6:510:1dc::15)
 by SA1PR12MB6948.namprd12.prod.outlook.com (2603:10b6:806:24f::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Fri, 30 Sep
 2022 07:32:56 +0000
Received: from PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::9ef8:a10e:6fe:1933]) by PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::9ef8:a10e:6fe:1933%6]) with mapi id 15.20.5654.024; Fri, 30 Sep 2022
 07:32:56 +0000
Message-ID: <a4790844-825f-839d-ed9a-104d4b589290@amd.com>
Date: Fri, 30 Sep 2022 13:02:44 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220927172409.484061-1-Arvind.Yadav@amd.com>
 <20220927172409.484061-4-Arvind.Yadav@amd.com>
 <59d4d647-f451-061c-79b5-0ffc4e33fc58@amd.com>
 <52ed8ec2-bd90-ad40-fe85-83d60eda7e05@amd.com>
 <efce6f23-135d-d946-6677-0668d83a7831@amd.com>
From: "Yadav, Arvind" <arvyadav@amd.com>
In-Reply-To: <efce6f23-135d-d946-6677-0668d83a7831@amd.com>
X-ClientProxiedBy: PN2PR01CA0213.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::7) To PH7PR12MB6000.namprd12.prod.outlook.com
 (2603:10b6:510:1dc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB6000:EE_|SA1PR12MB6948:EE_
X-MS-Office365-Filtering-Correlation-Id: 780b7422-4cff-48cf-9662-08daa2b5fddd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	09tceJPYWDHcU9LEM46dEbqtATfcJ18A8stRBs8x7UaNjZApRrwlOZZEYcxmmzhkf4lC8iV3rB+FUgC7xw/QpGkh5eA3NBXFryUegqtKumMsGNoeuOtX7Fi6h6GJVnfY7tKbIMVNSojVDWT02muxJRstkvXrsBZYMeWspBHSbKzvhDX3hANBWjc5/MgIoLkNt8pyxpbx8A+cLFAYyyUfbNRlfXA4NR27vi57TQa/qARGqLhLbKe5pWJZcDQiFI8cPkFzEAto6UdcGpTmZ/jLDB6truqI5G5m3Vylxhj4FPTGGSDf9ZDu8bVieEptTK+z5Vl3iQtX2nZ4wLQJ/i3MAkhGsFWRdgqzXFg4WVZXoyJSo1+wOwKJ7LWcRiMEUfYc2xiULrdPF8gsc2o74s3xvQ8RrsNBvSzIShT5YPPUxZ1ljM0/R4m3agWY9Ad/OXXDrkeviMQW9rku3tj2JRQrYX1Cs9bAg8zQfaf9z0TC/Fnr9QvLZrgv4mZzzEzUw8dvv8NtPV8vtsGofD/DIazlp4MvfIeQeZk+/zGinG985xPd3jPW10aAHClxh3tjYB6pRxyvJePbCg0wmQUQRxDQ4WJoD3QvaUCpb2k3UECj5Xd+WFu/sL+HH3XT7pErPJBeQJfc7BTz/z62sllmo5Exlb6DRcRN0Ii9E9H1fWzgL7c+ExgyvTbLKaMLIE5uhxeprwfFlI5TNDToizggGigfafZ5dkpF+84yQVvcXI/kNDJbDwLVrXt5UgEGQXOnlDSk3Z44a18cGQPa1Mg4FCZnL0b4mZu1b+ZVH5ki3MwBjXOjZXVXoeYIULJmJZM23wyG
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB6000.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(346002)(396003)(366004)(136003)(451199015)(6486002)(478600001)(53546011)(6506007)(5660300002)(6512007)(41300700001)(8676002)(110136005)(6666004)(2906002)(66476007)(8936002)(26005)(31696002)(316002)(921005)(66556008)(66946007)(31686004)(2616005)(66574015)(83380400001)(36756003)(186003)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?czlEaTR5ajl4a3hkLysvMmh1ekRzQnI2bHFGUGhQMnN6ZFVBV1JBZHg5UG9V?=
 =?utf-8?B?cjdPK3FtK09YQWgrSFJ5d2RHOHJrbTExSXM2dTdEekZocEZjL0ZOeVVDc0pi?=
 =?utf-8?B?elNUQy9zSldkUU15MHdiQUlTOFo1aU5IbXpHdytPWlR1SDNwYk85c3N5NHVi?=
 =?utf-8?B?WWJmdjE1MDhnYVlRbkRHWmtnenRmb0l5NUtxbkQvSHRZNW43VnNlSFhwOTBL?=
 =?utf-8?B?OEhod2xxZkQ1NFpUS2JWcFF4TW9DODd3ZklFQ0ZhVzZyZXlPUEF1SEV0YU5K?=
 =?utf-8?B?SGdyYzBBVW9yaG0vSkp2cGszbkswaXBuTkxiWUFMVm0ybGxDOVpuWmJqbUh5?=
 =?utf-8?B?cXpoVk1jdldBM2swOGMvTTFuTlpIQWhqSGl0V01EcTVQaGxmQVBEQW5YeFdM?=
 =?utf-8?B?bTBISHRLWXIvbWJheGplUlg1Rjg1Qy9uMExId3dmais3aVNRZFpvdVRabFBH?=
 =?utf-8?B?L1VCVm5tYUU2TjdtbXhWL1JNSzlsNnNNQ1JPSU5WNE1DOXdWODNKNFBRRE9V?=
 =?utf-8?B?MUcveW5HTXAvM2xtczJSYTkyYURMb2ZlZDZBNXAwWDI2VDFWOVhBbkF2MUxQ?=
 =?utf-8?B?bkdXY1BCS01BL2RudkFCMW8rNHdYNE5HN0FmRlcraGFSRHF1ZXVqaThCSXpv?=
 =?utf-8?B?L0hCV1JWU3BOalMxNVNPYVFEdE9MR1ZrcVI3Q3cyaHZEaVY3bWxWSHkzNVFk?=
 =?utf-8?B?bWd1WUtDdkNwSk5GL2oxMWRDTk13Z3NpelU3d2ZxK0xuSGRsNWcwZjN3eTVi?=
 =?utf-8?B?RU5oelB6UXFlN0ZHM050S1h1d1dsV1lJZkJnRlAzYllLSlExRDJuTDNNVVJi?=
 =?utf-8?B?c1M2eTF2UDhwNlcvUlhiUnhjNCs2dERaR04xc25YUFl6V05MYjc5ZndxYkZR?=
 =?utf-8?B?MWluT2NJdXZVZ2hPQ1NBL3ZDVHdzTW5VbUg5VXRsM2FwcEcvRXJnaVdUK0s4?=
 =?utf-8?B?LzdDRG1LZjJHRE9mdE5QZzN4Q2Exb0xRdVZkTzIyS3grOUJxekw4eDdIbkIw?=
 =?utf-8?B?ZkU4LzljZUpZYW1aUDhPYk9RZ1FtbWFvT0U1VTVaK0M4QUxQbUc5TDV0RitQ?=
 =?utf-8?B?djd6bVdUSmxGSVZPVnovRFlCOUZqN0dQTE5YRXpZOVhKWUo3WEs1dWJVdDRj?=
 =?utf-8?B?NGhydWhJdUlzdXBjYk9Cd2EydGF2OGZSNUhsb1EwTytESUpmKzJsQXNxN0dN?=
 =?utf-8?B?SGt4eHlOQTZ1WXptQjBtaXFJYUZtdXhyMkpBb0M5QXVQK2pqeXFTanFTbVc4?=
 =?utf-8?B?TlMxRXl0ZDFGdTBScnRPQWYxTElPSzMxQ1k0S3lLc1daSVlRaXlsM0NNRktn?=
 =?utf-8?B?aWVNOXpybmxUY1M1T1NLSGVEYjVsM0NzZUdqOFZrb01jZTlqM2J5K1MvNlRI?=
 =?utf-8?B?RzFmUU5IMlo2YVErWXIzb3lEQW1Ka1Jkb3VnN0F5eUN1YzdsK24ycU10R1Vo?=
 =?utf-8?B?dUp1ekgzOExFU1EyQndmMVhyTnZTM3JWV0JoYkVYVUxuZ2p3ZFVpcTJ3Q3NE?=
 =?utf-8?B?Y29XYU1yZUIrdTJXY25FLy9IWGJnaWVkUHIzWm9CSkg3TGRGUHBPZTJHRENn?=
 =?utf-8?B?cU5sTUYrSnFTZllORktKQUdVcFg4Ym9hbGhhTkY2OWNLb2t0TTRBVTJxT2Y5?=
 =?utf-8?B?UE1idGNXcTBIeHVhSC9iTjR2QkpDcmRWUFZNWEZWQjE2bno2V3MxVHY3UUMy?=
 =?utf-8?B?cm1qKzJsTG9hOXZSNHRGb2ZLRmppQ1JLaGVrbjVVNnF3c24zbFhzalJBQzBQ?=
 =?utf-8?B?ZG1WTEF4VzJUYUJVN2ZWVjVKeERWRWQzZVRJczg0eGlWZjI0ZVp6dm56QXNy?=
 =?utf-8?B?a3FKZkszWFNHVUlUTXl5Qmk1a1VHNTlSWmR5bkk3N2NjYXFMeGtvdllYbTVh?=
 =?utf-8?B?U255eUU4Wk1Id214TGxZa2NpaEcwZnBzN0xBYmc3eXJic29UM3N0Ty9HSmtD?=
 =?utf-8?B?dklOVW9MZEtDY2NGdmZXYmN4eWZYd1MyR3QrTVBrcTZXZGlNUTVmWlBHRDE4?=
 =?utf-8?B?V3A5N2hVZUYvbmFkZnlkdHc2Tng5alJPOTZwZC83THdLbFJ2L0gzVndqUzdE?=
 =?utf-8?B?MlVvaGtSTVYxVEFyUXdubTF4cXRKY2xRN2Zvd1lrUnBpeUszdS83Ri83QVZT?=
 =?utf-8?Q?7z/OREFV7wzvKOf48w7Wd9Y9o?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 780b7422-4cff-48cf-9662-08daa2b5fddd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB6000.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 07:32:56.2346
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EkcM0BJq+t3PwMTebb3yz27IqU0lLixbtxDahGIwo69qrVkANR9i4O5R+fysPBL2nYPb3PStS1ZneOyNCnRtLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6948
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: CDAA53EEF8
X-Spamd-Result: default: False [-8.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	FORGED_SENDER(0.30)[arvyadav@amd.com,Arvind.Yadav@amd.com];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_NEQ_ENVFROM(0.00)[arvyadav@amd.com,Arvind.Yadav@amd.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.57:from];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	URIBL_BLOCKED(0.00)[amd.com:email,amd.com:dkim];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.964];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yKurC7rG;
	spf=pass (lists.linaro.org: domain of Arvind.Yadav@amd.com designates 40.107.94.57 as permitted sender) smtp.mailfrom=Arvind.Yadav@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CSBOJ5TUJRNV6DHOYT2N2SNADSQII653
X-Message-ID-Hash: CSBOJ5TUJRNV6DHOYT2N2SNADSQII653
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:32:21 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CSBOJ5TUJRNV6DHOYT2N2SNADSQII653/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA5LzMwLzIwMjIgMTI6MDIgQU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IEFtIDI5
LjA5LjIyIHVtIDIwOjMwIHNjaHJpZWIgWWFkYXYsIEFydmluZDoNCj4+DQo+PiBPbiA5LzI5LzIw
MjIgMTE6NDggUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gQW0gMjcuMDkuMjIgdW0g
MTk6MjQgc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+Pj4+IEZlbmNlIHNpZ25hbGluZyBtdXN0IGJl
IGVuYWJsZWQgdG8gbWFrZSBzdXJlIHRoYXQNCj4+Pj4gdGhlIGRtYV9mZW5jZV9pc19zaWduYWxl
ZF9sb2NrZWQoKSBmdW5jdGlvbiBldmVyIHJldHVybnMgdHJ1ZS4NCj4+Pj4gU2luY2UgZHJpdmVy
cyBhbmQgaW1wbGVtZW50YXRpb25zIHNvbWV0aW1lcyBtZXNzIHRoaXMgdXAsDQo+Pj4+IHRoaXMg
ZW5zdXJlc8KgY29ycmVjdCBiZWhhdmlvdXIgd2hlbiBETUFCVUZfREVCVUdfRU5BQkxFX1NJR05B
TElORw0KPj4+PiBpcyB1c2VkIGR1cmluZyBkZWJ1Z2dpbmcuDQo+Pj4+IFRoaXMgc2hvdWxkIG1h
a2UgYW55IGltcGxlbWVudGF0aW9uIGJ1Z3MgcmVzdWx0aW5nIGluIG5vdA0KPj4+PiBzaWduYWxl
ZCBmZW5jZXMgbXVjaCBtb3JlIG9idmlvdXMuDQo+Pj4NCj4+PiBBcmUgYWxsIElHVCB0ZXN0cyBu
b3cgcGFzc2luZyB3aXRoIHRoaXM/IFRoYXQgd291bGQgYmUgYSBiaXQgDQo+Pj4gdW5mb3J0dW5h
dGUgYmVjYXVzZSBpdCBtZWFucyB3ZSBzdGlsbCBoYXZlIG1pc3NlZCB0aGUgYnVnIGluIA0KPj4+
IGRybV9zeW5jb2JqLg0KPj4+DQo+PiBJR1QgaGFzIHRoZXNlIHRlc3QgY2FzZXMgcmVsYXRlZCB0
byBzeW5jb2JqIChzeW5jb2JqX2Jhc2ljLCANCj4+IHN5bmNvYmpfdGltZWxpbmUgYW5kIHN5bmNv
Ympfd2FpdClhbmQgYWxsIGFyZSBwYXNzaW5nLg0KPj4NCj4+IEkgd2lsbCBjaGVjayBzeW5jb2Jq
IGFuZCBsZXQgeW91IGtub3cuDQo+DQo+IE1heWJlIENDIHRoZSBJbnRlbCBsaXN0IGFuZCBsZXQg
dGhlaXIgQ0kgc3lzdGVtcyB0YWtlIGEgbG9vay4gVGhhdCdzIA0KPiB1c3VhbGx5IHJhdGhlciB2
YWx1YWJsZS4NCg0KVGhlcmUgaXMgb25lIElHVCBzdWJ0ZXN0IGlzIGZhaWxpbmcgd2hpY2ggaXMg
cmVsYXRlZCB0byBzeW5jb2JqLiBJIHdpbGwgDQpmaXggdGhpcyBhbmQgc3VibWl0IHRoZSBwYXRj
aC4NCg0KIMKgaWd0X3N1YnRlc3QoImhvc3Qtc2lnbmFsLXBvaW50cyIpDQogwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHRlc3RfaG9zdF9zaWduYWxfcG9pbnRzKGZkKTsNCg0KPg0KPiBU
aGFua3MsDQo+IENocmlzdGlhbi4NCj4NCj4+DQo+PiB+QXJ2aW5kDQo+Pg0KPj4+IENocmlzdGlh
bi4NCj4+Pg0KPj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBBcnZpbmQgWWFkYXYgPEFydmluZC5Z
YWRhdkBhbWQuY29tPg0KPj4+PiAtLS0NCj4+Pj4gwqAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aCB8IDUgKysrKysNCj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPj4+
Pg0KPj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUv
bGludXgvZG1hLWZlbmNlLmgNCj4+Pj4gaW5kZXggNzc1Y2RjMGI0ZjI0Li41MTU2ZGM2YmUwYTYg
MTAwNjQ0DQo+Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+Pj4gKysrIGIv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4+PiBAQCAtMzk4LDYgKzM5OCwxMSBAQCB2b2lk
IGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKHN0cnVjdCANCj4+Pj4gZG1hX2ZlbmNlICpm
ZW5jZSk7DQo+Pj4+IMKgIHN0YXRpYyBpbmxpbmUgYm9vbA0KPj4+PiDCoCBkbWFfZmVuY2VfaXNf
c2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4+PiDCoCB7DQo+Pj4+
ICsjaWZkZWYgQ09ORklHX0RNQUJVRl9ERUJVR19FTkFCTEVfU0lHTkFMSU5HDQo+Pj4+ICvCoMKg
wqAgaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwgJmZlbmNl
LT5mbGFncykpDQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7DQo+Pj4+ICsjZW5k
aWYNCj4+Pj4gKw0KPj4+PiDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19T
SUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIHRydWU7DQo+Pj4NCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
