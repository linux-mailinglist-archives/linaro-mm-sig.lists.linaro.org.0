Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 074216191A9
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 08:16:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 128D13EC14
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 07:16:23 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2056.outbound.protection.outlook.com [40.107.220.56])
	by lists.linaro.org (Postfix) with ESMTPS id E8D893EC14
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 07:16:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=AveR1RJD;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.56 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fEEiUEnQtkJ7xm0pRQI9Civ8oahu6f2WFmN2RxaHWIcIjMGORlRDKPNkjxXMMzLciIPHH8JtWgHAflCOb8J5VsjAWthPYyVczouy45NZku7ckPeHcezASms1vxBHm0TIKl/y2mOANALDZEm9Uz2faEJo4jn8Esbk5+4f/p/WKCmfWG7BDOdWw9cnrIdI5JIG+2J+zlW0VkGkqW+0t1qFpvcZrOuz2dmrDc8fX0ikfVEpBdGq4DZgD1xuAzCcpyWcSn2TdjbuLX+gW2M1VKg7G4l/MvPC+E7lfN9GzZloiYnbt5zyIsKXvwhEkUzo3qmblk0Qh4Wv3H7sHs5Pc/uv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TXhNyRBaZTa/C9vLIsGWsT/MfokGSvA3sN1IzjGeDa0=;
 b=nTzmhAR71WIzsnknzV1gV3tyQ/WL0kudwAJEGRPh7M9t/fWiNIcWnmisturRo9nt8V5CKs8cTb4L2aNDg2vYhsX7PN4Q7ybXv2LX9hruduiWQPNeCaQkz8uDmMokkm60RTc114GswLAmRoYDrfN/Q/3IEdEg6TTMPADoCbIGi8XuobD/iMO9+xbhSUMz8M/Ithwq47ppiNhz5jfuOH1hVWzMheXdNV2WfrSgyJD5C1dWgvlGr3zBhLf8zlRqHqFlEw0dpUBOn5bAppj7T041jIScPkJ7/mqVUVc1ygZeYWFbU51Yi3/yuPPJFsJVJWLCqvR7v0G72GeTYyXn3hiIBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TXhNyRBaZTa/C9vLIsGWsT/MfokGSvA3sN1IzjGeDa0=;
 b=AveR1RJD/OxpH2E3DOLQ4aalWG7VmoLF1Y3mnrcBxI3avR2xywwfq9WRTwVd0q3CsvM4zTMVGTvX7QWXmOa5GmjIiICPXE8lIz0g2D5DqUMwyERNllt8qgYjR0K70lQY0SSIQCMfWWqEq4eVI76gF7MKLYbwQbqbpPqVlKc0PH0=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CY8PR12MB7313.namprd12.prod.outlook.com (2603:10b6:930:53::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 07:16:00 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5791.020; Fri, 4 Nov 2022
 07:16:00 +0000
Message-ID: <d916e29d-d098-c3f3-940a-37be6772ecb5@amd.com>
Date: Fri, 4 Nov 2022 08:15:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org
References: <20221104054053.431922658@goodmis.org>
 <20221104054914.085569465@goodmis.org>
 <20221104015444.57f73efb@rorschach.local.home>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20221104015444.57f73efb@rorschach.local.home>
X-ClientProxiedBy: PAZP264CA0188.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:236::17) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CY8PR12MB7313:EE_
X-MS-Office365-Filtering-Correlation-Id: ef7c8681-3113-408e-b74e-08dabe346ce6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oqHmCBG2R4oH4/GN1E52N2Wb/VwSAmjqMYlO//M6llZB9lth528OvmkR2RFzE4OKlnzQUlF+/fuL7zOnMzkHgtuXhiyNWeyQK5Pdghr3DuKrmMlxm+Yc4+5GmWiJDJbIyrwYovqyzWS2RRIGzEgIef4GjDOQO83OlMFmldURQQqDB1KlF7PloBlgH3iXwTKH6t5o+XqBWOfp9bZ5h8xkvmFO2EFwQj2atjdfoWjS5qzY++dbXIltyfJkkZMbxRsZT7g4Xe6O48eG1coTmejzqzt6O36AkI3ENPhoobxX8t5aYEWSzWWJmH3sT/L0NyYEpxl6KJhTF2oCa5q4K+bcdIMVdnJF+ZdCR1gRpK1AlqDW7fyGkW9j/djnBJFL5Pv0Xz/vlbVZa27SoaNcH/K2DaczrSaWrkOdwri3P5c5s3lIb/1mPMzbgqp91v39fxsdPj9X3Lc5S3vIc9CUyoHjsv2KcMAhAD7deDtH2RpnB8WupYQpfww80Ces59KOmn0kEhuoawzFFqbmJ5KhSn1g9Bw26v8EbiyGyZ8s1rRy1hZ1ox+vhBn8+lFEOp/e9slumeT9MGjvYkBafPPcibNwpUpexEE1lEz57dIcOp9AQdhiuKhsBAM2JWpLrc7sO3GSToco9bATeSSphs3GJLtYjyRYU3Yxsz10Ap4apij2iVV/iMVe3AhQqryHVo+miqn7BDNIV24XteHuBXtuaESKRS1NwJlsMqKczIYRrtDJkxp50ioqRnoZ6GjyhM4uQE/gRt/h1bvELPeZMSZ4MmLTCj59BhvVbw46wLzYDO+fPv6A6804uhC3qB8p4EbsW5Qr+yfZ2hZuoTEaL4SWs2/6qw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(396003)(376002)(366004)(39860400002)(346002)(451199015)(36756003)(45080400002)(2906002)(186003)(66556008)(66574015)(66476007)(6666004)(7416002)(478600001)(83380400001)(86362001)(6486002)(54906003)(41300700001)(5660300002)(316002)(966005)(8936002)(31696002)(31686004)(38100700002)(6512007)(8676002)(6506007)(66946007)(2616005)(4326008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aXRQRDZjZE1LdW4rUEdadHdrYS9qK0lnQnh1QUU2Ujc1TCsycyttaGovR0Vr?=
 =?utf-8?B?MkNGRk1oUGFUdmVnUEw1emVoUEtvR2hKWmRSOGMrQjhldzhJVm5YS2krMkJ4?=
 =?utf-8?B?S1dzNk1UZXZldk1HMVBzU1VaOGt2UXR1Ti90ckVQNmNNendlS3Z3MUU0Zk0v?=
 =?utf-8?B?RGRmQUtoSytvdWJndjV3dEVVQ0FTb28xa0NsdXdmQ1Q5VzF2K2dJU0llWmZu?=
 =?utf-8?B?SndKRTRhT25FY1diTzhKR0FJeU0zV3BvNEJHZnhZSWJKbWtmNkNReE15d1FR?=
 =?utf-8?B?N0VxUm1OSnNHQWxLMExqSG9EUmxFWTZrWkpHcHlRbkJ5cnhYcmcrc0JzSG5s?=
 =?utf-8?B?Vmt1VWlQSFVFM0t2NWRBUHFtdk4wTlYreXJqOWxwcHNONmNVbkxqM2J6ZU0v?=
 =?utf-8?B?RC9jbGRBSERBOXlramYxL3YzZFVlVnZ4cERQc1B4SUhmTzdoenlpWGF1NWJX?=
 =?utf-8?B?Sloyd3ZlMmZCZGhnbE1SUjc1QUZMZWpQOXhoYTNHOHlyUGhVOGd2amZITE9y?=
 =?utf-8?B?aDYwYkR1bHArRFpETW1ZdFF6cWtBcDJkOFIzTWw4bmppM3hqbDZGTGgxdDVW?=
 =?utf-8?B?SGlLak9xb0xWcXNWSFBUUitKbjljUW93NC9BcFdaVTZnR1ljeXJKWmZMVTQ4?=
 =?utf-8?B?ODdxWXU3bURLcmdQd1ZLK2tZbTZYRW9EUnJKRnpUZnlvWnRPYjRZcTdOQkc4?=
 =?utf-8?B?RVBXTjNsRWg4TGozRFhsSWYwVUFKbmFmSkpQTW1LSVBSMkJuTklGZ1BIejhC?=
 =?utf-8?B?RzcvTEFjNWhmSUdCZk91Tm5ERlBody9Fb3dqODhKc0VoQWMyQWlMenQwVFlY?=
 =?utf-8?B?aDBmd0UxUUlKbHBlUGwvWng2YVdxNVJJWGhZTklWTHd5c2lQclFPa1lmaFh2?=
 =?utf-8?B?aUIyYVpGS25aREZOTmxKVStRdGUxbllQZFFsVjBtNWFweHFNTG95N2ZXNFZR?=
 =?utf-8?B?UVRhOWZtOU12SDRoU2tkbjc3K0U3b0RnZ2RvRTErMnUwNVhCRjJMNGNBeVI5?=
 =?utf-8?B?U3NFQ1MyMjc1YlgzZU91cG4yQlpQbFJTYTdHOVp4N040Sy9TWW5nUkhxRHVm?=
 =?utf-8?B?UnAwYWcrYkxKbUFqRG1rMGw2eklrYnpQamVxTUJEeEFNMkJkWTd5ZWx6Y3dx?=
 =?utf-8?B?VVpPUU8vL1A1VUpTNXFkRVJseU5JbXRQNHhHbXkvRzBOdnhVRVJFZkFGcTRF?=
 =?utf-8?B?OHN3UEFUV3BGaTBvNGhEdkpzSHNKMTBwRHFjSWEybnBiNjdWSGprUFRnb1Rp?=
 =?utf-8?B?eXB3ZW9US0tyYzVRdlp5dmdmcnN4cW9iNVVSbDVKV2o2R0l5WXR1dlBXVnB4?=
 =?utf-8?B?S2dHR1BoL0RwVTVPMU9TVHpmNHNhcUk5WjJQQ3NIaWdWd3RrNTdLeGJTWjBH?=
 =?utf-8?B?RjFqeWVIbWMyVXhROElCb2dPME8xdm1Qay9GajRSQXE0VFBZNm92VVJ5K2ZR?=
 =?utf-8?B?Sjh0K2tJVWwzQzNsTnlrQmo4elZkMDhZYjF6dm1BdFVJRm5kN3czNWQ0bDls?=
 =?utf-8?B?ZVpsLzYxaGlVekJ3K3ZwRVlXZWFWRkRNVkNIZUZUOGg4eTZZWFBBVmxBNGdY?=
 =?utf-8?B?WUQ4akloT2pFaHBMQW4vZ3ZiZXlVNmwvTHkwUnM3MVpidkVkOVM4ZlRBb1lL?=
 =?utf-8?B?WEpyd08xSEhPV3l6SVBjNEtXUlpQbGRrWXVoVHFYRVRkb3pxNjJSUEVoU0NG?=
 =?utf-8?B?eEVRV0RZc05WblJGOEx1dUNvelZNTnRQemJNZlBqZ21LRkFLWHM2QnZBQWt5?=
 =?utf-8?B?M2RicDNKdlB6RzdFNmp3VnJ5QkQzNDBVbGV1YmNBZ3hKcEQyYU41cVQyNFRX?=
 =?utf-8?B?djl1a2tvWVoySmVNNDZ2bDBITEpIajlsQ1owRXdEK2NGVFZnMEM3YnFJN3dL?=
 =?utf-8?B?cGZnUGllemRTWnRhSVBqRnNDZ1gxWWNMc1RFZEFjKzdNZEtjaTRISGRzdTh6?=
 =?utf-8?B?Um5FdHFyampoNU9aU2c2SHF5WFRqZ25tNzFSTFR2SXZFTlJXVy9oNTM4OXZW?=
 =?utf-8?B?WFcyS3VUVmhjcmozS05QdmlPM3dLazFXMEhxRW9CcndPbjhqMTlRTjVmMEw2?=
 =?utf-8?B?RHhMQThEL1NQVVpESTRoZUN2eWU0VGdnNWhkQ1FuQWRTYWk4MG9xTDNIeFhy?=
 =?utf-8?B?ZXk4Nkk5WG93bkRrTTVpNG1SMFlqaGI2Y0k5Y2tKS25NVG50WWsvSkN3ODhD?=
 =?utf-8?Q?ncFWzBpSJ3JG9/Jl44Q/fwoP+TFr4XJ6NI6QHK92hPAx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef7c8681-3113-408e-b74e-08dabe346ce6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 07:16:00.3638
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +dcXcbWYGOQ8ul8fe3ZuZT5sdNvF+fchI5W6rGHiwUsLifaD2ckwjYKzvqmLkWnI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7313
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---------
X-Rspamd-Queue-Id: E8D893EC14
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.955];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	URIBL_BLOCKED(0.00)[linaro.org:email];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,NAM11-CO1-obe.outbound.protection.outlook.com:helo];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.56:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: DD3NA2AEBEV4KPRFEACWOIGR45PAULTL
X-Message-ID-Hash: DD3NA2AEBEV4KPRFEACWOIGR45PAULTL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v3 12/33] timers: dma-buf: Use timer_shutdown_sync() before freeing timer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DD3NA2AEBEV4KPRFEACWOIGR45PAULTL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDQuMTEuMjIgdW0gMDY6NTQgc2NocmllYiBTdGV2ZW4gUm9zdGVkdDoNCj4gWyBPbmNlIGFn
YWluLCBxdWlsdCBmYWlscyB0aGUgTUlNRSBjb2RpbmcgXQ0KPg0KPiBGcm9tOiAiU3RldmVuIFJv
c3RlZHQgKEdvb2dsZSkiIDxyb3N0ZWR0QGdvb2RtaXMub3JnPg0KPg0KPiBCZWZvcmUgYSB0aW1l
ciBpcyBmcmVlZCwgdGltZXJfc2h1dGRvd25fc3luYygpIG11c3QgYmUgY2FsbGVkLg0KPg0KPiBM
aW5rOiBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9
aHR0cHMlM0ElMkYlMkZsb3JlLmtlcm5lbC5vcmclMkZhbGwlMkYyMDIyMDQwNzE2MTc0NS43ZDY3
NTRiMyU0MGdhbmRhbGYubG9jYWwuaG9tZSUyRiZhbXA7ZGF0YT0wNSU3QzAxJTdDY2hyaXN0aWFu
LmtvZW5pZyU0MGFtZC5jb20lN0NhMThmZjFkMGE3ZTQ0MmExMjgzODA4ZGFiZTI5MTQ4ZCU3QzNk
ZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2MzgwMzEzODA5MzEzNzE2
OTElN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYy
bHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCU3QyU3QyU3QyZhbXA7
c2RhdGE9WFpnd095MHUyMEwxQXhPamhVcFdJQ29kYlNuMlZZaGg2WUdTeWtqVWVnUSUzRCZhbXA7
cmVzZXJ2ZWQ9MA0KPg0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9y
Zz4NCj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+IENjOiBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4g
U2lnbmVkLW9mZi1ieTogU3RldmVuIFJvc3RlZHQgKEdvb2dsZSkgPHJvc3RlZHRAZ29vZG1pcy5v
cmc+DQo+IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyB8IDIgKy0NCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9zdC1kbWEtZmVuY2UuYw0KPiBpbmRleCBmYjZlMGE2YWUyYzkuLjVkM2U3YjUwMzUwMSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQo+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYw0KPiBAQCAtNDEyLDcgKzQxMiw3IEBAIHN0YXRpYyBp
bnQgdGVzdF93YWl0X3RpbWVvdXQodm9pZCAqYXJnKQ0KPiAgIA0KPiAgIAllcnIgPSAwOw0KPiAg
IGVycl9mcmVlOg0KPiAtCWRlbF90aW1lcl9zeW5jKCZ3dC50aW1lcik7DQo+ICsJdGltZXJfc2h1
dGRvd25fc3luYygmd3QudGltZXIpOw0KDQpNaG0sIHdoYXQgZXhhY3RseSBpcyB0aGUgYmVuZWZp
dCBvZiByZW5hbWluZyB0aGUgZnVuY3Rpb24/DQoNCk5vdCB0aGF0IEknbSBhZ2FpbnN0IHRoZSBj
aGFuZ2UsIGJ1dCBteSB0aGlua2luZyBpcyBtb3JlIGlmIHRoZXJlIGFyZSANCm1vcmUgZnVuY3Rp
b25zIHdoaWNoIGRvbid0IHJlLWFybSB0aGUgdGltZSB0aGFuIHRob3NlIHdoaWNoIGRvIHRoYXQg
dGhlbiANCndoeSBub3QgZm9yYmlkIGl0IGluIGdlbmVyYWw/DQoNClJlZ2FyZHMsDQpDaHJpc3Rp
YW4uDQoNCj4gICAJZGVzdHJveV90aW1lcl9vbl9zdGFjaygmd3QudGltZXIpOw0KPiAgIAlkbWFf
ZmVuY2Vfc2lnbmFsKHd0LmYpOw0KPiAgIAlkbWFfZmVuY2VfcHV0KHd0LmYpOw0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
