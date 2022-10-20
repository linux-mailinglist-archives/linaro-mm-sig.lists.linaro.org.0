Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E946063A3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 16:57:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 40C343F5B7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Oct 2022 14:57:24 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2069.outbound.protection.outlook.com [40.107.244.69])
	by lists.linaro.org (Postfix) with ESMTPS id B296A3ED77
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Oct 2022 14:57:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=vT0b4ifk;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.69 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CC7bHLGZufbryWA7S3Knw6xyTfZlvdDFnG5qUo7/3EtJSjNnrHMV5w7x1F9vrUBTM0zbK8BW8JpGn/EG3mGzKLWXRZGNDwfPGxxZXykjRWOLCvkHnHEys2/bNe6HQHUxxMSl7SS5aLjAFKxxeI0zRALgE3MW3qY86cRpG244OhY6J5cU5O4nzLDO2gRADfdJ5zTMU8cAI5dJbM9n3l19ZFhg5bs335oXB8oxZ9eU2q9vHj4lrJF6S5DeFiTnxUXTUk2HZd/tbldtl/SmoNgANWkScL+8Kncg5GB5+qV4ya9tq/r0KfPyoi9bKitVVpnlI9Hi34rc3LHY9m9geZfesQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R/qXeMnAleWqS2WS7am6VJr8CUa4IWkslQXdq0QcRfE=;
 b=RtfINS3m4HMki2DcCVdA3DOMHjb1yuXj7Na1Xeaym9e3rPS09RK3PGrHifwSN4dNqnXnHBUE/swCv0BjA3ao5OKAU93JXi4S2eFTYwmN3pnkZwaWs7aBpGfsGUwnplAibe1Gto7ktxM0Dp1OkhtCGiv+a35vqSLf6mn55TXg0Sj0sqdYYhLXTKLjB98ahDc6jJP3kPY6Ai9UC6iownr+GFyhnp3R7DM4J4aa9lxP0qPJFoGQKtsFMYSQ8ojoN2RDBzzbDw/uR39ha5AGAFVJwN0bMVOHUwu+5vlCZzuan1bbBJ+54I1y/w8LIVBOv0JlKd8h/9VCl2LdBbjDly8ERw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R/qXeMnAleWqS2WS7am6VJr8CUa4IWkslQXdq0QcRfE=;
 b=vT0b4ifknNg6gtIsA8PzHxtk3D/Dy/QlGQw7pzy1JkNiXIuXZErioJsCXnUu30w0DQFwV72aYJzCZ1Vx/IZMb6pv+75KaKrl/+qxDu4UDkfIl5yS5EbXfLiY9qU69mIuXkDT5E4/QjmbV0loXTTF/FNvg+rJXBuebOxPY/ycZLI=
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by BY5PR12MB4115.namprd12.prod.outlook.com (2603:10b6:a03:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.35; Thu, 20 Oct
 2022 14:57:05 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::e6a5:94b4:d855:14b3]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::e6a5:94b4:d855:14b3%7]) with mapi id 15.20.5723.035; Thu, 20 Oct 2022
 14:57:05 +0000
Message-ID: <fd168175-71ce-2a9e-f8f1-1cc66e052235@amd.com>
Date: Thu, 20 Oct 2022 16:56:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <20221020121316.3946-3-christian.koenig@amd.com>
 <CAF6AEGsw=J6Y5jd0A5_hVg1A5BF87hz00Ggmbi8OtTjPJKMDGA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGsw=J6Y5jd0A5_hVg1A5BF87hz00Ggmbi8OtTjPJKMDGA@mail.gmail.com>
X-ClientProxiedBy: AS9PR06CA0094.eurprd06.prod.outlook.com
 (2603:10a6:20b:465::7) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB3589:EE_|BY5PR12MB4115:EE_
X-MS-Office365-Filtering-Correlation-Id: ced65d42-25ab-4a4e-8fc3-08dab2ab5a1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	P9w/VgOQ5LxJM+iWEmY8Re+mo7BppguhojwgWrhGxPyPk6HA9EF0KXJJmdoC7sgySgOfz1zKkZ1s7xoV1JL9YeMRbHCrcpYakF1hm1WwhBqcWLU2F7hYEl3Sp6Lx2lHehsQbxirFTyUS0AzPeRhyiewVkFBM/mVkPUqsJooIoKZ9OQ4azC81TB36B3WQUKCvokl0G77OBbvR00nYPWhuYFRsFCniE7crUkbJe2appOaEgg0Qd66q6ShjXc2GNCFI7vluvfLABlOg12xljB8mOts7P94iWBfnhbYy1qkfZuzNG8avXCxVARY9wwjr+XgE0JI4NqWLV/ssXWSZJXoMMqWpmLDoezY3/sgsi/uc6N1lFZsrpalgqzvUJdeysivvft7VCzb3Xiceh6+LlLOOVOf2gjXq48D6eT/5YiXzFfVN4CAwyz7pFv5yGZaACeXiaCpqnTVe7sBdU/eVS2VthFiie5IHiBP8DOZWkWhwdFGboACjx1sFwj/FOlhZUJKnOt/C21kZ2vyvycyCUqQG+kGORvzp1htE6SMtVhX7h2zOLzIDO2GVgqLf4IKwmbs+Mh60rz8yav5MbtgKMLYQKjd4mrsDljpZMTBP3BxjDBK54hMgwCXMhXBGTxiZxqU79AUZkEkgWW36HS9cZgb8lf7pYp2vsMu1pQfm5dW9pJTiRXr51DsJ0sBIEhfnZnm8Iy5ZXdQN7ArOoLqp4hYWaRBbozCPe8Ez6hobmkGysbWAY+ub6xWyU5FauMT5lXzPeW/FnxNlSTq6fF8qxScvmHyzVn32eLGtv0vWdUBDFSA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(136003)(366004)(39860400002)(376002)(451199015)(316002)(110136005)(6666004)(66574015)(8936002)(6512007)(2616005)(186003)(2906002)(5660300002)(7416002)(4326008)(8676002)(66476007)(66946007)(66556008)(86362001)(31696002)(83380400001)(41300700001)(6506007)(36756003)(53546011)(38100700002)(478600001)(31686004)(6486002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aVg0WkhCOS9iOXplZWFiSGdKelk0anl2cmhNWVZobCt1V0FLalAxNGZrRlpC?=
 =?utf-8?B?TVVVc2todTlkMW5neVN2ZEkyNlFxVElHYlBKS05jSUN5aGpkeDJpRXFYbEll?=
 =?utf-8?B?aDM5QkxVVmRZanRwRXA5OXNCdlJ2Tmt0ZXV0RlZ2aGZvaWxaMHlGUWlkVXJB?=
 =?utf-8?B?bWluQTBpWE13VXdaeCt5WDNDN1pKSktreUE1NnIxZklET09xTTBJTGcxUWpp?=
 =?utf-8?B?cXpST29oTWRyUEhRd001amt5a3B6MElNejlWUE5ZR0pjZm50WFJjVkFOK1hr?=
 =?utf-8?B?QkFQUW1Ka1FzRjdUa201TVB1cnFYVitYY0lmZDl5VWs0RW14cDYwUjR1SllY?=
 =?utf-8?B?TTJPc3YzTXFNZ0RBM3JTM3Nzck9GZHNQTzc1WGZ6LzhUWVhpMHdtV3FkZVU1?=
 =?utf-8?B?RkJZZnpNZTY5RGE0Q2poazg3d0REd0lWZDN4TEtSZHZjcTBpZ2pudEVBZHd1?=
 =?utf-8?B?bUlXQlRyV2daNjBJbFFNZjd1YWZJWlhkWUd4SlhJSDZXZncvdGVUZ0dMa1Q5?=
 =?utf-8?B?S3FiYUdCenIrM29GZ1FOQmpkQnA4RUxKbUxwYlNCTWZKOFAvUVpXZzRpWEJB?=
 =?utf-8?B?OGtBQzhEZ0xZT2daSUdhK1Bmc0p3RFFLSkhmRkpWVExsUUYyTHNmOVZ3OUVp?=
 =?utf-8?B?d1JORGU2bCs2b3lKaEF0TldwVE1IbG9jMHZDdTltTEpvbVdROVBjb1BzZU1G?=
 =?utf-8?B?dHhrejRvaFk2bUJCUzRFbXVqblNYOGFIeXJpVmwzQVF2a2VMQmZUd0h1N0N4?=
 =?utf-8?B?RUZiTFdhandDdjR2Sm85NDBta0RhZEFVMVRmdldlU3d5YzJ4QUtJakk2Y2Yx?=
 =?utf-8?B?L0txTUt4bzdZTTM1eWdaZzVjTkNpM3Jpa25heXdpU1U5QU44TmMrT0NkWlpT?=
 =?utf-8?B?b21QZ0ZVUkc3Nk9taldQK3FNcW5KYStYdkx4ZEREb1NHMXRNMkZqZnUzZTVR?=
 =?utf-8?B?UElOcTdEYkVYcm5weWRCOXhEaFRPWjVKeXlxVEdoL3lMLzM4eVJ6V0tYMWNB?=
 =?utf-8?B?QjNFeUpkMnZjUXdEYzUyT0R6d0JodjY3WTBOSUswTW9GQnlwSXF2WE8zM3NP?=
 =?utf-8?B?WjJncEVabEJXL2NsYWdoUlVqZFpyaE9OYVRvS3M5N3htREkyRGNlNFFvY2xL?=
 =?utf-8?B?M2NkZENZZitPdmN4RU83eUNTTG9pdnFVcElZL2xmaWlJSzVhbVM3ajVSR1h4?=
 =?utf-8?B?Z2FuMk1tSitLVysxQzRYT3ZjTU9TZDZ0R3ozN05QZGdnMDhwTWlnbXprNUIr?=
 =?utf-8?B?aWNzaTJLR3BjTjIwTk9qMVpJcUNlTzh1ZTJmMy9sNE9JQjBFVHBHMEp5K1Vp?=
 =?utf-8?B?SEV1ci9rUzErdVB1MHdWM2lHamZaWkpRaHNqK2VnZ1ZvaTVhK0krTUZrTjZY?=
 =?utf-8?B?MkN0Vzk4VDhPNUgzNEZPelM2dXZickp0aGU5SWtUQ0dVVmw0a2V2cnZlS1Bu?=
 =?utf-8?B?MkZiU1pjaDJLNE1oTVpKekppMjcvSDA2eWNRaGNOSVBLTFVOVjhFSE5MQzMy?=
 =?utf-8?B?WUZvQitrK2tGTll4b0x3bE1VK1ZhSXNIOFk4VlNNczd0V0drTEZWL3UrWmEr?=
 =?utf-8?B?dDhVYS83Rzg4YVBnQmZGbXhUU3pGR0h4cmpHUldyNE5NbDhEdWlPWFpVL0sx?=
 =?utf-8?B?Z25leGVLcFVKNU8vRHRsY0EvdFdCR2lDcmRBNjJ6aGNTeEJWamNlRmYrUUUv?=
 =?utf-8?B?Zi81QjBWN0JZTU83WjQ2THFibFlLMS9rMnV4RUwwNnFFVzdMK3J4QjhzZ0FP?=
 =?utf-8?B?Zy9xaGtxZXREMWtJdDd6aVJSdzZpSXhVc3p1Q3BEUExuYXZ0dU1OVWg3UVFQ?=
 =?utf-8?B?bmpYRHpTSVFodVZDQjVqZEFZL21aa1BOVmtHZXplRDhJUWpuckZiN3orYWZQ?=
 =?utf-8?B?K0QwbEtaazBmWlhMYlZxSnBzbk8yYXlxTzFQQmhPSVBIbldBZXJYb250aWtL?=
 =?utf-8?B?d0tKSXdGTFZSZDN0TzkvNlNQUGQvSkZXQVM2TXpMelhNMjVKdm1DSWRXWlRu?=
 =?utf-8?B?Z0M4U3BNRW01akZXWVI0cGhGNmZpWUxMMWxRUWIrSkdSdWF0YUlGMTVXdVo3?=
 =?utf-8?B?NTU0c1FwMHZqUlZKSDF4N2xYeUgyUkNHaTRMdDFBcHQ2dm9nRlBRT1VhV1NM?=
 =?utf-8?B?SzFMTFhFQU5CeUJxTmFZb0Jyd3o0OVVXUWYzdlE2TFVTeHQzeldhVWdsQVFh?=
 =?utf-8?Q?l1IW5TAgJV+0g5yx0xjTL7+ncBM5Lb+0AEI4QfE94s43?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ced65d42-25ab-4a4e-8fc3-08dab2ab5a1e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 14:57:05.2450
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2PmAZjDjL7l6i25eV+xG4kLQcgDwJZIRY9/KgN/ZzK5CzRBdV/q/P/BqLCCXvpMA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4115
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---------
X-Rspamd-Queue-Id: B296A3ED77
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[40.107.244.69:from];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.998];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.69:from];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: JMRWCDANDQFM6ABGXD5HJLDTOABFU3U7
X-Message-ID-Hash: JMRWCDANDQFM6ABGXD5HJLDTOABFU3U7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] drm/prime: set the dma_coherent flag for export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JMRWCDANDQFM6ABGXD5HJLDTOABFU3U7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMTAuMjIgdW0gMTY6NDMgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFRodSwgT2N0IDIw
LCAyMDIyIGF0IDU6MTMgQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2tvZW5pZy5sZWljaHR6dW1l
cmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPj4gV2hlbiBhIGRldmljZSBkcml2ZXIgaXMgc25vb3Bp
bmcgdGhlIENQVSBjYWNoZSBkdXJpbmcgYWNjZXNzIHdlIGFzc3VtZQ0KPj4gdGhhdCBhbGwgaW1w
b3J0ZXJzIG5lZWQgdG8gYmUgYWJsZSB0byBzbm9vcCB0aGUgQ1BVIGNhY2hlIGFzIHdlbGwuDQo+
Pg0KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KPj4gLS0tDQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyB8IDIgKysN
Cj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1l
LmMNCj4+IGluZGV4IDIwZTEwOWE4MDJhZS4uZDVjNzBiNmZlOGE0IDEwMDY0NA0KPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ByaW1lLmMNCj4+IEBAIC0yOCw2ICsyOCw3IEBADQo+Pg0KPj4gICAjaW5jbHVkZSA8bGludXgv
ZXhwb3J0Lmg+DQo+PiAgICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+PiArI2luY2x1ZGUg
PGxpbnV4L2RtYS1tYXAtb3BzLmg+DQo+PiAgICNpbmNsdWRlIDxsaW51eC9yYnRyZWUuaD4NCj4+
ICAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KPj4NCj4+IEBAIC04ODksNiArODkwLDcgQEAg
c3RydWN0IGRtYV9idWYgKmRybV9nZW1fcHJpbWVfZXhwb3J0KHN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqb2JqLA0KPj4gICAgICAgICAgICAgICAgICAuc2l6ZSA9IG9iai0+c2l6ZSwNCj4+ICAgICAg
ICAgICAgICAgICAgLmZsYWdzID0gZmxhZ3MsDQo+PiAgICAgICAgICAgICAgICAgIC5wcml2ID0g
b2JqLA0KPj4gKyAgICAgICAgICAgICAgIC5jb2hlcmVudCA9IGRldl9pc19kbWFfY29oZXJlbnQo
ZGV2LT5kZXYpLA0KPiBUbyBzZXQgdGhlIGNvaGVyZW50IGZsYWcgY29ycmVjdGx5LCBJIHRoaW5r
IEknZCBuZWVkIGEgd2F5IHRvIG92ZXJyaWRlDQo+IG9uIGEgcGVyIGJ1ZmZlciBiYXNpcywgc2lu
Y2UgY29oZXJlbmN5IGlzIGEgcHJvcGVydHkgb2YgdGhlIGdwdQ0KPiBwZ3RhYmxlcyAod2hpY2gg
aW4gdGhlIG1zbSBjYXNlIGlzIGFuIGltbXV0YWJsZSBwcm9wZXJ0eSBvZiB0aGUgZ2VtDQo+IG9i
amVjdCkuICBXZSBhbHNvIGhhdmUgc29tZSBhd2t3YXJkbmVzcyB0aGF0IGRybS0+ZGV2IGlzbid0
IGFjdHVhbGx5DQo+IHRoZSBHUFUsIHRoYW5rcyB0byB0aGUga2VybmVscyBkZXZpY2UgbW9kZWwg
c2VlaW5nIGEgY29sbGVjdGlvbiBvZg0KPiBvdGhlciBzbWFsbCBkZXZpY2VzIHNob2Vob3JuZWQg
aW50byBhIHNpbmdsZSBkcm0gZGV2aWNlIHRvIGZpdA0KPiB1c2Vyc3BhY2UncyB2aWV3IG9mIHRo
ZSB3b3JsZC4gIFNvIHJlbHlpbmcgb24gZHJtLT5kZXYgaXNuJ3QgcmVhbGx5DQo+IGdvaW5nIHRv
IGdpdmUgc2Vuc2libGUgcmVzdWx0cy4NCg0KWWVhaCwgSSd2ZSB0aGUgc2FtZSBwcm9ibGVtIGZv
ciBhbWRncHUgd2hlcmUgc29tZSBidWZmZXJzIGFyZSBzbm9vcGVkIA0Kd2hpbGUgb3RoZXJzIGFy
ZW4ndC4NCg0KQnV0IHRoaXMgc2hvdWxkIGJlIHVucHJvYmxlbWF0aWMgc2luY2UgdGhlIGZsYWcg
Y2FuIGFsd2F5cyBiZSBjbGVhcmVkIGJ5IA0KdGhlIGRyaXZlciBsYXRlciBvbiAoaXQganVzdCBj
YW4ndCBiZSBzZXQpLg0KDQpBZGRpdGlvbmFsIHRvIHRoYXQgSSd2ZSBqdXN0IG5vdGVkIHRoYXQg
YXJtYWRhLCBpOTE1LCBvbWFwIGFuZCB0ZWdyYSB1c2UgDQp0aGVpciBvd24gRE1BLWJ1ZiBleHBv
cnQgZnVuY3Rpb24uIE1TTSBjb3VsZCBkbyB0aGUgc2FtZSBhcyB3ZWxsIGlmIHRoZSANCmRldmlj
ZSBpdHNlbGYgaXMgbWFya2VkIGFzIG5vdCBjb2hlcmVudCB3aGlsZSBzb21lIGJ1ZmZlcnMgYXJl
IG1hcHBlZCANCmNhY2hlIGNvaGVyZW50Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IEkg
Z3Vlc3MgbXNtIGNvdWxkIGp1c3QgYnVyeSBvdXIgaGVhZHMgaW4gdGhlIHNhbmQgYW5kIGNvbnRp
bnVlIHRvIGRvDQo+IHRoaW5ncyB0aGUgd2F5IHdlIGhhdmUgYmVlbiAoYnVmZmVycyB0aGF0IGFy
ZSBtYXBwZWQgY2FjaGVkLWNvaGVyZW50DQo+IGFyZSBvbmx5IHNlbGYtc2hhcmVkKSBidXQgd291
bGQgYmUgbmljZSB0byBjYXRjaCBpZiB1c2Vyc3BhY2UgdHJpZWQgdG8NCj4gaW1wb3J0IG9uZSBp
bnRvIChmb3IgZXgpIHY0bDIuLg0KPg0KPiBCUiwNCj4gLVINCj4NCj4+ICAgICAgICAgICAgICAg
ICAgLnJlc3YgPSBvYmotPnJlc3YsDQo+PiAgICAgICAgICB9Ow0KPj4NCj4+IC0tDQo+PiAyLjI1
LjENCj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
