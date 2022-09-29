Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7705EFD1C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 20:32:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C9EE3F510
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 18:32:36 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2049.outbound.protection.outlook.com [40.107.92.49])
	by lists.linaro.org (Postfix) with ESMTPS id 916FA3F49E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 18:32:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQHT+KhImtiP4QeCUXkTUpM9VAkVCupz8INnM4Xy66UzXZBIH5cQJoqGlGmd8CzTTF6CgYT5BSFZ/mAU+oPCigoNC1RN8zKWVFQKm0P3zcXrSieSfyBY5CoWfFkb2LkvWBer0ZrmcG2U5u0WC4+wa4Ev98br/XvaYioSDX5O/ZwYuUYb1lTEAlR3yWOwpjLONUzVBSaRtaEPa8CFHBnMuu5vv3omIlvtJX9N9uFr3QklllJrc8tv2YHDBoFks8b65YFFbpz51Uc+TOxhauU+9NTHsPH7kIvkoT+K3GjvsjHHi6BEd77FA4Co3NJtPm1qP8OkJMvk068rBYX7IhiXqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QkeAnoo2HrKMToe13FOL9LVMuyXC3hW//oNThQUwrs4=;
 b=CCdqKVHqpf9PZlyFrfhfdkArznWhYWmw2/YXVXm4zKCtOJySK7b5p4LV1A1yDZC1R1xjkOOeuRtvFLiMp873sc/7Fp8ZR61sRAiltcBEyizEq7dzztFkbVRmWyCVeH23n5ELhB/FBZJ3Q0Q+OZbPKTjZo/avWD61xdh5spQvkgpq3uyfWhGK+DouoK93fXqfsazvLfkElUYko8l+/xa6FAbkh8+r2gBpC9STMf5A4879kxGQpYJ+y2DexhEJHP7VYvSqglMQOj5hYMfEgUCTbWVG0qeXmnNiD/JuuO8n3yUl3Q/Fh1/JuW0J2zM70v4ezAG7sumZ28K/wsqHJ7/PLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QkeAnoo2HrKMToe13FOL9LVMuyXC3hW//oNThQUwrs4=;
 b=c/dRIlZCzk4/goTQ4xw6wr1Gl9370edIT+ZHjfnLchR8MHqciFRyff4wHEshyq//62NqS1AUJOV87zitq/X4sVCbMF5r3dIuAl1bPHl38f+8ruHqnadiBD0JeoBa2MRhQh5CkTGFP9RMgHcrSuNsWQrtZFkeYeV+vPwXOxsz7Rw=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM4PR12MB5069.namprd12.prod.outlook.com (2603:10b6:5:388::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.19; Thu, 29 Sep
 2022 18:32:15 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644%6]) with mapi id 15.20.5676.015; Thu, 29 Sep 2022
 18:32:14 +0000
Message-ID: <efce6f23-135d-d946-6677-0668d83a7831@amd.com>
Date: Thu, 29 Sep 2022 20:32:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Yadav, Arvind" <arvyadav@amd.com>, Arvind Yadav <Arvind.Yadav@amd.com>,
 andrey.grodzovsky@amd.com, shashank.sharma@amd.com,
 amaranath.somalapuram@amd.com, Arunpravin.PaneerSelvam@amd.com,
 sumit.semwal@linaro.org, gustavo@padovan.org, airlied@linux.ie,
 daniel@ffwll.ch, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
References: <20220927172409.484061-1-Arvind.Yadav@amd.com>
 <20220927172409.484061-4-Arvind.Yadav@amd.com>
 <59d4d647-f451-061c-79b5-0ffc4e33fc58@amd.com>
 <52ed8ec2-bd90-ad40-fe85-83d60eda7e05@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <52ed8ec2-bd90-ad40-fe85-83d60eda7e05@amd.com>
X-ClientProxiedBy: FR0P281CA0144.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::19) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DM4PR12MB5069:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e2c0df7-b595-40b5-8955-08daa248ee4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fC0l0acnTxf9yGSll45E26LHJXmAqOTqPtl9h9+VPzj0/ZnPhfavUHcxETqq9ZMotDxPdPw2OBUEDv48yW/cIazeKD3rkoMX6PPGVoxv00PmyTgOkBw+e2oVbR1PRfAM3ECbiGGClv/SwYS7jgjSQjvzHiPtMrVtG4d1RqLV3FUlg8Mtq9ejStJMBokVrMUDsaV84iL9wR+VGnGA8HC7nJwFe0rnbGoP/WrNZhmtDyvkhWMBJMVGAUjRVIgnwIN3kG8jpcZlkJksW+ax3MhCJSMn6o13ugvLflbFEVEVyL2A8+VP8F8A7zgUtNi93db8QM7jG8Go6qVpcqPA91k1yB2Sow2+9p2jw3k2q9TvQR9+1wvH89XJbrir0wO1IwGwz3lgiY7ctQKdRFEpb8sfdVYS275p34BjezIXYzLHNxMSsUSumhNTPiAlcQGVDS7j7vIu4rMA1HyHGS1KfRI5Gf1geXRYesa0/RhpEtdwfXbceUpkMoSq4QXVsuhxGkPOCrPDTrZoBs1K499jA36vVr3S2/3Fv4ycliI/JQlA9tdvwyWPPvqmXvkdptwaGDNWtbnCKEprolWBPMXbAL5XvxRN7o4KkRDomo2k7jH94KqhAKm8oNXBqcOtcag8EmrRMcwNMAmN2FONHpeI+m7+4rlNQ1Ki7jQ6/dsE6I17VsZWKxprhxF0kDlkuOCxTn98bl4WJr//8P3JeZsa9FUR6PP+xuyxmqGyzHEvi2Sl51WwtSC79yArc3B53rb96B2Tx5VNYOs4UpSX8zdt3omd5VL/BI0pyFeIhK7Byu5tOJ3xN2CDQqaj8yA1ajdvLnv0
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(39860400002)(346002)(366004)(136003)(451199015)(316002)(110136005)(6666004)(86362001)(41300700001)(31696002)(8936002)(186003)(2616005)(5660300002)(66574015)(66946007)(66476007)(66556008)(36756003)(8676002)(53546011)(6506007)(2906002)(83380400001)(6512007)(6486002)(31686004)(921005)(478600001)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NEc5a0k3Z21ybitrSWxIZldDZFRQYTk2SVgxOHBMVDlSdDJQSGJmbnFCWWNp?=
 =?utf-8?B?bTA1TWxGdElKOVFjV0FDUzV0VkdobGxIcWh5Rm9wYkZGQnRxQlluN3ZyQ2FL?=
 =?utf-8?B?Q25CQ2VGeWtPL2VHWFdYTDJtVlZZVUt1ZWczWjd3WUtxQWRPUUE3QktBd2RM?=
 =?utf-8?B?bjNFSlJZbVZvbVFtRTc4RE5XYWdCZktGL3VFRDhNbGQrU2UrTS9hTG5BS2J1?=
 =?utf-8?B?WlNFdm9UelZmb0VYekVsTWZVNjlDS0lNenBBUXJsQjZlVkdHNmI5V2dyeTVq?=
 =?utf-8?B?Vi9HSWRNZk9UTkRNYW5SdjRLb2lmRGtQYk03VzRZeFRkV016cFY0M1dyYld2?=
 =?utf-8?B?UEFneXIzS3FFN0Q3SlYzTVhGVFVwaU1JdHp6SzI5ZTR0RDNjWlNqZ0gvMm9L?=
 =?utf-8?B?bm1sVlBkWXdZZ1hyNDBVQk53SGZmaU1iMkVPNEVIZ3RPSGtYQkZIaUVzM0Uw?=
 =?utf-8?B?a1RrVEJHMDd5Nkt3VVh0Q2VOaThxT3dUUWhmbXJpNUYxdmJ1SGZZTkdIRS9E?=
 =?utf-8?B?YVd5R0NtdG5hem5jM1I3OWg0TW9ja3lsSWptSFg5NkJtampmcE5QSzlsNFc3?=
 =?utf-8?B?QldMYTZXY2FaWVhnOFZVdXdodFA2VnMvSHpYYStzaFlJUExSdll6UWVCTmNz?=
 =?utf-8?B?ZzFzd0krd0tOOWZPZ1dqRkRmRWFnWXFxMXVPbXZVbDNucVBhT2ZGSFYzSGtJ?=
 =?utf-8?B?Tmh4dGkveW5VTEI1d21oSlB3U05IZEU1N2dtV1VNQmJVME0vWCtYSTNrVjNO?=
 =?utf-8?B?WGM4NVM2dlpzNXdxdHQ3d3FRSHgyU2lObnpVRGF3OHEvV09KSlZvSXJDbks5?=
 =?utf-8?B?bXVKNE9aQUFXOVYzTWtnK2cxR3ptb2FrZi9tMUFlUnFldU56Tlk1TlRla1VJ?=
 =?utf-8?B?QXRLcm9ES3IrTVFsaW15akQzcWZzV0NZclFYMFdpR2g4RzQxbDZPOFIrZlYr?=
 =?utf-8?B?WlBVZ05pbmtZV0NPa09saUgvUVpjYTdwMGQ4eTdzb0xmcE1RczU5S3kxWW9k?=
 =?utf-8?B?RWhpYm81Vml2T0ZlQi9QWi9BUTM4VG5RYWNmWGVSNkpZc3ZvT1FUQVd0TVJk?=
 =?utf-8?B?VnFuTzl1VVNQVEEwRkVlSzdpM2x4clFGWUMwMC82S1pQc0tUdXc4enVDaEtx?=
 =?utf-8?B?WnI3ZDgrYy9FalhZOFE0UXJyL2NISDdQd2hlNDBrdlkxZW9LeHFWT2pNSWNQ?=
 =?utf-8?B?cG1vbVluUHNvRGVicE1qU1FoVThLN1JLRG9WTWthVWRZWHJMMW1xOSs0RmJD?=
 =?utf-8?B?UzByUi9Sa3lCdUtEdW91dDBYbmNUNUFncHlmRTdiVlhTNmViWDZCb0oxanNz?=
 =?utf-8?B?MldGcHZPMGlzdHlKenZkRTRSbUZLbHRLVzdTQ0tYL1VOWENBd2FPU2JlWHY5?=
 =?utf-8?B?aWdDK2paam9ub0FjRU5QNWV1OGJwZUpuUHlyVHZkcmRCR295bzRxc0JvU0t4?=
 =?utf-8?B?WXk3aTR5b0hJQlY4RjQ0QlJJOUtqSDByMXlnYkZzL3VIb3M2UzdYT0JDNFc1?=
 =?utf-8?B?V2xlaXhWYmlzd2RuSEVEdUNLT3IrNldranR3TWlqblZHblBDdzZhTm5aN0xj?=
 =?utf-8?B?S3FTZkdGd0l2TzZZb04wYXlxUjRoKzR3OHJOL0lUOUIrUGwzelZIODdOU2Ji?=
 =?utf-8?B?TFNCMVhVaU5yRTZOMVpSQ2pRQnM4SXZzMTI1dW9QeWpoaFZybTNxNUU5d3Bt?=
 =?utf-8?B?bkE2N0RTWkRpanhsQTBRN2NwQm9NZFlRd0FHalp4ZllCWHZUWTg5Z3UwOTJP?=
 =?utf-8?B?MVdNdTVRWUhuRE9xRVY0T2VFT3lYNE1VQ3JXN0NRN1hyc29KSkR6U2MwNUlS?=
 =?utf-8?B?Q2xpdkdMTDVLRlIrakQvL3M0M1hUd0w3NmFnanJvSWZVUzdDb2dHR0Zyb0c0?=
 =?utf-8?B?VWdHNXZIUG9TdFA1SzYyL0YxS3pKTG5ocm1oVHBxdzRnZDZMMWZOQVRVaHd6?=
 =?utf-8?B?ZEg2Z2NqajVEN2FzNEVhWTBONElFQVI1QjRVM0dxV3lJQlZYSERseXpnajRu?=
 =?utf-8?B?dHN0enVPUXVjSitkbXZ0KzVpeWMxTUo2UFBPZ0JmOUNDbFl2T0hjWXhNREpk?=
 =?utf-8?B?dUd5UWJqVzc1cVFuQm9wekxTUVNTK1FQMmlNYnFGY0ZhclRsZE9lS3VJZXU3?=
 =?utf-8?B?cEk5Nnlnd3hWeTFFbm1ZTU5Uck5CNUNJNkFRMVRqYnQ4L2JaUENmek1aVklq?=
 =?utf-8?Q?VL0BlNNJbPVKtQSyCuPuut5NMmBgH28LZ7qZhfNJyMzb?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e2c0df7-b595-40b5-8955-08daa248ee4c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 18:32:14.7403
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jBPYzyVLGhRD0qcMU3RNlFx8FhtKj42yVPIhNrl0VsFTZrAsl+kP6gtPHhylu1Lz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5069
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----------
X-Rspamd-Queue-Id: 916FA3F49E
X-Spamd-Result: default: False [-10.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[amd.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[2603:10b6:408:43::13:received];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.92.49:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.49:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="c/dRIlZC";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.49 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
Message-ID-Hash: YY4UQIGVOSSTMVHFKKJS54UXUGACYQEP
X-Message-ID-Hash: YY4UQIGVOSSTMVHFKKJS54UXUGACYQEP
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YY4UQIGVOSSTMVHFKKJS54UXUGACYQEP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjkuMDkuMjIgdW0gMjA6MzAgc2NocmllYiBZYWRhdiwgQXJ2aW5kOg0KPg0KPiBPbiA5LzI5
LzIwMjIgMTE6NDggUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBBbSAyNy4wOS4yMiB1
bSAxOToyNCBzY2hyaWViIEFydmluZCBZYWRhdjoNCj4+PiBGZW5jZSBzaWduYWxpbmcgbXVzdCBi
ZSBlbmFibGVkIHRvIG1ha2Ugc3VyZSB0aGF0DQo+Pj4gdGhlIGRtYV9mZW5jZV9pc19zaWduYWxl
ZF9sb2NrZWQoKSBmdW5jdGlvbiBldmVyIHJldHVybnMgdHJ1ZS4NCj4+PiBTaW5jZSBkcml2ZXJz
IGFuZCBpbXBsZW1lbnRhdGlvbnMgc29tZXRpbWVzIG1lc3MgdGhpcyB1cCwNCj4+PiB0aGlzIGVu
c3VyZXPCoGNvcnJlY3QgYmVoYXZpb3VyIHdoZW4gRE1BQlVGX0RFQlVHX0VOQUJMRV9TSUdOQUxJ
TkcNCj4+PiBpcyB1c2VkIGR1cmluZyBkZWJ1Z2dpbmcuDQo+Pj4gVGhpcyBzaG91bGQgbWFrZSBh
bnkgaW1wbGVtZW50YXRpb24gYnVncyByZXN1bHRpbmcgaW4gbm90DQo+Pj4gc2lnbmFsZWQgZmVu
Y2VzIG11Y2ggbW9yZSBvYnZpb3VzLg0KPj4NCj4+IEFyZSBhbGwgSUdUIHRlc3RzIG5vdyBwYXNz
aW5nIHdpdGggdGhpcz8gVGhhdCB3b3VsZCBiZSBhIGJpdCANCj4+IHVuZm9ydHVuYXRlIGJlY2F1
c2UgaXQgbWVhbnMgd2Ugc3RpbGwgaGF2ZSBtaXNzZWQgdGhlIGJ1ZyBpbiANCj4+IGRybV9zeW5j
b2JqLg0KPj4NCj4gSUdUIGhhcyB0aGVzZSB0ZXN0IGNhc2VzIHJlbGF0ZWQgdG8gc3luY29iaiAo
c3luY29ial9iYXNpYywgDQo+IHN5bmNvYmpfdGltZWxpbmUgYW5kIHN5bmNvYmpfd2FpdClhbmQg
YWxsIGFyZSBwYXNzaW5nLg0KPg0KPiBJIHdpbGwgY2hlY2sgc3luY29iaiBhbmQgbGV0IHlvdSBr
bm93Lg0KDQpNYXliZSBDQyB0aGUgSW50ZWwgbGlzdCBhbmQgbGV0IHRoZWlyIENJIHN5c3RlbXMg
dGFrZSBhIGxvb2suIFRoYXQncyANCnVzdWFsbHkgcmF0aGVyIHZhbHVhYmxlLg0KDQpUaGFua3Ms
DQpDaHJpc3RpYW4uDQoNCj4NCj4gfkFydmluZA0KPg0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+Pg0K
Pj4+IFNpZ25lZC1vZmYtYnk6IEFydmluZCBZYWRhdiA8QXJ2aW5kLllhZGF2QGFtZC5jb20+DQo+
Pj4gLS0tDQo+Pj4gwqAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCB8IDUgKysrKysNCj4+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+
PiBpbmRleCA3NzVjZGMwYjRmMjQuLjUxNTZkYzZiZTBhNiAxMDA2NDQNCj4+PiAtLS0gYS9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aA0KPj4+IEBAIC0zOTgsNiArMzk4LDExIEBAIHZvaWQgZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWdu
YWxpbmcoc3RydWN0IA0KPj4+IGRtYV9mZW5jZSAqZmVuY2UpOw0KPj4+IMKgIHN0YXRpYyBpbmxp
bmUgYm9vbA0KPj4+IMKgIGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UpDQo+Pj4gwqAgew0KPj4+ICsjaWZkZWYgQ09ORklHX0RNQUJVRl9ERUJVR19F
TkFCTEVfU0lHTkFMSU5HDQo+Pj4gK8KgwqDCoCBpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFH
X0VOQUJMRV9TSUdOQUxfQklULCAmZmVuY2UtPmZsYWdzKSkNCj4+PiArwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIGZhbHNlOw0KPj4+ICsjZW5kaWYNCj4+PiArDQo+Pj4gwqDCoMKgwqDCoCBpZiAodGVz
dF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkNCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHRydWU7DQo+Pg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
