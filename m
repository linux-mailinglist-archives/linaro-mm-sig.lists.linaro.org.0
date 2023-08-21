Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5845A783035
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Aug 2023 20:22:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E94D43BC5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Aug 2023 18:22:26 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2041.outbound.protection.outlook.com [40.107.95.41])
	by lists.linaro.org (Postfix) with ESMTPS id 82FC83F200
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Aug 2023 18:22:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=td5wsx59;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.95.41 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nn6NZEsgSlwemVJV1m8W8K3+Hx5NrdWgxxysyYOEHbiw8ndg/jOAenV6KA9RGsbApJ4eW51aw2a+yZdhqNwansv8P9F540HWxNevl0Rd1uiiDEfrle0SjXZcYKqLT6sNVc/Q1kOcnJ5ilT0U3NXToJEbf3ZPzDfYb22osa1z1F4NwcA68yx1kQuJqWPtjuYiwSUebxx25d5mb1NDTA57IctH5hUvvTGYSvY+AOKsAHcqzOWWHChgWfcjZ+0vt+5FYXcAcd0NurKmpYnd8ywh1qV46y3LPaCBlVoJR+mTst7cWI/n/GrbkSbxsBfandb84PYuW7cKIElrZxsxeK6CJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xaFNWz/aAyeG1dDukOxCeSdR2IGQE/FxnlLNT0zRJ0Q=;
 b=ISXN1KkVZzY3i7dWsOLtWKULaRiSk/HuC6hNKX5/FpB0DAPjrpH/NKXVgABnGygd22hlpe9rp2tfrSid/FImSFh2osnAj8ZyCLOsAeXBlqNMLmfwsCmx9a8PyI/GiC/xiBDsAciBtJB9A4FPO8AxpxJnj/wK06Z1pdNoYpclS0Ipo2SotTQGSVsOEgYRdbERRldBU0LIm12PmsHogiJO40qUs8VZcfQpxZLuovHEXEF1RNpXgYTASIAeoGC46Qoyv6M01kAyXZcO8y0LsqCh2GuKhcmvr/Mqp2LJiERAan1o4KMFoUzTicYMZVtapLWbxQNlBZuNiVPVvRwemghIoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xaFNWz/aAyeG1dDukOxCeSdR2IGQE/FxnlLNT0zRJ0Q=;
 b=td5wsx59JG+wZ9PtANchVsTEQcQcqCPYyuZwvHUVLSq8RXizXAFtF1c9sN5tIrZPbKtzMQFNx3XW7ER2HAZjSecAZXGVqHSbbW54Roq0cB5MM6hC9+7P9IBwHqQs8l90ythQPUMdeBbQyqq0SQ0UHDOJSubTFjgTU4A5Y5vg5X8=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SA0PR12MB4447.namprd12.prod.outlook.com (2603:10b6:806:9b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 18:22:18 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::3d:c14:667a:1c81]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::3d:c14:667a:1c81%4]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 18:22:18 +0000
Message-ID: <d321918e-6f3b-4984-9163-427b579dc57e@amd.com>
Date: Mon, 21 Aug 2023 20:22:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Mirsad Todorovac <mirsad.todorovac@alu.unizg.hr>,
 linux-kernel@vger.kernel.org
References: <43668e49-c2c0-9979-9de3-b4904c2a8f82@alu.unizg.hr>
 <36b4e667-c287-1614-fe1f-5e772850d1fb@alu.unizg.hr>
 <b74a5cc3-8174-67f3-17ab-2e8a7d8fa1a6@amd.com>
 <5d83d59a-3c49-aae7-61ca-de9c2f3ba9c9@alu.unizg.hr>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <5d83d59a-3c49-aae7-61ca-de9c2f3ba9c9@alu.unizg.hr>
X-ClientProxiedBy: FR3P281CA0006.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::16) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SA0PR12MB4447:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c341d8f-ef08-4d36-3d22-08dba2738cf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	d0fVBhzD/NSz4ycugjPswXih/cXHVwgjJBoa8RU+6/JrAaUd676gLVumJLWdQPLJhWHh94DQLCJb+s9Y/EkplXxFXMlHGRP/DPqPue/bxsQ8ZFdRnvcOlnxNDxhrOUbdf1v82+VsviiMSt+fLiJRAb6V7HtDmhkdwmZCl0wqaH08a25V95TU9J9HeoX+vrVNqPzRv0ejUDMyNhLCmq5b5zxKRrpANowpEbdRiy59SS727KCStcIwHD5gow1nIxZ0RR0DQdS/EBv5S1umEq7xVQ9K4C96JdQOvQzvn8UpGdfD9BKJo8+DwtypKZJStQ/sGlt/oqaPgFBqJ7nzxjo1jv8+Mu04WjruRsUvlaS2snHs654S3qxePUhts4r2XdeJQ92qhQgqls3zeqnfH2vzD1jtvrnoZmkgCDBXvOwMrGorooTXfXLJ5CBdhrJ/+IOfnUwc7VZuXcpSI80qAB13AmZYWY68d0Q2yxoPnEzmIPmOTIkBJpfmCek7NKypeXv5M90inqpaqbILwHt4ibOud7L01W/AAxn1i2u8YnsGlhVbH7z+D016senbMNhBHGtOGvaLwV1XH9clZrLCj3fU7vHU0GlBtSP3JakeaIa4oFJ41vqy0iQaQvT5yKoh/a34cYrrI6KfhBFKs9rD8bhICA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(136003)(346002)(366004)(376002)(186009)(1800799009)(451199024)(54906003)(66946007)(66556008)(6512007)(66476007)(316002)(8936002)(8676002)(2616005)(4326008)(41300700001)(36756003)(478600001)(6666004)(38100700002)(6486002)(53546011)(6506007)(66574015)(2906002)(83380400001)(86362001)(31686004)(31696002)(5660300002)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?djNWdzVrVytCSStLcWJ5TDJoWHBzVHhCZmtub3RKeGU0ZFRUSHEvTFpsOGVq?=
 =?utf-8?B?THBMNDVIRjNkbjYwNkF6cGV6b1dSa1F6RWkxZFcxZW9Sb05KV3N4WlZKOGVQ?=
 =?utf-8?B?MzkzYmpkWEh2MnBGVnVLYXpzMHdSUlFYREZodUF5R2JoSlN6bWUwL0M4UjVZ?=
 =?utf-8?B?K3k2aWJaQ1c0MGxhVGNkZUt4aXRMRXpwbWROQXFyODAveGZXdVRlMm4yeEcz?=
 =?utf-8?B?RVR5TWE5VXNNLy9LTmRqczJWZmJXUGVVblVjS3BvRll1a1lEZ1ZkYWxERDhN?=
 =?utf-8?B?OGN1QjYrWVRabTdCeGgzc0hFb2lpQy85THlIN1E0NGNNMFlPV3R3L2l3ZXFJ?=
 =?utf-8?B?L1QwNU1jcXJXOGdOVTJCZ2V1VWJhd2x3Mm1FOGZobFdsaEJGV0daNHdwTk1T?=
 =?utf-8?B?NGVMdjcwVDBaMUdyNkVFMG5HYUxycVR2VERyNjNBWVBYaGxVdjBySnVZVkJj?=
 =?utf-8?B?M3dTQVBzQTdFaVdvZHJOQi8yUXYxQS8yNnZBSVdoY0VNeng3eTBXdzNacHo0?=
 =?utf-8?B?Nm1jQzRId3l1Y25xUExRUTFwa3FCREp3WmU5TGIyUlVBOHFvQVhCNGVMbVpo?=
 =?utf-8?B?OGxKbitHbDUwQjBmbU1qZjJXU1RSRjgvRk14K1RLZlZOSGgzOFJ6dGtqT0dX?=
 =?utf-8?B?bkdGbzU3WkNhWHh2eHBVWFNSVG1pRk9WcmdLd2tocmJ5ZU9keDQ4aHdVQnFS?=
 =?utf-8?B?bGMyNDlXZ2hNMHpnUzV6YzhtcFFuUjJmbE0vMU51Y3FEV3E5b0U4RysweUJs?=
 =?utf-8?B?eUMzcjJPb0J2TVU0YW1Eb3lyT2VhbVlCTHJmWkV1N21QRVVqWXpYVGRLcXYv?=
 =?utf-8?B?Njh2eWhaaUdSRnpVVHJ0cG1BN1JNZUtNNnIzYkx5ZHpodGNoc0RnbFB3eEF2?=
 =?utf-8?B?eGtJZWg3ZE11eG9lQmhid2VBbSs3MjRUdVFGVFVydlF4SVBUS2NSbkxxVzJN?=
 =?utf-8?B?T3hWaUtoRnN4YlBRdG04M2xQTFZoVWV3aVdVWkRScEUzakZRY2FSWU45Z1ps?=
 =?utf-8?B?dEl2bmpqSVgrQjJpZ01mKzgzbVo4UGtJaHR1cHg1SkIxNHNOM2FDcitwUTFP?=
 =?utf-8?B?R2h4RUgyUkY0R01tV1dRV2lOdVNSTXlmRzdNdnVoeEozR1lYSU81OTdXV1FK?=
 =?utf-8?B?RGhQY1BzZ2RjcmQvTjZlSkR5b2kxV3hMK0FQa2hPNGJGS3BaQWJzZERWVU1I?=
 =?utf-8?B?dklLRTZid2R1T2RXZ3VSb20ySU9RYXdCdWRRVW5VYjdDaERocHJoSytMeS91?=
 =?utf-8?B?L0w1TDM3QnlUT1MwSjFkdmRoYWFoalNiRXRlQ29nblk3Y1pGZXkvSmtMY0R6?=
 =?utf-8?B?NHRtWGxJd0RrRjlPZURuenI0alZZd2ZYUW02U1QyZlZkaGN0ZU1OcEdWakN4?=
 =?utf-8?B?aFMyRHd2OEprUmtDdkZnOG5hQ0U1eDc2Qmo2alJhSkRsb0sza2U0ZzFOMm9m?=
 =?utf-8?B?WDRWWHBySFVkcEpKL01YR0FnSHUxUkZJOC9OeHpiNTk4T3p4T2JjdzlFTmVZ?=
 =?utf-8?B?TE5oV2JwYW9mZWNTc0YwVGZWdSs3anVHcHpKN0VsNUtmdUlxa3gxZStqOU5y?=
 =?utf-8?B?OUFUQmRjNXlMQjIvdFB1Q0lpYUtVL1FaZVhyK0l4YkxhS2xnQmxvcjYrTzVP?=
 =?utf-8?B?S25NMnZmd1Z3NWFiWjlzTXZURXo0WExpUFNueTNQeFhpTFd2Z08yVTk1SHlE?=
 =?utf-8?B?LzlEMHB6eTdhWHFHS2t4eEdudkFmUG9PWEhzM1oxTXNUd25FcHpRRFBwQW5Y?=
 =?utf-8?B?aEQxdVN4eEdZSHJvUmk5WG96ZGg2SnNQYXVKYVhQVjRhUVVWSWJlazNKd3hv?=
 =?utf-8?B?cXR0YzBaS2RYTW1YSXZURUk1L1FOaUs2cU1CTG5SVjlsU1EvblpNN01Ka0JB?=
 =?utf-8?B?STYzdEVuSW1tcDNmcDU5L2tHQXh4bXlYamZtcU0xa1VJblVlNXQxZjVmeGlM?=
 =?utf-8?B?OGJSbkxic3k0V3lZTmlvNm4wY29DYjIvc3poU29GMjlpUkN4RUVOYVAreVFl?=
 =?utf-8?B?QVF0NjNPTUxMaXRQU3VEdHFGSnJuOG5SNUJXdDg2d2RTdDZpZDl3RThrbU54?=
 =?utf-8?B?c0tjd2VBZ1ZENzRkQ0tIZTY4NHdMd0J2TDVna2owbGY4WTVsUjZuLzJtQ3kx?=
 =?utf-8?Q?gg4zIdk8TBKMzdWq9BwFR1Gif?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c341d8f-ef08-4d36-3d22-08dba2738cf7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 18:22:18.0858
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cMYVtrZp7+SJcL986NhL2Z4G/WK38Uu5hxUJ+axSVT027cNIvtKzK1lCozm2pzRe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4447
X-Rspamd-Queue-Id: 82FC83F200
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.95.41:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WTIQ5NGFLQOVTKA4AHVVNIEX4HRKIUCF
X-Message-ID-Hash: WTIQ5NGFLQOVTKA4AHVVNIEX4HRKIUCF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [BUG] KCSAN: data-race in drm_sched_entity_is_ready [gpu_sched] / drm_sched_entity_push_job [gpu_sched]
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WTIQ5NGFLQOVTKA4AHVVNIEX4HRKIUCF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SSdtIG5vdCBzdXJlIGFib3V0IHRoYXQuDQoNCk9uIHRoZSBvbmUgaGFuZCBpdCBtaWdodCBnZW5l
cmF0ZSBzb21lIG5vaXNlLiBJIGtub3cgdG9ucyBvZiBjYXNlcyB3aGVyZSANCmxvZ2ljIGlzOiBP
ayBpZiB3ZSBzZWUgdGhlIHVwZGF0ZWQgdmFsdWUgaW1tZWRpYXRlbHkgaXQgd2lsbCBvcHRpbWl6
ZSANCnRoaW5ncywgYnV0IGlmIG5vdCBpdCdzIHVucHJvYmxlbWF0aWMgYmVjYXVzZSB0aGVyZSBp
cyBhbm90aGVyIGNoZWNrIA0KYWZ0ZXIgdGhlIG5leHQgbWVtb3J5IGJhcnJpZXIuDQoNCk9uIHRo
ZSBvdGhlciBoYW5kIHdlIHByb2JhYmx5IGhhdmUgY2FzZXMgd2hlcmUgdGhpcyBpcyBub3QgY29y
cmVjdGx5IA0KaW1wbGVtZW50ZWQuIFNvIGRvdWJsZSBjaGVja2luZyB0aG9zZSB3b3VsZCBtb3N0
IGxpa2UgYmUgZ29vZCBpZGVhLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQpBbSAyMS4wOC4y
MyB1bSAxNjoyOCBzY2hyaWViIE1pcnNhZCBUb2Rvcm92YWM6DQo+IEhpIENocmlzdGlhbiwNCj4N
Cj4gVGhhbmsgeW91IGZvciB0aGUgdXBkYXRlLg0KPg0KPiBTaG91bGQgSSBjb250aW51ZSByZXBv
cnRpbmcgd2hhdCBLQ1NBTiBnaXZlcz8gSSB3aWxsIHRyeSB0byBmaWx0ZXIgDQo+IHRoZXNlIHRv
IHNhdmUgeW91ciB0aW1lIGZvcg0KPiBldmFsdWF0aW9uIC4uLg0KPg0KPiBLaW5kIHJlZ2FyZHMs
DQo+IE1pcnNhZA0KPg0KPiBPbiA4LzIxLzIzIDE1OjIwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPj4gSGkgTWlyc2FkLA0KPj4NCj4+IHdlbGwgdGhpcyBpcyBhIGZhbHNlIHBvc2l0aXZlLg0K
Pj4NCj4+IFRoYXQgZHJtX3NjaGVkX2VudGl0eV9pc19yZWFkeSgpIGRvZXNuJ3Qgc2VlIHRoZSBk
YXRhIHdyaXR0ZW4gYnkgDQo+PiBkcm1fc2NoZWRfZW50aXR5X3B1c2hfam9iKCkgaXMgcGFydCBv
ZiB0aGUgbG9naWMgaGVyZS4NCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+
IEFtIDE4LjA4LjIzIHVtIDE1OjQ0IHNjaHJpZWIgTWlyc2FkIFRvZG9yb3ZhYzoNCj4+PiBPbiA4
LzE3LzIzIDIxOjU0LCBNaXJzYWQgVG9kb3JvdmFjIHdyb3RlOg0KPj4+PiBIaSwNCj4+Pj4NCj4+
Pj4gVGhpcyBpcyB5b3VyIGZyaWVuZGx5IGJ1ZyByZXBvcnRlci4NCj4+Pj4NCj4+Pj4gVGhlIGVu
dmlyb25tZW50IGlzIHZhbmlsbGEgdG9ydmFsZHMgdHJlZSBrZXJuZWwgb24gVWJ1bnR1IDIyLjA0
IExUUyANCj4+Pj4gYW5kIGEgUnl6ZW4gNzk1MFggYm94Lg0KPj4+Pg0KPj4+PiBQbGVhc2UgZmlu
ZCBhdHRhY2hlZCB0aGUgY29tcGxldGUgZG1lc2cgb3V0cHV0IGZyb20gdGhlIHJpbmcgYnVmZmVy
IA0KPj4+PiBhbmQgbHNodyBvdXRwdXQuDQo+Pj4+DQo+Pj4+IE5PVEU6IFRoZSBrZXJuZWwgcmVw
b3J0cyB0YWludGVkIGtlcm5lbCwgYnV0IHRvIG15IGtub3dsZWRnZSB0aGVyZSANCj4+Pj4gYXJl
IG5vIHByb3ByaWV0YXJ5IChHKSBtb2R1bGVzLA0KPj4+PiDCoMKgwqDCoMKgwqAgYnV0IHRoaXMg
dGFpbnQgaXMgdHVybmVkIG9uIGJ5IHRoZSBwcmV2aW91cyBidWdzLg0KPj4+Pg0KPj4+PiBkbWVz
ZyBleGNlcnB0Og0KPj4+Pg0KPj4+PiBbIDg3OTEuODY0NTc2XSANCj4+Pj4gPT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+
Pj4+IFsgODc5MS44NjQ2NDhdIEJVRzogS0NTQU46IGRhdGEtcmFjZSBpbiBkcm1fc2NoZWRfZW50
aXR5X2lzX3JlYWR5IA0KPj4+PiBbZ3B1X3NjaGVkXSAvIGRybV9zY2hlZF9lbnRpdHlfcHVzaF9q
b2IgW2dwdV9zY2hlZF0NCj4+Pj4NCj4+Pj4gWyA4NzkxLjg2NDc3Nl0gd3JpdGUgKG1hcmtlZCkg
dG8gMHhmZmZmOWI3NDQ5MWI3YzQwIG9mIDggYnl0ZXMgYnkgDQo+Pj4+IHRhc2sgMzgwNyBvbiBj
cHUgMTg6DQo+Pj4+IFsgODc5MS44NjQ3ODhdwqAgZHJtX3NjaGVkX2VudGl0eV9wdXNoX2pvYisw
eGY0LzB4MmEwIFtncHVfc2NoZWRdDQo+Pj4+IFsgODc5MS44NjQ4NTJdwqAgYW1kZ3B1X2NzX2lv
Y3RsKzB4Mzg4OC8weDNkZTAgW2FtZGdwdV0NCj4+Pj4gWyA4NzkxLjg2ODczMV3CoCBkcm1faW9j
dGxfa2VybmVsKzB4MTI3LzB4MjEwIFtkcm1dDQo+Pj4+IFsgODc5MS44NjkyMjJdwqAgZHJtX2lv
Y3RsKzB4MzhmLzB4NmYwIFtkcm1dDQo+Pj4+IFsgODc5MS44Njk3MTFdwqAgYW1kZ3B1X2RybV9p
b2N0bCsweDdlLzB4ZTAgW2FtZGdwdV0NCj4+Pj4gWyA4NzkxLjg3MzY2MF3CoCBfX3g2NF9zeXNf
aW9jdGwrMHhkMi8weDEyMA0KPj4+PiBbIDg3OTEuODczNjc2XcKgIGRvX3N5c2NhbGxfNjQrMHg1
OC8weDkwDQo+Pj4+IFsgODc5MS44NzM2ODhdwqAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2Zy
YW1lKzB4NzMvMHhkZA0KPj4+Pg0KPj4+PiBbIDg3OTEuODczNzEwXSByZWFkIHRvIDB4ZmZmZjli
NzQ0OTFiN2M0MCBvZiA4IGJ5dGVzIGJ5IHRhc2sgMTExOSANCj4+Pj4gb24gY3B1IDI3Og0KPj4+
PiBbIDg3OTEuODczNzIyXcKgIGRybV9zY2hlZF9lbnRpdHlfaXNfcmVhZHkrMHgxNi8weDUwIFtn
cHVfc2NoZWRdDQo+Pj4+IFsgODc5MS44NzM3ODZdwqAgZHJtX3NjaGVkX3NlbGVjdF9lbnRpdHkr
MHgxYzcvMHgyMjAgW2dwdV9zY2hlZF0NCj4+Pj4gWyA4NzkxLjg3Mzg0OV3CoCBkcm1fc2NoZWRf
bWFpbisweGQyLzB4NTAwIFtncHVfc2NoZWRdDQo+Pj4+IFsgODc5MS44NzM5MTJdwqAga3RocmVh
ZCsweDE4Yi8weDFkMA0KPj4+PiBbIDg3OTEuODczOTI0XcKgIHJldF9mcm9tX2ZvcmsrMHg0My8w
eDcwDQo+Pj4+IFsgODc5MS44NzM5MzldwqAgcmV0X2Zyb21fZm9ya19hc20rMHgxYi8weDMwDQo+
Pj4+DQo+Pj4+IFsgODc5MS44NzM5NTVdIHZhbHVlIGNoYW5nZWQ6IDB4MDAwMDAwMDAwMDAwMDAw
MCAtPiAweGZmZmY5Yjc1MGViY2ZjMDANCj4+Pj4NCj4+Pj4gWyA4NzkxLjg3Mzk3MV0gUmVwb3J0
ZWQgYnkgS2VybmVsIENvbmN1cnJlbmN5IFNhbml0aXplciBvbjoNCj4+Pj4gWyA4NzkxLjg3Mzk4
MF0gQ1BVOiAyNyBQSUQ6IDExMTkgQ29tbTogZ2Z4XzAuMC4wIFRhaW50ZWQ6IA0KPj4+PiBHwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIEwgNi41LjAtcmM2LW5ldC1jZmcta2NzYW4tMDAwMzgtZzE2
OTMxODU5YTY1MCAjMzUNCj4+Pj4gWyA4NzkxLjg3Mzk5NF0gSGFyZHdhcmUgbmFtZTogQVNSb2Nr
IFg2NzBFIFBHIExpZ2h0bmluZy9YNjcwRSBQRyANCj4+Pj4gTGlnaHRuaW5nLCBCSU9TIDEuMjEg
MDQvMjYvMjAyMw0KPj4+PiBbIDg3OTEuODc0MDAyXSANCj4+Pj4gPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+Pj4NCj4+
PiBQLlMuDQo+Pj4NCj4+PiBBY2NvcmRpbmcgdG8gTXIuIEhlbydzIGluc3RydWN0aW9ucywgSSBh
bSBhZGRpbmcgdGhlIHVud291bmQgdHJhY2UgDQo+Pj4gaGVyZToNCj4+Pg0KPj4+IFsgMTg3OS43
MDY1MThdIA0KPj4+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQ0KPj4+IFsgMTg3OS43MDY2MTZdIEJVRzogS0NTQU46IGRh
dGEtcmFjZSBpbiBkcm1fc2NoZWRfZW50aXR5X2lzX3JlYWR5IA0KPj4+IFtncHVfc2NoZWRdIC8g
ZHJtX3NjaGVkX2VudGl0eV9wdXNoX2pvYiBbZ3B1X3NjaGVkXQ0KPj4+DQo+Pj4gWyAxODc5Ljcw
NjczN10gd3JpdGUgKG1hcmtlZCkgdG8gMHhmZmZmOGYzNjcyNzQ4YzQwIG9mIDggYnl0ZXMgYnkg
DQo+Pj4gdGFzayA0MDg3IG9uIGNwdSAxMDoNCj4+PiBbIDE4NzkuNzA2NzQ4XSBkcm1fc2NoZWRf
ZW50aXR5X3B1c2hfam9iIA0KPj4+ICguL2luY2x1ZGUvZHJtL3Nwc2NfcXVldWUuaDo3NCANCj4+
PiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jOjU3NCkgZ3B1X3NjaGVk
DQo+Pj4gWyAxODc5LjcwNjgwOF0gYW1kZ3B1X2NzX2lvY3RsIA0KPj4+IChkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYzoxMzc1IA0KPj4+IGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9jcy5jOjE0NjkpIGFtZGdwdQ0KPj4+IFsgMTg3OS43MTA1ODldIGRybV9p
b2N0bF9rZXJuZWwgKGRyaXZlcnMvZ3B1L2RybS9kcm1faW9jdGwuYzo3ODgpIGRybQ0KPj4+IFsg
MTg3OS43MTEwNjhdIGRybV9pb2N0bCAoZHJpdmVycy9ncHUvZHJtL2RybV9pb2N0bC5jOjg5Mikg
ZHJtDQo+Pj4gWyAxODc5LjcxMTU1MV0gYW1kZ3B1X2RybV9pb2N0bCANCj4+PiAoZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jOjI3NDgpIGFtZGdwdQ0KPj4+IFsgMTg3OS43
MTUzMTldIF9feDY0X3N5c19pb2N0bCAoZnMvaW9jdGwuYzo1MSBmcy9pb2N0bC5jOjg3MCANCj4+
PiBmcy9pb2N0bC5jOjg1NiBmcy9pb2N0bC5jOjg1NikNCj4+PiBbIDE4NzkuNzE1MzM0XSBkb19z
eXNjYWxsXzY0IChhcmNoL3g4Ni9lbnRyeS9jb21tb24uYzo1MCANCj4+PiBhcmNoL3g4Ni9lbnRy
eS9jb21tb24uYzo4MCkNCj4+PiBbIDE4NzkuNzE1MzQ1XSBlbnRyeV9TWVNDQUxMXzY0X2FmdGVy
X2h3ZnJhbWUgDQo+Pj4gKGFyY2gveDg2L2VudHJ5L2VudHJ5XzY0LlM6MTIwKQ0KPj4+DQo+Pj4g
WyAxODc5LjcxNTM2NV0gcmVhZCB0byAweGZmZmY4ZjM2NzI3NDhjNDAgb2YgOCBieXRlcyBieSB0
YXNrIDEwOTggb24gDQo+Pj4gY3B1IDExOg0KPj4+IFsgMTg3OS43MTUzNzZdIGRybV9zY2hlZF9l
bnRpdHlfaXNfcmVhZHkgDQo+Pj4gKGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50
aXR5LmM6MTM0KSBncHVfc2NoZWQNCj4+PiBbIDE4NzkuNzE1NDM1XSBkcm1fc2NoZWRfc2VsZWN0
X2VudGl0eSANCj4+PiAoZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmM6MjQ4
IA0KPj4+IGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jOjg5MykgZ3B1X3Nj
aGVkDQo+Pj4gWyAxODc5LjcxNTQ5NV0gZHJtX3NjaGVkX21haW4gDQo+Pj4gKGRyaXZlcnMvZ3B1
L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jOjEwMTkpIGdwdV9zY2hlZA0KPj4+IFsgMTg3OS43
MTU1NTRdIGt0aHJlYWQgKGtlcm5lbC9rdGhyZWFkLmM6Mzg5KQ0KPj4+IFsgMTg3OS43MTU1NjNd
IHJldF9mcm9tX2ZvcmsgKGFyY2gveDg2L2tlcm5lbC9wcm9jZXNzLmM6MTQ1KQ0KPj4+IFsgMTg3
OS43MTU1NzVdIHJldF9mcm9tX2ZvcmtfYXNtIChhcmNoL3g4Ni9lbnRyeS9lbnRyeV82NC5TOjMx
MikNCj4+Pg0KPj4+IFsgMTg3OS43MTU1OTBdIHZhbHVlIGNoYW5nZWQ6IDB4MDAwMDAwMDAwMDAw
MDAwMCAtPiAweGZmZmY4ZjM2MDY2M2RjMDANCj4+Pg0KPj4+IFsgMTg3OS43MTU2MDRdIFJlcG9y
dGVkIGJ5IEtlcm5lbCBDb25jdXJyZW5jeSBTYW5pdGl6ZXIgb246DQo+Pj4gWyAxODc5LjcxNTYx
Ml0gQ1BVOiAxMSBQSUQ6IDEwOTggQ29tbTogZ2Z4XzAuMC4wIFRhaW50ZWQ6IA0KPj4+IEfCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgTMKgwqDCoMKgIDYuNS4wLXJjNisgIzQ3DQo+Pj4gWyAxODc5
LjcxNTYyNF0gSGFyZHdhcmUgbmFtZTogQVNSb2NrIFg2NzBFIFBHIExpZ2h0bmluZy9YNjcwRSBQ
RyANCj4+PiBMaWdodG5pbmcsIEJJT1MgMS4yMSAwNC8yNi8yMDIzDQo+Pj4gWyAxODc5LjcxNTYz
MV0gDQo+Pj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09DQo+Pj4NCj4+PiBJdCBzZWVtcyB0aGF0IHRoZSBsaW5lIGluIHF1
ZXN0aW9uIG1pZ2h0IGJlOg0KPj4+DQo+Pj4gwqDCoMKgwqBmaXJzdCA9IHNwc2NfcXVldWVfcHVz
aCgmZW50aXR5LT5qb2JfcXVldWUsIA0KPj4+ICZzY2hlZF9qb2ItPnF1ZXVlX25vZGUpOw0KPj4+
DQo+Pj4gd2hpY2ggZXhwYW5kcyB0bzoNCj4+Pg0KPj4+IHN0YXRpYyBpbmxpbmUgYm9vbCBzcHNj
X3F1ZXVlX3B1c2goc3RydWN0IHNwc2NfcXVldWUgKnF1ZXVlLCBzdHJ1Y3QgDQo+Pj4gc3BzY19u
b2RlICpub2RlKQ0KPj4+IHsNCj4+PiDCoMKgwqDCoHN0cnVjdCBzcHNjX25vZGUgKip0YWlsOw0K
Pj4+DQo+Pj4gwqDCoMKgwqBub2RlLT5uZXh0ID0gTlVMTDsNCj4+Pg0KPj4+IMKgwqDCoMKgcHJl
ZW1wdF9kaXNhYmxlKCk7DQo+Pj4NCj4+PiDCoMKgwqDCoHRhaWwgPSAoc3RydWN0IHNwc2Nfbm9k
ZSAqKilhdG9taWNfbG9uZ194Y2hnKCZxdWV1ZS0+dGFpbCwgDQo+Pj4gKGxvbmcpJm5vZGUtPm5l
eHQpOw0KPj4+IMKgwqDCoMKgV1JJVEVfT05DRSgqdGFpbCwgbm9kZSk7DQo+Pj4gwqDCoMKgwqBh
dG9taWNfaW5jKCZxdWV1ZS0+am9iX2NvdW50KTsNCj4+Pg0KPj4+IMKgwqDCoMKgLyoNCj4+PiDC
oMKgwqDCoCAqIEluIGNhc2Ugb2YgZmlyc3QgZWxlbWVudCB2ZXJpZnkgbmV3IG5vZGUgd2lsbCBi
ZSB2aXNpYmxlIHRvIA0KPj4+IHRoZSBjb25zdW1lcg0KPj4+IMKgwqDCoMKgICogdGhyZWFkIHdo
ZW4gd2UgcGluZyB0aGUga2VybmVsIHRocmVhZCB0aGF0IHRoZXJlIGlzIG5ldyB3b3JrIA0KPj4+
IHRvIGRvLg0KPj4+IMKgwqDCoMKgICovDQo+Pj4gwqDCoMKgwqBzbXBfd21iKCk7DQo+Pj4NCj4+
PiDCoMKgwqDCoHByZWVtcHRfZW5hYmxlKCk7DQo+Pj4NCj4+PiDCoMKgwqDCoHJldHVybiB0YWls
ID09ICZxdWV1ZS0+aGVhZDsNCj4+PiB9DQo+Pj4NCj4+PiBBY2NvcmRpbmcgdG8gdGhlIG1hbnVh
bCwgcHJlZW1wdF9kaXNhYmxlKCkgb25seSBndWFyYW50ZWVkIGV4Y2x1c2lvbiANCj4+PiBvbiBh
IHNpbmdsZSBDUFUvY29yZS90aHJlYWQsIHNvDQo+Pj4gd2UgbWlnaHQgYmUgcGxhZ3VlZCB3aXRo
IHRoZSBzbG93LCBvbGQgZmFzaGlvbmVkIGxvY2tpbmcgdW5sZXNzIA0KPj4+IGFueW9uZSBoYWQg
YSBiZXR0ZXIgaWRlYS4NCj4+Pg0KPj4+IEJlc3QgcmVnYXJkcywNCj4+PiBNaXJzYWQgVG9kb3Jv
dmFjDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
