Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB1060437C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:41:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8BE323F2E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:41:01 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2063.outbound.protection.outlook.com [40.107.92.63])
	by lists.linaro.org (Postfix) with ESMTPS id 154E63F2F8
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Sep 2022 16:32:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nrbqs0T1cBPAejskMmPKtcZpLLepjYd7FLqIfjL0OKqoJycoFPPnpz6si9SHWspRG30saFLO7jl1yGBD2uZEErhcOItXydwTeWoQJGDlFVmhz6n8Qc/9hjf1EPAj/D/VVce1BOVVt0fnkqvKGDFw4f9pA9ArosZl9ywTZbRztzO1R9Rqao6RO4F9hEvpqRzeQYGzKHqiaYM6Ys+E+MRFHHDBq9OcoUIZUJkCv99IeeZXoTvFHxBXIUU+NC8RsRSsyNssUC3/rpAGzuWPkW7ps5IWcTyOSvnQWrvKK6SS42sra/hkvkHbCOg/X0afo+gSgWSEZ1tSOBkiCb4+a/EbhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVUZAI7C2bLM9TYH9EK9EtboHX20wB6RMYuOnBlJylM=;
 b=mIzaNqdM+xLWKrkLSl4Jw6qAsoGzLULh7ShjXtNk23mDNzctf3T/7GVspezYkoX2wemj+sp5LN4Nh/8JbMEhnULeljxg1qnN5lnWQrFONu6QWRmO8zpa9kLftwvLhtOLt45uUL0hR5TcYg7Hq0N/5hnUbxUS+P3ooXEdp043UR+j3Qp6pDCZizfO3XfxQHJXbms69PXeQ8KYxqK2zdVYbdp0nyzIW1hzvTF7LK997+VodhMVXKryOCPMEv1Geejtg0drK0LeBS/lbhWvuw2HlTB7H08P/fPlGBIhQQW+0xgulCZZPUKfltYjyd2WCjybsMxVLP6Nxh2KN3Kz/VOegw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pVUZAI7C2bLM9TYH9EK9EtboHX20wB6RMYuOnBlJylM=;
 b=DWCSvfd5ReuP8JAkbyCnKQKMexc1BNuXFxvHtp5pag3ExElxaQKoYGpz1mlbPk1J1aqTosmRMPjOP1Gv5dSJm9TtQmxfZI4b1XlIQTp7NX7J74D4V0kvfnTG1LvHY5jbu80Lu2lRMMu3PZ2hZgiI2lKptB7BvvuyGxamBtfeN6k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB6000.namprd12.prod.outlook.com (2603:10b6:510:1dc::15)
 by IA1PR12MB6210.namprd12.prod.outlook.com (2603:10b6:208:3e6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Fri, 9 Sep
 2022 16:32:48 +0000
Received: from PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::19c9:3fb4:80b9:cd4d]) by PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::19c9:3fb4:80b9:cd4d%5]) with mapi id 15.20.5612.019; Fri, 9 Sep 2022
 16:32:47 +0000
Message-ID: <d88185fb-0c8c-f379-a6ea-856c00a4e5c9@amd.com>
Date: Fri, 9 Sep 2022 22:02:34 +0530
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
References: <20220905163502.4032-1-Arvind.Yadav@amd.com>
 <20220905163502.4032-3-Arvind.Yadav@amd.com>
 <37ec6f1d-a3f4-6fa3-6d5c-fe89bb958d87@amd.com>
From: "Yadav, Arvind" <arvyadav@amd.com>
In-Reply-To: <37ec6f1d-a3f4-6fa3-6d5c-fe89bb958d87@amd.com>
X-ClientProxiedBy: PN2PR01CA0009.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::14) To PH7PR12MB6000.namprd12.prod.outlook.com
 (2603:10b6:510:1dc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB6000:EE_|IA1PR12MB6210:EE_
X-MS-Office365-Filtering-Correlation-Id: a0c87008-84c4-4719-c8de-08da9280ee05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Yh4tgc0myuxqV1Sw5BVMM8TV65RplmWSdHUXGI5BecEuPsERdHzh0r06UJ4TtewIyI1z2sKPbeeZ6RGyQNT9IOymqNX0qIFv2qOn+YZoCwKXCWm83tHDUOSEHSuOFeCb0Djox6FDGkesCuSvUYiX1+EY+1Z1yf3axjb1pfK087hytIEYLIVSo/5nK6XBYBuIvkd9R+Sl1nTr3Apc941FTK3snOrs48kqqQhQ91C89o+Jhv51V+m3GCrXNeneEKiOcMr0bRQGGkPH3EtfHSmYJ7YpUbxETdb3oa4VXpz8i02gf9bFphWHDnLapEBc5WQtFcF9q05r9broHNI6X8DTRLXCOGvVkjQhygmKWWBIe4JDBOHFjSLYKDwElAiXpuppVgfrCAQTOZZPM2hmnZWQndQfB5WtCOLMWpo9I6KqxmdHh0ygHQiwYyZov7kIEfSU7xLlY5fw8ZntDqYVnKinNGDumQOmzLkVDV0DcEU1MzsT3J/zC520EqMV/1NEsBv/VmqS6JQNnMHMa8phQQHuou9y2gHZoNFyNbGe1oXqoZKVeiGf2YehumP0SDI2B+IL0+EKNqra7V36lGlWkLkl7KjZ0O8Sl9I6NAi9w3CCLRAN38uhVj3TWJ619tReV37xqr6PkiZMeSsuF1LFydQIntqrGymcJVwv1tlaYQw3/4vwllniCqzaTxkmZ1BZRsEJoiTNrVYMGEagYukA9bqEN8fP4u8sPKjjQAijtlRt1c4ox8WWBxxtx5vkkH6G8q5jMC9DIMD8qwc2nkhxfTzZxVqw+Lor12L0w0+HKD9/LMlks4bTNZt82Kz3T3ZM8+pt
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB6000.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(136003)(346002)(366004)(396003)(39860400002)(6666004)(41300700001)(36756003)(53546011)(6506007)(6512007)(26005)(478600001)(2906002)(31686004)(31696002)(316002)(6486002)(66946007)(110136005)(38100700002)(921005)(2616005)(186003)(66574015)(66556008)(8676002)(8936002)(5660300002)(66476007)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aS8yRVpEWlQ4OFpDYWxvVWREUXdGbjArY3A4WkgzZUZDaTI1eEZrbXRUS1M3?=
 =?utf-8?B?YW5pVGEvVDdRS2VOTy83Qk9xTldQL0RXdWlubWI5MlhHVXE0amp2WnpNNXhi?=
 =?utf-8?B?a2lWZHJYUUxKVjUyS0dtKytia2piM3NTb2pwRFBSZ3J5b3Q1bloyNEZGa1R4?=
 =?utf-8?B?WmpYN3NEZVJqZDN0dE5DSzlUQXc3Z2ZIS05OY2xEUWROR2tWWHNjUU9ZNkQ4?=
 =?utf-8?B?bHZWNDAvTWIzSlhPbG5VbmI0M2pJVDRsSGM5S3laM0VsVEE5K3Z5dDJKejVj?=
 =?utf-8?B?YzZ3aTdwcjNta2haaEMxQWtHU2s4YnZDMEZmUTE4UnpqNk1mdTNwUjVzWTc5?=
 =?utf-8?B?MmtCU2ZKRjBiVHpqRmEzdEYzbHZzWGNYOWFFY01DRHQvVHRnekE4cnRjZ081?=
 =?utf-8?B?Q0ZjQkFYTDd5cGNKcnNnSVBTbHZVUHQxRG9tRkhIcVdFVm5RT2xXeHEwU0hh?=
 =?utf-8?B?T0ZzTjJuaVZKd2RTS0dQalhNN0FDT0RNM3Q1RzFtS2JJS0lNVUxqNDFrMHhs?=
 =?utf-8?B?YmdPbkJhQXJ0eEZWY09iTlNnOGJGSnpLSU9uSEYwbEt2WkIrTlNGd2pwcGVo?=
 =?utf-8?B?ZVduMHErMzBpNHo2cGZ3cDdaWFRPZDBGQXlGWjg4aVVaQldEVEpOeDB0NVBq?=
 =?utf-8?B?cG5PaGYrSzhmOVVVcUo2Z2lXL2NvQlJ1ZlRDU0g1NkdRWXZiaVZCd3pZUk5Q?=
 =?utf-8?B?cmpidThYOWJLdWNEMjZpTTlPZEc0eXM0WmFIYU9oekV3NGNOQTdlRTc3ZUR2?=
 =?utf-8?B?YnRvT3VBaGo4ZUtIZW5CZ0JFRVM1YkFnZS96eWdaaHU4T20wYkh0OURtcEVF?=
 =?utf-8?B?R0pmM2F5cUczMWNqYlNhWW5YalJVM0k2UFRUZDVvZVFVUWlDNlVsQ1V2RVBj?=
 =?utf-8?B?NFFvRVN6djFIejZNOVhqUDlqdEdqVmtCR1k0MHhxc09JSEYzRXFwRWRqdXAy?=
 =?utf-8?B?UjFzZllRRGNtelYyczlHVkNOWHRoUDVsVE1UUGkxYWpZSDdTd1FxZDcvNUY3?=
 =?utf-8?B?QzBCcEQxcDF1U2craVhwUG9IbjhucnJjUEV6ZU9udFMxRE1adjdIa2dwTlNo?=
 =?utf-8?B?cEIvaDI4amh4YTUzQXM5SVN5dGU2SmhvWCtrd0ZDeCt6cEw5elJsZ1FHR2tZ?=
 =?utf-8?B?SnhYYk1Fc2EyL1htWmtId1dSSFEvUklqSFNZOWhPVGMwTG5yVUxyQnlTTTB0?=
 =?utf-8?B?bnNOY3JNM3VWQmNjQ21yK2xyOE82WGp4TVBzQzd0eGxBQkZyaXZZY21yQmcv?=
 =?utf-8?B?L3pFZzdxWk9Ya1FuN1pSWnRhUWdYT1ArekJWN2ZtQzNVNHlVMW55dlhBNWtx?=
 =?utf-8?B?NmlKQVVZcENvRllyelNaNWNBeHJ5dzRtMjlUY2lScmp3YndraVNpVmd1V1FV?=
 =?utf-8?B?VXd6RVJ3M0dDMTY2YnI1d0JFY2lHMWVPZDJ5bVN1K0NmZ2RpWU16dFVuZlBt?=
 =?utf-8?B?U2NMSU5xUS96WUZwSmo1K2I5Tkt5NzRiUnpwdFZlOFNEbE1oV3owektkbzM2?=
 =?utf-8?B?Rkkva3duVVhQS1AwUjhBdjBaNGdzdTlEZDNHMitWMDRaanJ1Ui9MZ2VON0ZZ?=
 =?utf-8?B?amRuRDVkY2NqblRmZXh1RlVrUDd1c0QvQmhMNEp6YjZ1SHZadWJ0TGRxZ0tp?=
 =?utf-8?B?TXpEcW5LZWFobDBweE1HY1lsSi9BRERSbzdUVjVYdDA3RUM2NmFtV3FwdzZi?=
 =?utf-8?B?UzZBUWkybXJaT2lzYUp0MGxFTWhva0NSc1poa3lEWDZwU2E1TlJuN1MvUXNy?=
 =?utf-8?B?aXE1b1ZwRFBQSVltdEZKLzJNMFM0ZEhEdjJ5RUVjb0FjZUFIUGpvdVFmaDk5?=
 =?utf-8?B?d1kwMTdPaStEM1dlZlpJTC95R01GS1U2dlp2VzQwSmJuMDNCZzJvT1BQT0lv?=
 =?utf-8?B?Smk3cUdqU015OHVESnhjS1E2UjJTQkwya2hnbjFHbXZSUDNIRnpENmYrL05l?=
 =?utf-8?B?NmkrZG9JMHBaVGlOdG5McGlJbGIyeHVudUJ5NVlsY3Bxd1F6OGsyZk5OQmx4?=
 =?utf-8?B?S29nQko4NnRkNXVTanZDN0RtOFlPdG16SjhCWTBvL1dMK1ZuSWJXY3lQUGU0?=
 =?utf-8?B?U0FKR1dEQnNESEZqRGhuNi9QWXNZRU9hdlhJdWNaOXM5cTk1akVkR3NSdDRD?=
 =?utf-8?Q?SAgAbAZklDZhuGZVJUzjkdJKI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0c87008-84c4-4719-c8de-08da9280ee05
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB6000.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 16:32:47.7702
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mHJRgWcGsQ5WC3SkO0h9/9suwF3Aq/VMnQJ/cVlJQcv6Hhi9wvfeC67ki5vyVLv66nXno5sxEq4CLEtcQRGGBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6210
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ENL2R7ZS6DM4RKNB4QY435VT26IDBPOS
X-Message-ID-Hash: ENL2R7ZS6DM4RKNB4QY435VT26IDBPOS
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:38:16 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: enable signaling for the stub fence on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENL2R7ZS6DM4RKNB4QY435VT26IDBPOS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA5LzYvMjAyMiAxMjozOSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4NCj4NCj4g
QW0gMDUuMDkuMjIgdW0gMTg6MzUgc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+PiBIZXJlJ3Mgb24g
ZGVidWcgZW5hYmxpbmcgc29mdHdhcmUgc2lnbmFsaW5nIGZvciB0aGUgc3R1YiBmZW5jZQ0KPj4g
d2hpY2ggaXMgYWx3YXlzIHNpZ25hbGVkLiBUaGlzIGZlbmNlIHNob3VsZCBlbmFibGUgc29mdHdh
cmUNCj4+IHNpZ25hbGluZyBvdGhlcndpc2UgdGhlIEFNRCBHUFUgc2NoZWR1bGVyIHdpbGwgY2F1
c2UgYSBHUFUgcmVzZXQNCj4+IGR1ZSB0byBhIEdQVSBzY2hlZHVsZXIgY2xlYW51cCBhY3Rpdml0
eSB0aW1lb3V0Lg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEFydmluZCBZYWRhdiA8QXJ2aW5kLllh
ZGF2QGFtZC5jb20+DQo+PiAtLS0NCj4+DQo+PiBDaGFuZ2VzIGluIHYxIDoNCj4+IDEtIEFkZHJl
c3NpbmcgQ2hyaXN0aWFuJ3MgY29tbWVudCB0byByZW1vdmUgdW5uZWNlc3NhcnkgY2FsbGJhY2su
DQo+PiAyLSBSZXBsYWNpbmcgQ09ORklHX0RFQlVHX1dXX01VVEVYX1NMT1dQQVRIIGluc3RlYWQg
b2YgQ09ORklHX0RFQlVHX0ZTLg0KPj4gMy0gVGhlIHZlcnNpb24gb2YgdGhpcyBwYXRjaCBpcyBh
bHNvIGNoYW5nZWQgYW5kIHByZXZpb3VzbHkNCj4+IGl0IHdhcyBbUEFUQ0ggMy80XQ0KPj4NCj4+
IC0tLQ0KPj4gwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgNyArKysrKysrDQo+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0K
Pj4gaW5kZXggMDY2NDAwZWQ4ODQxLi4yMzc4YjEyNTM4YzQgMTAwNjQ0DQo+PiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYw0KPj4gQEAgLTI3LDYgKzI3LDEwIEBAIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFf
ZmVuY2Vfc2lnbmFsZWQpOw0KPj4gwqAgc3RhdGljIERFRklORV9TUElOTE9DSyhkbWFfZmVuY2Vf
c3R1Yl9sb2NrKTsNCj4+IMKgIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlIGRtYV9mZW5jZV9zdHVi
Ow0KPj4gwqAgKyNpZmRlZiBDT05GSUdfREVCVUdfV1dfTVVURVhfU0xPV1BBVEgNCj4+ICtzdGF0
aWMgYm9vbCBfX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlKTsNCj4+ICsjZW5kaWYNCj4+ICsNCj4NCj4gSSB3b3VsZCByZW5hbWUgdGhlIGZ1bmN0aW9u
IHRvIHNvbWV0aGluZyBsaWtlIA0KPiBkbWFfZmVuY2VfZW5hYmxlX3NpZ25hbGluZ19sb2NrZWQo
KS4NCj4NCj4gQW5kIHBsZWFzZSBkb24ndCBhZGQgYW55ICNpZmRlZiBpZiBpdCBpc24ndCBhYnNv
bHV0ZWx5IG5lY2Vzc2FyeS4gVGhpcyANCj4gbWFrZXMgdGhlIGNvZGUgcHJldHR5IGZyYWdpbGUu
DQo+DQo+PiDCoCAvKg0KPj4gwqDCoCAqIGZlbmNlIGNvbnRleHQgY291bnRlcjogZWFjaCBleGVj
dXRpb24gY29udGV4dCBzaG91bGQgaGF2ZSBpdHMgb3duDQo+PiDCoMKgICogZmVuY2UgY29udGV4
dCwgdGhpcyBhbGxvd3MgY2hlY2tpbmcgaWYgZmVuY2VzIGJlbG9uZyB0byB0aGUgc2FtZQ0KPj4g
QEAgLTEzNiw2ICsxNDAsOSBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0X3N0dWIo
dm9pZCkNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmRtYV9m
ZW5jZV9zdHViX29wcywNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgJmRtYV9mZW5jZV9zdHViX2xvY2ssDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDAsIDApOw0KPj4gKyNpZmRlZiBDT05GSUdfREVCVUdfV1dfTVVURVhfU0xP
V1BBVEgNCj4+ICvCoMKgwqDCoMKgwqDCoCBfX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKCZk
bWFfZmVuY2Vfc3R1Yik7DQo+PiArI2VuZGlmDQo+DQo+IEFsdGVybmF0aXZlbHkgaW4gdGhpcyBw
YXJ0aWN1bGFyIGNhc2UgeW91IGNvdWxkIGp1c3Qgc2V0IHRoZSBiaXQgDQo+IG1hbnVhbGx5IGhl
cmUgc2luY2UgdGhpcyBpcyBwYXJ0IG9mIHRoZSBkbWFfZmVuY2UgY29kZSBhbnl3YXkuDQo+DQo+
IENocmlzdGlhbi4NCj4NCkFzIHBlciBwZXIgcmV2aWV3IGNvbW1lbnQuIEkgd2lsbCBzZXQgdGhl
IGJpdCBtYW51YWxseS4NCg0KfmFydmluZA0KDQo+PiBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZCgm
ZG1hX2ZlbmNlX3N0dWIpOw0KPj4gwqDCoMKgwqDCoCB9DQo+PiDCoMKgwqDCoMKgIHNwaW5fdW5s
b2NrKCZkbWFfZmVuY2Vfc3R1Yl9sb2NrKTsNCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
