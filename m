Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 262F879A728
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 12:16:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B7613F1D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 10:16:10 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2073.outbound.protection.outlook.com [40.107.100.73])
	by lists.linaro.org (Postfix) with ESMTPS id ABABE3F09C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 10:16:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=FYCS5jhv;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.100.73 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zv9u40g74I7QnqgAsPVWHcgwdaa7ryfHkDBrS6QW7H2FnElU6lCsSCKvcgh0IRkSKMAbtEBy8bfhk4PR6UCmAiHsoS/AfbiezLdynJIJWVBnrlYqAemr2Cbfharc/8FRL3zaTcU2sCL8iLdux7+JCA7C+Wwv4UlYW3Yvp1qclvAJBtnCF7D7b/cdiuhTlbc7Y7rtXTDiO1/2ole1DZaZiJiY3whl0D1pBBWxHTIAHf1DXHvZwymqRxhkHVEQ3fCUbcDdAcMEAP4A3BsvmY4HpvrBPFI5PMeVp72zQS5q804dsoWSe1aI//PNu0J0ig22LMdJh39mQzls5DYEqhKU/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ooo8ioFCP+b9WvVddnNqQaH/D2/zFEi/HdvcudfM4Y4=;
 b=cjv4y0yyKmtFse9x5kyN+lxQ/zlwvYiFu7a8SqHAJAhk8Wf6LhFxrBrOUhAO9aYKHQ3O5QxldtjsiDmBzJhypIWyhphcxNw5r+fXDe4pdAPY6MHNeznSY5lY8GLZ0vQ1wCY702z8S7xKDaRfnBYt7tuJJwyN8GTIZLeu11jHhQF50zR2+eebBI3/8D2eAr2ljykqVrPx8US89x127z/suh79/hNbBeBxBKO42/8ftLqBS3IRC4CGT66OX9eCQZgysk5wRi5vI8K5pbg/eXHR/h0D7+zL1xaLE7I+Dw1DottR65GTOeazapq3qsUDVGWgVIWQT0iT8h7hy5L+GXxkHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ooo8ioFCP+b9WvVddnNqQaH/D2/zFEi/HdvcudfM4Y4=;
 b=FYCS5jhv91ybmBdp2knCsdcIWg4eEr4yyBXaQNXsH+Zrq9OGfpRqy8fCGCNRS0TYMFF+Vf8gR+EhOHmzBJ4/DGceLIbz0210aQX9x4+4e/Z++n2xCgz61H52QgpLKgc2hyID5kXQ9fr1y25i6gSETuv0riRI4+az0avOXx79zDI=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB4562.namprd12.prod.outlook.com (2603:10b6:5:2aa::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Mon, 11 Sep
 2023 10:16:04 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::55cb:215b:389e:eced]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::55cb:215b:389e:eced%5]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 10:16:04 +0000
Message-ID: <da7ffae5-3b57-71d1-b09e-fdb297936632@amd.com>
Date: Mon, 11 Sep 2023 12:15:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com>
X-ClientProxiedBy: FR4P281CA0060.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cc::20) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DM6PR12MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: f0d55335-5750-449d-e202-08dbb2b01aea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	G4ZWPlIizHfuLKDF0s4UUMeSwwSS3wV8Ffrk4MEXP8L6REB4sa0WAZR6Zxu89nQONcr0R1U4TqLI9hKIiFalC9Zk5M7Wkz7lX36Y5aJVwFYWBuBA7YjGNilC6tdV7mbSDhbh5c3J8SLY4pjMP1BI5JVEKCYHwTbXFIxStfDBRSOWhoxkCVtGNOr2qVr3BzrhaYbeISefTfwpmPebbe6yS27q30LUNfnovboWg9ceXvCG6RUwCuGGbPQwTLL558OEGrh5t7AwIZZcxWNAuyIdsWrSjPfzBDdv8GgRNfYB5o7Ef2gqqnBkLVA7lfALCW46p11GzQQNBXMtLBwepA4DsHvL3WuPYKFacytgEuTflikIw9KQiTeT+QHe3RAOqNZFSd1pHr9xjJ5E3vTXU/EtERNCYHM+GXQpVS/PrvVG02KeZEq3qBBE/J1Cq4H3cZKoBNxXwmFEb7vRvkGZH1Tp/GA/edFtPgWnVi/so/zuLc5HI/h8xk+14mP2tNtZ6DQ39ueN+RVJ+03papD+aSYTcakTNm1DyDvX0bZdRwlmKz9PNUNc4BKojuv/+yCxXfxpyE7Hq0CjzcIJTGYIjX+b4eTfVyV03bbZPl8q6pYsb9Dr/L4VMLNJ49FyZvsfhV4aYfaBuzlQTO4ECQZYGepWbw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(136003)(39860400002)(366004)(346002)(1800799009)(186009)(451199024)(110136005)(6506007)(6486002)(6666004)(6512007)(478600001)(83380400001)(2616005)(26005)(7416002)(54906003)(66476007)(66556008)(66946007)(4326008)(316002)(2906002)(41300700001)(5660300002)(8676002)(8936002)(86362001)(36756003)(31696002)(38100700002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Z2cwZlhheXdlMjhxYkY4bXplNmk5Z3hUdVlxSkdjTHVwVStGT2JFeHF3Nm9n?=
 =?utf-8?B?cUZ4S1R3YVF3cjBMOHZZOUdkRFZheTdza1dNVEhUdENOQmlhR0pXOWljaEdC?=
 =?utf-8?B?Y3A3ckdzdnM5OGl3OWE4UC90ejVRS0tVWWtjazZVQ3c5Q3NBa29XWEN4ZzJS?=
 =?utf-8?B?NVV5NlBSd3Fna015N0dzVldEMVp4clhOZExPTUMzQkx2L3V1cXJKWVVpSU1C?=
 =?utf-8?B?b2FrSHRkVXhwSGZPcllkaW1ZYlBwczVkc1UvUUlqMk5FT0FoZ2dZWTdZSEU0?=
 =?utf-8?B?V3A5K0lKWEZoYURvaWtPMmJkWlVqUXFnc2pHUkpRSE80dzA2dFU0b1RqT1hV?=
 =?utf-8?B?eFBRNEM3c2JYSTdPaDI3UEtYSFhpV2pXUmFTSzRSMy9LM1dmRzVvMVZDYmVW?=
 =?utf-8?B?Q2lFalZXUkJKVlpwOXZyVSt6aWxyRVFERTRBdGd4Vm1MR3A5TFl3Yi9vdldC?=
 =?utf-8?B?VE9ZNFJSKzI4QWE5Uy9jeVdZTVpYamkzc0VodGRmRzFBRUY5MFBtczJqUGdG?=
 =?utf-8?B?QmdMZnhnNGcrSWh2ZmsxYk4yWXZjTkVvTFdFTnJJRzRTdmlpL0Z1Q0ZIcEtt?=
 =?utf-8?B?UmlEQTZyY1I0NzNUdFNBUkRyeWlZUGV2WGtSNDB0RVIyM2dlZXVseGNDaHNN?=
 =?utf-8?B?VXFCQW1sUTBSbDVPYUJva05ja2JKUFF6Y1FqRzZFT1AzcW5KbU5rS21hRWdm?=
 =?utf-8?B?b3lMeE9QTjZpVSs5cGN1T0E1eHdGUWZQT2dwTUlVMllBR0xEQ2dVSjk4MElk?=
 =?utf-8?B?MGVnbUZaRXNPSTgxdXpYMlpCSmljTFpqakl3YkY5UG1HV3IyWVZrdjBacDla?=
 =?utf-8?B?NFZ2WDBieUx5YnBmRXkwalB6UmVQZk1KaTY4NG81bUlGb1pmU2FDdzVHTi9P?=
 =?utf-8?B?bGhmVEhScmF3cDBQSHV6OFZNYXpWazhZeVV1RStIdStJWUo5Z1c0WE9ESnRN?=
 =?utf-8?B?N1BtaVNjTS83YWJjWUFWV24vRkJWTDlBQ0VtWHBCbC83OU1vR1BqK2lQUjVu?=
 =?utf-8?B?UDduRUdTTFJXSFI5a0RpMndOSHFRajlDeFE5YklKdW5EVUJ2QUYwcWYwNnVX?=
 =?utf-8?B?S3VTeW5JYkJsSnU3RDlsZ2V0WWpDYmxHakRkVGtwLzNqTlRlYTBlOUFCZUNK?=
 =?utf-8?B?alltZjhjSzZOcldEZmNjRDJQcW5CQ3hIOGlMdkhQQytadStkcFRVNURCMXpm?=
 =?utf-8?B?UFQ5SlBMU0N5QWtrcU5vc2dyMUhFbHBjaUlUSGdSWlB4OHNIaFk5d0NzS3E4?=
 =?utf-8?B?T21YVjZkWXhOSFhtSnJmaEJLc1EwVG1pU3U2SUgzakNvT21mQWdSK1BqYjBh?=
 =?utf-8?B?UmxPL0kvVWNtdEJtYkEybmxHcHc0K0FrYi9wN3dGejRZUXlGNzZuYmNWQXJt?=
 =?utf-8?B?czlPUTFZeTdKcVVwZWRzRDRNSzFCMlhpM0V6WHFiVFFPMEZmZTkrenorR3Nu?=
 =?utf-8?B?T3ZvL1RqQy9DWGVSMWhHVVBpUjJEakZuU3JWWGVnM3JKb25CcEhDekFRSnEz?=
 =?utf-8?B?eUhrcGNONU5MNWdLT0o1L21qeDA1aVE0WFhsNjBhdUczL2xHVExyYXkvTUxB?=
 =?utf-8?B?Zm1qeUlSY3dPMUR2TEJ6Y04wdm5DM0xhOXVDOGVJaXdzYkt5Y041MmZtVW4w?=
 =?utf-8?B?a1hNb3ZJTUlYaHhQZmtJcGhqQ2lISkNLWng5S0d1bVIrelJ1ZktXYXM5NzVE?=
 =?utf-8?B?K0dGZXFEYWx0ZWtUVmpZV2NvV1BsMFBTRlBLZE1IWFV4WVdLRXFWbGMyN1Zt?=
 =?utf-8?B?L2FyQy9ESzN2VVJJSlJnM2tWTTdJazZvdVM1ZTFhekt4S0cxWUlnaTh5bXZa?=
 =?utf-8?B?Zk42dEJhTlZieUJhQXQwTWpFZmIzb3piSGNWb2M1VWdtT2pBRnc1ZEpYVkdK?=
 =?utf-8?B?RkRzV0NBbDFUc1JwVmlUNGZnNmsrWWlRWXhWd2NGRm40SDUwUVhWQjhTQmRm?=
 =?utf-8?B?VU95bWZYMEdSVThINW5vblBEeERHSW1Fd1l5RDRyei9oTGpVTGt2VUtLSnRL?=
 =?utf-8?B?S0pnenpxNzRlR1dUajBQcVB3YzFpckxXZHZGSjZjdnU2QjkrMlhzbDdEYWZT?=
 =?utf-8?B?SVBHbjUvclhDcnp1RzBjOUN1SjdyS1VUVEltNGJBcTJXK25xVnhhMzNKWEdV?=
 =?utf-8?Q?COZxmHEr7BYD83xNNA4D2npjN?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0d55335-5750-449d-e202-08dbb2b01aea
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 10:16:04.0652
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lAchpY3xiWxG0VhhBwxWThMvnEKeHR4Nf1NlkOGtjlF2Clnc6BHmJNXDzjlHuZaD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4562
X-Rspamd-Queue-Id: ABABE3F09C
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.100.73:from];
	RCPT_COUNT_TWELVE(0.00)[20];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[collabora.com,mediatek.com,kernel.org,linaro.org,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-0.998];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EBDGSK6NS3BF43RBM5EQ4IH3B4SE63YX
X-Message-ID-Hash: EBDGSK6NS3BF43RBM5EQ4IH3B4SE63YX
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EBDGSK6NS3BF43RBM5EQ4IH3B4SE63YX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTEuMDkuMjMgdW0gMTE6Mjkgc2NocmllYiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubzoN
Cj4gSWwgMTEvMDkvMjMgMDQ6MzAsIFlvbmcgV3UgaGEgc2NyaXR0bzoNCj4+IFRoZSBURUUgcHJv
YmUgbGF0ZXIgdGhhbiBkbWEtYnVmIGhlYXAsIGFuZCBQUk9CRV9ERURFUiBkb2Vzbid0IHdvcmsN
Cj4+IGhlcmUgc2luY2UgdGhpcyBpcyBub3QgYSBwbGF0Zm9ybSBkcml2ZXIsIHRoZXJlZm9yZSBp
bml0aWFsaXNlIHRoZSBURUUNCj4+IGNvbnRleHQvc2Vzc2lvbiB3aGlsZSB3ZSBhbGxvY2F0ZSB0
aGUgZmlyc3Qgc2VjdXJlIGJ1ZmZlci4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBZb25nIFd1IDx5
b25nLnd1QG1lZGlhdGVrLmNvbT4NCj4+IC0tLQ0KPj4gwqAgZHJpdmVycy9kbWEtYnVmL2hlYXBz
L210a19zZWN1cmVfaGVhcC5jIHwgNjEgKysrKysrKysrKysrKysrKysrKysrKysrKw0KPj4gwqAg
MSBmaWxlIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jIA0KPj4gYi9kcml2ZXJzL2RtYS1i
dWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMNCj4+IGluZGV4IGJiZjFjOGRjZTIzZS4uZTNkYTMz
YTNkMDgzIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVf
aGVhcC5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMN
Cj4+IEBAIC0xMCw2ICsxMCwxMiBAQA0KPj4gwqAgI2luY2x1ZGUgPGxpbnV4L2Vyci5oPg0KPj4g
wqAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KPj4gwqAgI2luY2x1ZGUgPGxpbnV4L3NsYWIu
aD4NCj4+ICsjaW5jbHVkZSA8bGludXgvdGVlX2Rydi5oPg0KPj4gKyNpbmNsdWRlIDxsaW51eC91
dWlkLmg+DQo+PiArDQo+PiArI2RlZmluZSBUWl9UQV9NRU1fVVVJRCAiNDQ3NzU4OGEtODQ3Ni0x
MWUyLWFkMTUtZTQxZjEzOTBkNjc2Ig0KPj4gKw0KPg0KPiBJcyB0aGlzIFVVSUQgdGhlIHNhbWUg
Zm9yIGFsbCBTb0NzIGFuZCBhbGwgVFogdmVyc2lvbnM/DQoNCkFuZCBob3cgaXMgdGhpcyBleHBv
c2VkPyBJZiBpdCdzIHBhcnQgb2YgdGhlIFVBUEkgdGhlbiBpdCBzaG91bGQgDQpwcm9iYWJseSBi
ZXR0ZXIgYmUgZGVmaW5lZCBzb21ld2hlcmUgaW4gaW5jbHVkZS91YXBpLg0KDQpSZWdhcmRzLA0K
Q2hyaXN0aWFuLg0KDQo+DQo+IFRoYW5rcywNCj4gQW5nZWxvDQo+DQo+DQo+PiArI2RlZmluZSBN
VEtfVEVFX1BBUkFNX05VTcKgwqDCoMKgwqDCoMKgIDQNCj4+IMKgIMKgIC8qDQo+PiDCoMKgICog
TWVkaWFUZWsgc2VjdXJlIChjaHVuaykgbWVtb3J5IHR5cGUNCj4+IEBAIC0yOCwxNyArMzQsNzIg
QEAgc3RydWN0IG10a19zZWN1cmVfaGVhcF9idWZmZXIgew0KPj4gwqAgc3RydWN0IG10a19zZWN1
cmVfaGVhcCB7DQo+PiDCoMKgwqDCoMKgIGNvbnN0IGNoYXLCoMKgwqDCoMKgwqDCoCAqbmFtZTsN
Cj4+IMKgwqDCoMKgwqAgY29uc3QgZW51bSBrcmVlX21lbV90eXBlIG1lbV90eXBlOw0KPj4gK8Kg
wqDCoCB1MzLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWVtX3Nlc3Npb247DQo+PiArwqDCoMKg
IHN0cnVjdCB0ZWVfY29udGV4dMKgwqDCoCAqdGVlX2N0eDsNCj4+IMKgIH07DQo+PiDCoCArc3Rh
dGljIGludCBtdGtfb3B0ZWVfY3R4X21hdGNoKHN0cnVjdCB0ZWVfaW9jdGxfdmVyc2lvbl9kYXRh
ICp2ZXIsIA0KPj4gY29uc3Qgdm9pZCAqZGF0YSkNCj4+ICt7DQo+PiArwqDCoMKgIHJldHVybiB2
ZXItPmltcGxfaWQgPT0gVEVFX0lNUExfSURfT1BURUU7DQo+PiArfQ0KPj4gKw0KPj4gK3N0YXRp
YyBpbnQgbXRrX2tyZWVfc2VjdXJlX3Nlc3Npb25faW5pdChzdHJ1Y3QgbXRrX3NlY3VyZV9oZWFw
IA0KPj4gKnNlY19oZWFwKQ0KPj4gK3sNCj4+ICvCoMKgwqAgc3RydWN0IHRlZV9wYXJhbSB0X3Bh
cmFtW01US19URUVfUEFSQU1fTlVNXSA9IHswfTsNCj4+ICvCoMKgwqAgc3RydWN0IHRlZV9pb2N0
bF9vcGVuX3Nlc3Npb25fYXJnIGFyZyA9IHswfTsNCj4+ICvCoMKgwqAgdXVpZF90IHRhX21lbV91
dWlkOw0KPj4gK8KgwqDCoCBpbnQgcmV0Ow0KPj4gKw0KPj4gK8KgwqDCoCBzZWNfaGVhcC0+dGVl
X2N0eCA9IHRlZV9jbGllbnRfb3Blbl9jb250ZXh0KE5VTEwsIA0KPj4gbXRrX29wdGVlX2N0eF9t
YXRjaCwNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgTlVMTCwgTlVMTCk7DQo+PiArwqDCoMKgIGlmIChJU19FUlIoc2VjX2hlYXAtPnRl
ZV9jdHgpKSB7DQo+PiArwqDCoMKgwqDCoMKgwqAgcHJfZXJyKCIlczogb3BlbiBjb250ZXh0IGZh
aWxlZCwgcmV0PSVsZFxuIiwgc2VjX2hlYXAtPm5hbWUsDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBQVFJfRVJSKHNlY19oZWFwLT50ZWVfY3R4KSk7DQo+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIC1FTk9ERVY7DQo+PiArwqDCoMKgIH0NCj4+ICsNCj4+ICvCoMKgwqAgYXJnLm51
bV9wYXJhbXMgPSBNVEtfVEVFX1BBUkFNX05VTTsNCj4+ICvCoMKgwqAgYXJnLmNsbnRfbG9naW4g
PSBURUVfSU9DVExfTE9HSU5fUFVCTElDOw0KPj4gK8KgwqDCoCByZXQgPSB1dWlkX3BhcnNlKFRa
X1RBX01FTV9VVUlELCAmdGFfbWVtX3V1aWQpOw0KPj4gK8KgwqDCoCBpZiAocmV0KQ0KPj4gK8Kg
wqDCoMKgwqDCoMKgIGdvdG8gY2xvc2VfY29udGV4dDsNCj4+ICvCoMKgwqAgbWVtY3B5KCZhcmcu
dXVpZCwgJnRhX21lbV91dWlkLmIsIHNpemVvZih0YV9tZW1fdXVpZCkpOw0KPj4gKw0KPj4gK8Kg
wqDCoCByZXQgPSB0ZWVfY2xpZW50X29wZW5fc2Vzc2lvbihzZWNfaGVhcC0+dGVlX2N0eCwgJmFy
ZywgdF9wYXJhbSk7DQo+PiArwqDCoMKgIGlmIChyZXQgPCAwIHx8IGFyZy5yZXQpIHsNCj4+ICvC
oMKgwqDCoMKgwqDCoCBwcl9lcnIoIiVzOiBvcGVuIHNlc3Npb24gZmFpbGVkLCByZXQ9JWQ6JWRc
biIsDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzZWNfaGVhcC0+bmFtZSwgcmV0
LCBhcmcucmV0KTsNCj4+ICvCoMKgwqDCoMKgwqDCoCByZXQgPSAtRUlOVkFMOw0KPj4gK8KgwqDC
oMKgwqDCoMKgIGdvdG8gY2xvc2VfY29udGV4dDsNCj4+ICvCoMKgwqAgfQ0KPj4gK8KgwqDCoCBz
ZWNfaGVhcC0+bWVtX3Nlc3Npb24gPSBhcmcuc2Vzc2lvbjsNCj4+ICvCoMKgwqAgcmV0dXJuIDA7
DQo+PiArDQo+PiArY2xvc2VfY29udGV4dDoNCj4+ICvCoMKgwqAgdGVlX2NsaWVudF9jbG9zZV9j
b250ZXh0KHNlY19oZWFwLT50ZWVfY3R4KTsNCj4+ICvCoMKgwqAgcmV0dXJuIHJldDsNCj4+ICt9
DQo+PiArDQo+PiDCoCBzdGF0aWMgc3RydWN0IGRtYV9idWYgKg0KPj4gwqAgbXRrX3NlY19oZWFw
X2FsbG9jYXRlKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwgc2l6ZV90IHNpemUsDQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBmZF9mbGFncywgdW5zaWduZWQg
bG9uZyBoZWFwX2ZsYWdzKQ0KPj4gwqAgew0KPj4gK8KgwqDCoCBzdHJ1Y3QgbXRrX3NlY3VyZV9o
ZWFwICpzZWNfaGVhcCA9IGRtYV9oZWFwX2dldF9kcnZkYXRhKGhlYXApOw0KPj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgbXRrX3NlY3VyZV9oZWFwX2J1ZmZlciAqc2VjX2J1ZjsNCj4+IMKgwqDCoMKgwqAg
REVGSU5FX0RNQV9CVUZfRVhQT1JUX0lORk8oZXhwX2luZm8pOw0KPj4gwqDCoMKgwqDCoCBzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPj4gwqDCoMKgwqDCoCBpbnQgcmV0Ow0KPj4gwqAgK8KgwqDC
oCAvKg0KPj4gK8KgwqDCoMKgICogVEVFIHByb2JlIG1heSBiZSBsYXRlLiBJbml0aWFsaXNlIHRo
ZSBzZWN1cmUgc2Vzc2lvbiBpbiB0aGUgDQo+PiBmaXJzdA0KPj4gK8KgwqDCoMKgICogYWxsb2Nh
dGluZyBzZWN1cmUgYnVmZmVyLg0KPj4gK8KgwqDCoMKgICovDQo+PiArwqDCoMKgIGlmICghc2Vj
X2hlYXAtPm1lbV9zZXNzaW9uKSB7DQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0ID0gbXRrX2tyZWVf
c2VjdXJlX3Nlc3Npb25faW5pdChzZWNfaGVhcCk7DQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHJl
dCkNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKHJldCk7DQo+PiAr
wqDCoMKgIH0NCj4+ICsNCj4+IMKgwqDCoMKgwqAgc2VjX2J1ZiA9IGt6YWxsb2Moc2l6ZW9mKCpz
ZWNfYnVmKSwgR0ZQX0tFUk5FTCk7DQo+PiDCoMKgwqDCoMKgIGlmICghc2VjX2J1ZikNCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsNCj4NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
