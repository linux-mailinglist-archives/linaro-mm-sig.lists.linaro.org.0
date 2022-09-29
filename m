Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E6660C353
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:35:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 157673F1D6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:35:49 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
	by lists.linaro.org (Postfix) with ESMTPS id B3F8B3F49E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 18:30:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R6hQOMVh7ZDVHkfpbG9E2KrksXPTdguDAqgzEaFjgCHlOg8wZ4rq/pHS33yl+9z4jFidIUYVKP263qm1o72qGVyOlcyostPgcQEH0NDWoNfHJv8WAt/B6RudBMYdKB0yh1u2xQFCudDYneOgy/BEeodx4ZytLXaUDZfPe831ql63XNn67y1TAHUlr9+ixafDDRzMvNKGe7aTrPFXkBjW1ZaXpRPzxMThSMf3YnRpNgxFIVbbuNVjvAM3AXqpNyX8dZvoRpCJ8ilyZhKOCZVp1FVNnTZpDYDcnZx9zvlhrn/cQ94WhjykB6y/RqK6cmf2nzDHfXe22bY8ekVA1WXgoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+4v4uVZJjIna91Bf+VK3v4E6ftO3MLPNLBG+zHB4m5M=;
 b=H81K/ubUurg7uQWMPp5MFHG+IRzM7jt2AaLh8wxYqfEgoOl6PN7PxMYOOj5R3UcMv3VUDiJiFVpdm6h0ShQN6NgYE8myNbNUaD1f5J4fgQRwfkdh0lrG80mwv+/OCoe5x+u+xFx/YkLRBnqxVkvVwkwn2wEc3Z3pMIsqF0OwNu0Ng1+2T5Dh6sp+LN+AOexEYKb9Hf6FF/J764c3ojcl49G2zK0F9BcF11UzTuXyUSzUt+8TuOtVJpoXvLEt443TeiEyIZNRC9n6+O0d9lW22naFHOMN7tQH3YFyjSiy4s6BGFVmbyqvtLC4R6b9fmIdVbczwI3lF3BJOM5OUKgRJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+4v4uVZJjIna91Bf+VK3v4E6ftO3MLPNLBG+zHB4m5M=;
 b=SMLraqpG1yW44mma4db9q7zn/0TakLa5KvzlSAeFt2hVg+c92D8F7J/SRXtVo5qm0OQoF0/H9wdvWEU7SKimfzvJYCmSTd+W44WoI6xH+rCPfOrDnKQgsLE6V+Dmx86Mr7hU0BhriK0aPA2pGyS8U3Skv7+/r3f3Ujgxj6Ywc74=
Received: from BL1PR12MB5993.namprd12.prod.outlook.com (2603:10b6:208:399::9)
 by MN2PR12MB4581.namprd12.prod.outlook.com (2603:10b6:208:260::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Thu, 29 Sep
 2022 18:30:35 +0000
Received: from BL1PR12MB5993.namprd12.prod.outlook.com
 ([fe80::eea4:efd:ad94:b0e7]) by BL1PR12MB5993.namprd12.prod.outlook.com
 ([fe80::eea4:efd:ad94:b0e7%8]) with mapi id 15.20.5654.025; Thu, 29 Sep 2022
 18:30:35 +0000
Message-ID: <52ed8ec2-bd90-ad40-fe85-83d60eda7e05@amd.com>
Date: Fri, 30 Sep 2022 00:00:22 +0530
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
From: "Yadav, Arvind" <arvyadav@amd.com>
In-Reply-To: <59d4d647-f451-061c-79b5-0ffc4e33fc58@amd.com>
X-ClientProxiedBy: PN2PR01CA0112.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::27) To BL1PR12MB5993.namprd12.prod.outlook.com
 (2603:10b6:208:399::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR12MB5993:EE_|MN2PR12MB4581:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b3e95d1-d180-4187-baff-08daa248b2ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5bbgSueQtm+E9rQXDPZUdSbKT74E1GfzwWpShycU+wTT983qBSr7+odL2X4a5eMRYA73pnWXUB6cHk1FO+v3+tXFlcV5bOILW5ljjfizv81S7frU+yDFqm4LyXguB8gTYTeguWdHWl3hH8n5nHfJHSTCla367JQ7gJECwqE+MRtr0R9HrN4JVXVbuD1e61wTnmIsf7573ahJsA6U/r9PD57JctK0zyMeGE3QxfHQf8guh4gDClRvTRPxYve804ZxlIPHZ6DyFiG7scX0VjDW0V1eu4JmDZe0Wv8Hco8Ea7p2/+87zWS5IWJtRyqG1mkVIF8cwFzeFz7hequ4AT8PzbYszfKPg9tIBntfwBivzNy+dPWMk1+FBzwfDVAKpc2ndf2JFpYYHf1jJZksuEqYBJze1kgcx4/hfB+ZU04mkHOVarrOyx4kIPsSMPWWS0BDDhuhZ4OYIwBHBjqC9HC5J9O5TiClPqoxfxJBdxnjgmeYnh69pPcrKw33ahQ6AifBGpm4h0i7FcHNS4uvJZXPI8bhRJnJkDFGxjyDH8/VqG2lTHnq6RPrwP4KJKosTKEWBbJN6gd9uoN8R7AALlYBI6nuQ6uWjs5hUFKP3PlPCTJnnEnK6zmdKnNsWnB/OAMsO0CLOIWVzww6mBjugEIha1f7uUfHyExwhea4Bk8Y2djEk8h776NihQaS0q/wbQAsR5qJSTOaPxnGQ+MvBmjwEXTrRhyOvD5qSWiq1S74eBlDHut48jGDFl1HH2VQ5kKN5qMRELyBaNpuzyqfeD4zCX0P76k83Rm5lfnQenvgEcqOfxxOgEmesAOq6sxPICMf
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR12MB5993.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(366004)(346002)(376002)(396003)(451199015)(6512007)(26005)(6486002)(6506007)(53546011)(2616005)(31686004)(38100700002)(8676002)(110136005)(316002)(31696002)(921005)(36756003)(186003)(83380400001)(478600001)(6666004)(2906002)(66574015)(5660300002)(66946007)(66476007)(66556008)(8936002)(41300700001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L2pZZWtQWkFtWDhMOXpQeHBYWHIrRkJSelkyT2hiZUc0ZmVIUmFvZXpYVTFB?=
 =?utf-8?B?bDdIUHBKRkJ0U0krRy9VcjhCMXNKREhPbXF5WGhOdFgya0FxNWdoa3JTelVP?=
 =?utf-8?B?T2NkOWlBQ0FCYTFPSFAxZ0dHY05BZ2tJeWZLTUVHMFRJRks3cEJYdG5LMGZh?=
 =?utf-8?B?aS8wSytFUTdhd1BXQTU1K0NMMHhWQkZXbWJuZlJjS3dYK25pRlp6QVFkTHJG?=
 =?utf-8?B?OGtwLzFXMGtDZ3M2dzNJZ2RWR0hJQk9oMWkzL2NKd1lSZ1JkcnRBRS94TXZa?=
 =?utf-8?B?UzdPeGV0MjcwODhORlkvaWE0ak5DM3kyRkYzWGovS3hGbUhOQVV2aXlpanJP?=
 =?utf-8?B?YTZtMmtHSnBLY2x1Vmo2VkVpeVBtMzJBOUd4UXZzdHc2OWdrSEQ2N01MNVNi?=
 =?utf-8?B?bjdSL3J1Nk9jQ0ZlNHdIc1hLdHYwYXZEeGtnOWZaczFERWJ2TStmRURIZk53?=
 =?utf-8?B?b0xITUdFODlHQ0VHeGRhVmwvMDJXRnpGZEo4OCtUcno2bnF3VFh1UXZ3c25I?=
 =?utf-8?B?czhQdDJUdWplOGJUbzJRVnIyaUcvTzNnWXhVSlpIbVVGdUg3OEs2cEFYaVpR?=
 =?utf-8?B?cXV0S1M4c3BkZUFuUERtblFVbmtMRTJNNFZnR1JxY3JZOWpsYWpmZncyekRw?=
 =?utf-8?B?Z2hnQjB2TUdzRzNIUjNoOUFTZFN0MVJPamVRNVA4ZjJtejdQcU1TZVNNek91?=
 =?utf-8?B?STM4NzQ5RkdTVHlqSXRvaHhjbFFsQkNVblJ4eUl1Ky9HNktsbkRkWkV0VEhl?=
 =?utf-8?B?YXM3N3NqalFBcm54RnlPelVFVitxYkxjV2Q5SXdnc1NLTUxCTnpXc2QvcGhR?=
 =?utf-8?B?WkY3amNFMGl4dE9YQmo1ZEw5MDRVQ2M2MFM5OVIzYWM0MDh6NThrWUtPL25j?=
 =?utf-8?B?RHJVNzVQL0ZXbkM1SG9UOU1oUUtnYVZaNCtwbWhvL3lsVWsyZzBlUjgxVzJt?=
 =?utf-8?B?YXJaeEtnWmxRYVJBVnRCQVpHTE9Qd2lrRVhHWDBLNkU3dksvR3Q3RSt2aFZJ?=
 =?utf-8?B?Z2dMWGVnT005cktrLzhkbllUVXdVTFJwY2gxQVkzMU5zZHZkQ1ZxK3ZZTVkw?=
 =?utf-8?B?akpLSkpEaWxLd1czaldNQVZmVXRHTU5FREJKTVBvSWVIbVI5QkxyMzZwN2hj?=
 =?utf-8?B?VHl3eGt3d2RzM2hlcUczc2w3dklSUE5JVjhlaTRYWktuZkhtcm1FUWlvWVRx?=
 =?utf-8?B?STNqN1JBMGRwSXRqZ0F6ME1SZG10b2xKQ1c4eHgreks4ZkVCRlQzOGEvRERm?=
 =?utf-8?B?Nkt4TlZ0ZFRKZUg0a2dVbzBzMWFvd0ZieWZPUFJZdnIxWUtKYlZaS1hRMHhH?=
 =?utf-8?B?cjJaWVo0YmwwNkNiZm1YZ0ZtYWx0RlNGSVR1Z0ZlRk5UZGg3aU13S1BTb3FZ?=
 =?utf-8?B?RXg4Z2ZCWFdCSXpjODU0MXhUZE9FSXZmeW9NL0RybzV5MHVtY0R2cEVMYU85?=
 =?utf-8?B?ZTBpS0gxVlNCcUNMUmN4ekFoZTVrQ1hsem4xUlk3WGs2Tlh0K1A3QnBsYU1z?=
 =?utf-8?B?V3I4cTZTSXZ4TVhrQVRPMFkvWVF2cmFRSmlVd1BQYTVINndqZjlMWDMxa3Rz?=
 =?utf-8?B?WllvcEVyaW1UenVpaDVMWng0c05OMWpJWDY2OHROUzVSRWFDMWVQNmpYSDhv?=
 =?utf-8?B?UmFHZjBqRjlzL0tmZHY2ay9zcEg4U0xNL2lhVmdSWUN6N0hCZG5GbTVMQzNl?=
 =?utf-8?B?SmJyY3V1QjVUSVg1N2dpZjJqdmZRZXliTWZVMDZUOThJQ0tMOENIT2lBaHZQ?=
 =?utf-8?B?K3IrbUIxMlF4L2pCOVJnWkNQNkFDMFFoWENLbi93dEVCNkk3MGk5TlR4OThN?=
 =?utf-8?B?SEFXd0JCdHByam81TFliRXROUXM2dXhveitGMHoxN2hlM0NHOS9xemQrS1p1?=
 =?utf-8?B?UEVJcVY3RitmRHU5TmxCZGtQalE0eW1aR1V4ZU85Mkd3NUVZdHBOSTVJeXZt?=
 =?utf-8?B?Yk9tcnpqWTJqMElPeThjblZTZE94Y1I3dUpLSXhlVDVmdnljay9UOUtiRDN1?=
 =?utf-8?B?MCtpd055QllUazlxZ0x6S3dyN0V1WWFOOWVIbDNkMElvbC9WSFZLM0dUSXlH?=
 =?utf-8?B?SXlZcmE3QWpDL0tKMHlncGVOTkhnWXV4NW5nTTNZR2xYU2M0WEJOSDRiSmE1?=
 =?utf-8?Q?S2ESUV8ZeFTk5UKpCz+vnG0iA?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b3e95d1-d180-4187-baff-08daa248b2ce
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5993.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 18:30:34.9146
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uWPvjhRyII4YJcA9d+covSsXQ8vjUkOapF1lkmNkNkaSi3rDjov8ozXch/urleoYWHarqDYBBOuz4J9a1KOr2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4581
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------------
X-Rspamd-Queue-Id: B3F8B3F49E
X-Spamd-Result: default: False [-13.70 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[amd.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[2603:10b6:208:399::9:received];
	FORGED_SENDER(0.30)[arvyadav@amd.com,Arvind.Yadav@amd.com];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arvyadav@amd.com,Arvind.Yadav@amd.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.40:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.236.40:from];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.962];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=SMLraqpG;
	spf=pass (lists.linaro.org: domain of Arvind.Yadav@amd.com designates 40.107.236.40 as permitted sender) smtp.mailfrom=Arvind.Yadav@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HSPPO6EL3TZ56BLV3USFHUDE6X2RKJMW
X-Message-ID-Hash: HSPPO6EL3TZ56BLV3USFHUDE6X2RKJMW
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:32:20 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HSPPO6EL3TZ56BLV3USFHUDE6X2RKJMW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA5LzI5LzIwMjIgMTE6NDggUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IEFtIDI3
LjA5LjIyIHVtIDE5OjI0IHNjaHJpZWIgQXJ2aW5kIFlhZGF2Og0KPj4gRmVuY2Ugc2lnbmFsaW5n
IG11c3QgYmUgZW5hYmxlZCB0byBtYWtlIHN1cmUgdGhhdA0KPj4gdGhlIGRtYV9mZW5jZV9pc19z
aWduYWxlZF9sb2NrZWQoKSBmdW5jdGlvbiBldmVyIHJldHVybnMgdHJ1ZS4NCj4+IFNpbmNlIGRy
aXZlcnMgYW5kIGltcGxlbWVudGF0aW9ucyBzb21ldGltZXMgbWVzcyB0aGlzIHVwLA0KPj4gdGhp
cyBlbnN1cmVzwqBjb3JyZWN0IGJlaGF2aW91ciB3aGVuIERNQUJVRl9ERUJVR19FTkFCTEVfU0lH
TkFMSU5HDQo+PiBpcyB1c2VkIGR1cmluZyBkZWJ1Z2dpbmcuDQo+PiBUaGlzIHNob3VsZCBtYWtl
IGFueSBpbXBsZW1lbnRhdGlvbiBidWdzIHJlc3VsdGluZyBpbiBub3QNCj4+IHNpZ25hbGVkIGZl
bmNlcyBtdWNoIG1vcmUgb2J2aW91cy4NCj4NCj4gQXJlIGFsbCBJR1QgdGVzdHMgbm93IHBhc3Np
bmcgd2l0aCB0aGlzPyBUaGF0IHdvdWxkIGJlIGEgYml0IA0KPiB1bmZvcnR1bmF0ZSBiZWNhdXNl
IGl0IG1lYW5zIHdlIHN0aWxsIGhhdmUgbWlzc2VkIHRoZSBidWcgaW4gZHJtX3N5bmNvYmouDQo+
DQpJR1QgaGFzIHRoZXNlIHRlc3QgY2FzZXMgcmVsYXRlZCB0byBzeW5jb2JqIChzeW5jb2JqX2Jh
c2ljLCANCnN5bmNvYmpfdGltZWxpbmUgYW5kIHN5bmNvYmpfd2FpdClhbmQgYWxsIGFyZSBwYXNz
aW5nLg0KDQpJIHdpbGwgY2hlY2sgc3luY29iaiBhbmQgbGV0IHlvdSBrbm93Lg0KDQp+QXJ2aW5k
DQoNCj4gQ2hyaXN0aWFuLg0KPg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEFydmluZCBZYWRhdiA8
QXJ2aW5kLllhZGF2QGFtZC5jb20+DQo+PiAtLS0NCj4+IMKgIGluY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggfCA1ICsrKysrDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+
Pg0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oDQo+PiBpbmRleCA3NzVjZGMwYjRmMjQuLjUxNTZkYzZiZTBhNiAxMDA2
NDQNCj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+ICsrKyBiL2luY2x1ZGUv
bGludXgvZG1hLWZlbmNlLmgNCj4+IEBAIC0zOTgsNiArMzk4LDExIEBAIHZvaWQgZG1hX2ZlbmNl
X2VuYWJsZV9zd19zaWduYWxpbmcoc3RydWN0IA0KPj4gZG1hX2ZlbmNlICpmZW5jZSk7DQo+PiDC
oCBzdGF0aWMgaW5saW5lIGJvb2wNCj4+IMKgIGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQo
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+PiDCoCB7DQo+PiArI2lmZGVmIENPTkZJR19ETUFC
VUZfREVCVUdfRU5BQkxFX1NJR05BTElORw0KPj4gK8KgwqDCoCBpZiAoIXRlc3RfYml0KERNQV9G
RU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZmVuY2UtPmZsYWdzKSkNCj4+ICvCoMKgwqDC
oMKgwqDCoCByZXR1cm4gZmFsc2U7DQo+PiArI2VuZGlmDQo+PiArDQo+PiDCoMKgwqDCoMKgIGlm
ICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0K
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiB0cnVlOw0KPg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
