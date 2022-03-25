Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 155E04E779E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 16:28:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 435AB3ED42
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 15:28:15 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2083.outbound.protection.outlook.com [40.107.94.83])
	by lists.linaro.org (Postfix) with ESMTPS id B602B3ED42
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Mar 2022 15:28:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BDYo4ZWVf36KYUuLWrd2g30jufhabSmSPtzN+k00W1OEdGCl0HzAlk/OBFWw4JyMQ7+CNdJ+kR65cI0VRXI6s+Ex5AXlJN59C5q/Svg/lNR+pE4Eryi3LKBZXOfR9nd/9mesQAhgjApY83cerHsXFc7xeN5yP00MpSVcSfOj81GTHb5FaAO4zGEQJqpgf1ywTlvP+QYwdlsU9dwBxef7o21DllUgbT7strc5UZb57CBCIHcwwcArkgL3Yy2RJ7qxJ7OxwK9lA9D67cR4xjui1KBt0YOqay23y107XG7pquRelB06xHbg9qmF1gfmypcIDiY78ea6qp774KdCAtdnYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WXFISOicS62zp0mNpmYwukX8IzyvnslR55UBBeees3c=;
 b=HFluWTXwGF4WdpqiAL0Xp8nzZnksJ32+STHXiTDv0P79tIs/it9LsVtsX61XVyrx6IgCMxcYnwQ8nP6OvIyoFcOiqqwcKkiHOa3QdixMOaQu6dR+E09gYlQI/nDmv/pcdXySPFan/rL91+DEOfPnSRIb1nrfvVEwfPefZVkGBH/BZfLDDtcBuvulZaHy5EvyZMTaXH3YV+fRI2AQAPHhvvu9uakkPawbXKvTsScjPkyWS8axkT2fhwBfgb2NXbHIG9TMFIXMuA097+TMBGnr11EFm0KWCNTbeWicfrrVf+1XI0LJytk9Tl4E82YQ9Ho80j7MnXhp5tTCj2ivlhW6Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WXFISOicS62zp0mNpmYwukX8IzyvnslR55UBBeees3c=;
 b=FeT5GnoWcDHGNPWfJt2xwMf4rf1q2qVi+zuE7KpJwT0hLpRV8MrdHzcfbHs5WCKK6G5MRG3sDlwTb/lFFY3JhBqjWZzY3RfJd3KV0HFN3hCQ3PrWAgWFpJJVIbaGpU42nznCYytLH2X0HrYoW4jRm37gQOFe2INuAt0TGQSLFWU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CY4PR1201MB0005.namprd12.prod.outlook.com (2603:10b6:903:d1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Fri, 25 Mar
 2022 15:28:07 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185%6]) with mapi id 15.20.5102.017; Fri, 25 Mar 2022
 15:28:07 +0000
Message-ID: <35cc3bd5-c0ab-0bd1-9603-4971234fbcd6@amd.com>
Date: Fri, 25 Mar 2022 16:28:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220311110244.1245-1-christian.koenig@amd.com>
 <Yj3e0QjbnPoG7n4I@intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <Yj3e0QjbnPoG7n4I@intel.com>
X-ClientProxiedBy: AM5PR04CA0011.eurprd04.prod.outlook.com
 (2603:10a6:206:1::24) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 194f5d74-ebdc-4fa9-d60f-08da0e740fdf
X-MS-TrafficTypeDiagnostic: CY4PR1201MB0005:EE_
X-Microsoft-Antispam-PRVS: 
	<CY4PR1201MB00056EC32C2A69377D0EB286831A9@CY4PR1201MB0005.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hQzK8QcJ2YaLQrMxua5vZ/Yk4bp0nxgQfTeJLLiXhtfw2xD1tDjWeffIFy/8qEI59+qriQuAsSgInZx26BRSN3MQ3oTgjwaPXtMofDYtFvLOM8Njmo49UQVsq+OTJfp7HqolWLKLg7OfQBoWSr/nXDfr4F4icdTKPlHaoKpxA7NwJwdvJALTEbg+PzF5kAgXbnG6WT2LDMxxCmuF9ET+EK5WOoV7RsVMY2CRX5RGYcEaR+XoeibNicEYgxnWBZFXT9JxG3hztO9+BcEZ0sq4C4aVcaR2j2W9QpKIlvG5uuX9xfqZdCNx6MLOV9oooXHlQAUcFpXpO9AD+zEy7IgsarzRvcZuJSu9ApsHwndSXyM/JNqdQdQmzzyhrcnZxYT/YBnsoh70q4Qtau0j4PRoeYAw6KsPBjd5nAR5HVvtIkgTiXJctXVM9+w39VtfRUZnzaTVaETQiOtgTW08KN3/4fU4+P4cI3PBtTxidgeOkRsybNh+HssuRz7Ugpz8iimDQNTI/ru4wWQ723/YMUdGGCVYYYxyOGcw9nxaigJPNUPI3BKQTwxdHRscAGu5G/tfoUETfufk2kBG6y7CdemB1SynipP3XS1bIfCXcPUd7CH9xcunuEC3fLET2EZisI13KbzwjeO2S2cs0sk6SSZm+q2Tve9MD8Rpgix4qdIhi+fOVMCTiUolpD+nwve0UyB+nOdXhd8g1KcLbb3Ryo6vXvG4TUa+TRqz0s/xI960Qcg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(186003)(2616005)(6512007)(6506007)(2906002)(83380400001)(38100700002)(316002)(8936002)(110136005)(4326008)(8676002)(66574015)(6486002)(36756003)(54906003)(5660300002)(31686004)(45080400002)(508600001)(31696002)(66946007)(86362001)(66476007)(66556008)(6666004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TVBHTW5iQTZrcEhWcXJ0ckVqRzRCQ1NnWnEzQXdwY0FZMnRFQmIxVG5YSldO?=
 =?utf-8?B?SHM4cDlONlJmcjlNNjFwcVBZZFAyM3IzTVpEbkJPTFVQMzJ4QklaTDZSVm5M?=
 =?utf-8?B?UnJFV25PWmV0TDVydTYrTTJ1aGd6MDRZbkFMVTk3WkN2U3BNZmVnVzIzN2Ro?=
 =?utf-8?B?azVHQm8zZWdVT1pQQUVESDFCcVZmaGFWeDNxZGFlTEZwTlh5aDlXSWlvQXph?=
 =?utf-8?B?bUNwWDhnMlFsMFRxc2R5Vll5aWo5ZWpZRmNnQklUSzdtTyswV1BxTHQ1L1BD?=
 =?utf-8?B?NmUwV2VaNnJXVXJUN29BU1dFTDM5NHl2bHpkYit3bVpaUVFkQjFiaXVGeHRZ?=
 =?utf-8?B?ZmQxbUVwTENMZzdXVHNpN0FxeVdNR2k3VTdhYklXMHZ6RGx6eWxYQU9WSUpq?=
 =?utf-8?B?SzdkbFRuTEpxdSthMlc0Um0ydWhFRTJ6OG11cjFFMEFWWW1Hanh2UDNEbXp2?=
 =?utf-8?B?UmI4Q3I5bFRiSzZFNmRWRlB6Nmx3T3M2U2tGQjhMcTlpQ294blJxbmNoeDJt?=
 =?utf-8?B?TkdvcFBBY1dnYUFxSk5BMG1KZkVMekpHVXJJb2xRU1ZocC81ZUdzSnl4V2da?=
 =?utf-8?B?bmFzV1RPdkVHWXVSZk5MektJOUtSck1sdUtOdTlaQndhTU9wWldFVXBPaU5Z?=
 =?utf-8?B?WWdPc3pBaVdkZ042L1lGZkFZOVJxK28xWjVGM0FjL0ZLa1hLWHR1anphNEJl?=
 =?utf-8?B?cTlkakYyVTF3OFMxa1Y2dTdIZmZHSWkvc2hXSDY5Y2h3MUI5R1N1c1U0ZWNi?=
 =?utf-8?B?Q2JmWmNHUEEyYTJlVFV4ZU0xOTFnTExVMExHWUYwcGJsS24rakV4OU1OK1JR?=
 =?utf-8?B?dzJESExXbGpmNW1iQXZVT1Uvd292UU5kWjdzRksxSE1LRHg4V010M010M3Zy?=
 =?utf-8?B?SUhjdnhKTTBJVmhoU2NQY2dOV0dtTVpabXptT0VlUm9tU1lrMWgrM2UrQjNr?=
 =?utf-8?B?MnJveWlmRE4xd1ZyMVorZnIrR2l6WitaZVBMVWZVUDRpS0Y4UXpJTysxQm9Y?=
 =?utf-8?B?OTRZVEYyYzJ2TE5EdytXTFFwWHNtUmRjN3FDUk9PT0JCQkk1L2JxTEFJSWVK?=
 =?utf-8?B?TGZtNHc5T3NvSFVRSk96MW9yT3NENmFwdStBU2pUWGpNRzNmWDFNN1Z0dWxZ?=
 =?utf-8?B?dWRBdDlFL3ZnTmpndDhCSFJPdzZFMWMvNmRka0w4ZFd0SkoyKy9FbW1VMk9q?=
 =?utf-8?B?VllnNU40Ti9RUjVpdVpTZVZhbko2NDB3dXNScFE4M1JzMHVMd0JmdTFRVHQ3?=
 =?utf-8?B?UlZQRnJncDFJT1hYVFJFaUk3NHhxVkh3bFZyVXZKSEpiSHA3aWlCKzhyNGxT?=
 =?utf-8?B?eXVxVHp4OVcvWFJTTkVReE9tNTcwa00yb2NFUm9QYzNqZU1IYlJ2ZkVGMkdp?=
 =?utf-8?B?RnlZM21mcVAzdzdmUTYxcW9wOThIUkZuODgzQnlYa2JtdzNxYVBxckJSek5a?=
 =?utf-8?B?NUVLY2lOcC9sQnZSUktGbjVVY2FmVmMrdG9MRjE0SlJqeGErZkRrWVlzZkMy?=
 =?utf-8?B?MHh0bERjbFlBL0o2Qm1kamNHaUJwZkdrTVVxVDZvWHBDSjA1akw2alhjVDJw?=
 =?utf-8?B?WGljOVRUVld4REdIaS9ZTlFVL21saU05V3RseFQwT1ZTaWlVdUNHWWRXQ2F3?=
 =?utf-8?B?NmdqVkVuM3lqNm9uN3haZGFBOWxRM3RyOGdoREREaUpFWmhzbzZYblFma1hp?=
 =?utf-8?B?ZWRIWlcwZHBMZHF6cVlYcFUycFRDQmxhZUM0bzBMU1Y3cXFFTVhWTC9tM0g1?=
 =?utf-8?B?MERndDZuQlMxekc1a09hbkdaS3U5UkNXNXdseFF6dE9ScEl4Nk1rdEVCVkJn?=
 =?utf-8?B?WklWYTEzUjN4bEZvOGZNalpmaSsvVnR2eGthbUdkY1RMMWJ3ZnF0dWhXaTRo?=
 =?utf-8?B?YmJMZWdEUXRER3Z3Zkx1czFLR3RqL0JSWXNOTFE3VHVxNVR3dnJyb2NaekhK?=
 =?utf-8?B?cHNQSVBKVVRuODV6RkU1enpTbDUrWjN1TzEya3RUaytoeTFWT3dTeEdjdE9O?=
 =?utf-8?B?bFB4ZUVld1FOUGNLeThFV2E3L3NLTlo3UFQwTURBRERNdzFDbkZlWUJNY2ps?=
 =?utf-8?Q?uzM0dg?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 194f5d74-ebdc-4fa9-d60f-08da0e740fdf
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2022 15:28:07.4169
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: amc3TgZJdS/jA4OumYKOgJ117YcCUa1fNdyk9YqJQgQagyAtu4rOh+xWWDgK3Tf5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0005
Message-ID-Hash: BCKOAQCOOMZEQ7ZJFYRETNP4TIXMTZ7A
X-Message-ID-Hash: BCKOAQCOOMZEQ7ZJFYRETNP4TIXMTZ7A
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: add dma_fence_unwrap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BCKOAQCOOMZEQ7ZJFYRETNP4TIXMTZ7A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjUuMDMuMjIgdW0gMTY6MjUgc2NocmllYiBWaWxsZSBTeXJqw6Rsw6Q6DQo+IE9uIEZyaSwg
TWFyIDExLCAyMDIyIGF0IDEyOjAyOjQzUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBZGQgYSBnZW5lcmFsIHB1cnBvc2UgaGVscGVyIHRvIGRlZXAgZGl2ZSBpbnRvIGRtYV9m
ZW5jZV9jaGFpbi9kbWFfZmVuY2VfYXJyYXkNCj4+IHN0cnVjdHVyZXMgYW5kIGl0ZXJhdGUgb3Zl
ciBhbGwgdGhlIGZlbmNlcyBpbiB0aGVtLg0KPj4NCj4+IFRoaXMgaXMgdXNlZnVsIHdoZW4gd2Ug
bmVlZCB0byBmbGF0dGVuIG91dCBhbGwgZmVuY2VzIGluIHRob3NlIHN0cnVjdHVyZXMuDQo+Pg0K
Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KPiBPbmUgb2YgdGhlIGRtYS1idWYgcGF0Y2hlcyB0b29rIGRvd24gSW50ZWwgQ0kuIExv
b2tzIGxpa2UgZXZlcnkNCj4gbWFjaGluZSBvb3BzZXMgaW4gc29tZSBzeW5jX2ZpbGUgdGhpbmcg
bm93Og0KPiA8MT5bICAyNjAuNDcwMDA4XSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZl
cmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwMTANCj4gPDE+WyAgMjYwLjQ3MDAyMF0gI1BG
OiBzdXBlcnZpc29yIHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlDQo+IDwxPlsgIDI2MC40NzAw
MjVdICNQRjogZXJyb3JfY29kZSgweDAwMDApIC0gbm90LXByZXNlbnQgcGFnZQ0KPiA8Nj5bICAy
NjAuNDcwMDMwXSBQR0QgMCBQNEQgMA0KPiA8ND5bICAyNjAuNDcwMDM1XSBPb3BzOiAwMDAwIFsj
MV0gUFJFRU1QVCBTTVAgTk9QVEkNCj4gPDQ+WyAgMjYwLjQ3MDA0MF0gQ1BVOiAwIFBJRDogNTMw
NiBDb21tOiBjb3JlX2hvdHVucGx1ZyBOb3QgdGFpbnRlZCA1LjE3LjAtQ0ktQ0lfRFJNXzExNDA1
KyAjMQ0KPiA8ND5bICAyNjAuNDcwMDQ5XSBIYXJkd2FyZSBuYW1lOiBJbnRlbCBDb3Jwb3JhdGlv
biBKYXNwZXIgTGFrZSBDbGllbnQgUGxhdGZvcm0vSmFzcGVybGFrZSBERFI0IFNPRElNTSBSVlAs
IEJJT1MgSlNMU0ZXSTEuUjAwLjIzODUuRDAyLjIwMTAxNjA4MzEgMTAvMTYvMjAyMA0KPiA8ND5b
ICAyNjAuNDcwMDU4XSBSSVA6IDAwMTA6ZG1hX2ZlbmNlX2FycmF5X2ZpcnN0KzB4MTkvMHgyMA0K
PiA8ND5bICAyNjAuNDcwMDY4XSBDb2RlOiBjMyAzMSBjMCBjMyAwZiAxZiAwMCA2NiAyZSAwZiAx
ZiA4NCAwMCAwMCAwMCAwMCAwMCA0OCA4NSBmZiA3NCAxOCA0OCA4OSBmOCA0OCA4MSA3ZiAwOCA2
MCA3ZiAwYSA4MiA3NSAwZCA0OCA4YiA4NyA4OCAwMCAwMCAwMCA8NDg+IDhiIDAwIGMzIDMxIGMw
IGMzIDMxIGMwIDQ4IDg1IGZmIDc0IDIwIDQ4IDgxIDdmIDA4IDYwIDdmIDBhIDgyDQo+IDw0Plsg
IDI2MC40NzAwODBdIFJTUDogMDAxODpmZmZmYzkwMDAwOWE3ZTQwIEVGTEFHUzogMDAwMTAyNDYN
Cj4gPDQ+WyAgMjYwLjQ3MDA4Nl0gUkFYOiAwMDAwMDAwMDAwMDAwMDEwIFJCWDogMDAwMDAwMDAw
MDAwMDAwYiBSQ1g6IDAwMDAwMDAwMDAwMDAwMDANCj4gPDQ+WyAgMjYwLjQ3MDEwMF0gUkRYOiAw
MDAwMDAwMDAwMDAwMDAxIFJTSTogMDAwMDAwMDAwMDAwMDAwMSBSREk6IGZmZmY4ODgxMDlhNzk2
YjgNCj4gPDQ+WyAgMjYwLjQ3MDEwNl0gUkJQOiBmZmZmODg4MTA5YTc5NmI4IFIwODogMDAwMDAw
MDAwMDAwMDAwMiBSMDk6IDAwMDAwMDAwMDAwMDAwMDANCj4gPDQ+WyAgMjYwLjQ3MDExMl0gUjEw
OiAwMDAwMDAwMDAwMDAwMDAxIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6IGZmZmY4ODgxMDlh
Nzk2YjgNCj4gPDQ+WyAgMjYwLjQ3MDExOF0gUjEzOiAwMDAwN2ZmYzVkMjFmNzUwIFIxNDogZmZm
Zjg4ODEwNjViZTM0MCBSMTU6IDAwMDAwMDAwMDAwMDAwMDANCj4gPDQ+WyAgMjYwLjQ3MDEyNF0g
RlM6ICAwMDAwN2YwOGJkNmQwNGMwKDAwMDApIEdTOmZmZmY4ODg4NWZjMDAwMDAoMDAwMCkga25s
R1M6MDAwMDAwMDAwMDAwMDAwMA0KPiA8ND5bICAyNjAuNDcwMTMxXSBDUzogIDAwMTAgRFM6IDAw
MDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzDQo+IDw0PlsgIDI2MC40NzAxMzddIENS
MjogMDAwMDAwMDAwMDAwMDAxMCBDUjM6IDAwMDAwMDAxMGU2OTAwMDAgQ1I0OiAwMDAwMDAwMDAw
MzUwZWYwDQo+IDw0PlsgIDI2MC40NzAxNDNdIENhbGwgVHJhY2U6DQo+IDw0PlsgIDI2MC40NzAx
NDZdICA8VEFTSz4NCj4gPDQ+WyAgMjYwLjQ3MDE0OV0gIHN5bmNfZmlsZV9pb2N0bCsweDJlYi8w
eGM5MA0KPiA8ND5bICAyNjAuNDcwMTU3XSAgX194NjRfc3lzX2lvY3RsKzB4NmEvMHhhMA0KPiA8
ND5bICAyNjAuNDcwMTY0XSAgZG9fc3lzY2FsbF82NCsweDM3LzB4YjANCj4gPDQ+WyAgMjYwLjQ3
MDE3MF0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ0LzB4YWUNCj4gPDQ+WyAg
MjYwLjQ3MDE3Nl0gUklQOiAwMDMzOjB4N2YwOGMwNDc3NTBiDQo+IDw0PlsgIDI2MC40NzAxODJd
IENvZGU6IDBmIDFlIGZhIDQ4IDhiIDA1IDg1IDM5IDBkIDAwIDY0IGM3IDAwIDI2IDAwIDAwIDAw
IDQ4IGM3IGMwIGZmIGZmIGZmIGZmIGMzIDY2IDBmIDFmIDQ0IDAwIDAwIGYzIDBmIDFlIGZhIGI4
IDEwIDAwIDAwIDAwIDBmIDA1IDw0OD4gM2QgMDEgZjAgZmYgZmYgNzMgMDEgYzMgNDggOGIgMGQg
NTUgMzkgMGQgMDAgZjcgZDggNjQgODkgMDEgNDgNCj4gPDQ+WyAgMjYwLjQ3MDE5NV0gUlNQOiAw
MDJiOjAwMDA3ZmZjNWQyMWY3NDggRUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAw
MDAwMDAxMA0KPiA8ND5bICAyNjAuNDcwMjAyXSBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAw
MDAwMDAwMDAwMDAwMDBhIFJDWDogMDAwMDdmMDhjMDQ3NzUwYg0KPiA8ND5bICAyNjAuNDcwMjA4
XSBSRFg6IDAwMDA3ZmZjNWQyMWY3NTAgUlNJOiAwMDAwMDAwMGMwMzAzZTAzIFJESTogMDAwMDAw
MDAwMDAwMDAwYQ0KPiA8ND5bICAyNjAuNDcwMjE0XSBSQlA6IDAwMDAwMDAwMDAwMDAwMDUgUjA4
OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogMDAwMDdmZmM1ZDIxZWJiMA0KPiA8ND5bICAyNjAuNDcw
MjE5XSBSMTA6IDAwMDA3ZjA4YzBhNjE3MGUgUjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjogMDAw
MDAwMDAwMDAwMDAwMA0KPiA8ND5bICAyNjAuNDcwMjI1XSBSMTM6IDAwMDA3ZmZjNWQyMWY4NDAg
UjE0OiAwMDAwNTVlODBkMTNkMWIwIFIxNTogMDAwMDAwMDAwMDAwMDAwOQ0KPiA8ND5bICAyNjAu
NDcwMjMzXSAgPC9UQVNLPg0KPiA8ND5bICAyNjAuNDcwMjM5XSBNb2R1bGVzIGxpbmtlZCBpbjog
dmdlbSBkcm1fc2htZW1faGVscGVyIGZ1c2Ugc25kX2hkYV9jb2RlY19oZG1pIHNuZF9oZGFfY29k
ZWNfcmVhbHRlayBzbmRfaGRhX2NvZGVjX2dlbmVyaWMgbGVkdHJpZ19hdWRpbyBpOTE1IHNuZF9o
ZGFfaW50ZWwgc25kX2ludGVsX2RzcGNmZyBzbmRfaGRhX2NvZGVjIHg4Nl9wa2dfdGVtcF90aGVy
bWFsIGNvcmV0ZW1wIGNyY3QxMGRpZl9wY2xtdWwgY3JjMzJfcGNsbXVsIHNuZF9od2RlcCBnaGFz
aF9jbG11bG5pX2ludGVsIHNuZF9oZGFfY29yZSB0dG0gZHJtX2J1ZGR5IGRybV9kcF9oZWxwZXIg
c25kX3BjbSBkcm1fa21zX2hlbHBlciBpMmNfaTgwMSByODE2OSBpMmNfc21idXMgc3lzY29weWFy
ZWEgcmVhbHRlayBzeXNmaWxscmVjdCBzeXNpbWdibHQgZmJfc3lzX2ZvcHMgcHJpbWVfbnVtYmVy
cyBpbnRlbF9scHNzX3BjaQ0KPiA8ND5bICAyNjAuNDcwMjg5XSBDUjI6IDAwMDAwMDAwMDAwMDAw
MTANCj4gPDQ+WyAgMjYwLjQ3MDMxMl0gLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBd
LS0tDQo+DQo+IENhbiB3ZSBwbGVhc2Ugc3RhcnQgcnVubmluZyBkbWEtYnVmIHN0dWZmIHRocm91
Z2ggQ0kgc28gdGhpcw0KPiBraW5kIG9mIHN0dWZmIGRvZXNuJ3Qga2VlcCBoYXBwZW5pbmcgc28g
b2Z0ZW4/DQoNCkkndmUgZGlkIHJhbiBpdCB0aHJvdWdoIENJLCBidXQgc2luY2UgdGhlIG1vc3Qg
cmVjZW50IHBhdGNoZXMgZGlkbid0IA0KYXBwbGllZCBvbiB0b3Agb2YgZHJtLXRpcCBmb3Igc29t
ZSByZWFzb24gdGhlIHJlc3VsdCB3YXMganVzdCBnYXJiYWdlLg0KDQpHb2luZyB0byB0YWtlIGEg
bG9vayBpbnRvIHRoaXMgaW1tZWRpYXRlbHksIGxvb2tzIGxpa2Ugc29tZXRoaW5nIHdoaWNoIA0K
SSd2ZSBzZWVuIGR1cmluZyBkZXZlbG9wbWVudCBtYXliZSB0aGUgd3JvbmcgcGF0Y2ggd2FzIHB1
c2hlZCB0byANCmRybS1taXNjLW5leHQtZml4ZXMgb3Igc29tZXRoaW5nIGxpa2UgdGhpcy4NCg0K
VGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3csDQpDaHJpc3RpYW4uDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
