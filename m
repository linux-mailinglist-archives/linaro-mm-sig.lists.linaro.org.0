Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C76EA4F803C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 15:13:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 018F3402AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 13:13:19 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam08on2060.outbound.protection.outlook.com [40.107.102.60])
	by lists.linaro.org (Postfix) with ESMTPS id 9FA203EA2C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 13:13:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JFsZ5iZ5g7TtZdH0V4ET1xcHtTXW7RPtXjFw8IXUyx23SGXlbKJjxYcMA1o5v6FtHPOw+p0Rs//PTOEMb/speJS0MHJNjkCVuEyO8zArc8S7MAE2QpOupHIHj6C9R2L1vD7AVAACTDz6S7IyhI0xhPgFtQ65NI2pV+YSG//5Qwz95XhIXfEfsCyuwgjdynZ00KR76PrfoF4iRtz/uBCyHnqKdg0XvlEi5m5QRj9xeZ+WMv1aISApGN9HJXtei0aidUeRObeeqY3ramIGrzBf85ZCs64MnpXPzJIx52P+JQmhwyPk6Nk8s8RQyOi7CkgFTK+oSgIATAHLeALgUqydfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YXToUkdfDm/Jl+kn1x0+tupGcvaQyprNizhasCL5QHM=;
 b=VCY1jH5VQOu2zsTu4QweGx0axemfcisea4AhaSRSw71eZmPsGoZzQtx77YSCVL7fYrEmKXvSb6Xz4RV0zKmtguWV+6+7zNr1kDqoWl0vOxU0r/9sV7XnY6MkF2HKGHbdoCm1DUHZRSQyvk0KUpNahwfb1kumoxr1EV45ulEUUpX8+iLar4MVwuezJFq4iybjo2WLzzQTMmCJdS8KSOzKzSqPon6detBcfoicDuG8RYvXLUSs6p4JjqkYEzVqfJjCjbp11S6rlQ1msPh1jLAh2nqLsiIn3ZJ+vrffNd4/aDaw1MfChQkA+ZcswEUFwkzFbKenqmU82iFey4RYwTr9xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YXToUkdfDm/Jl+kn1x0+tupGcvaQyprNizhasCL5QHM=;
 b=MfiktuvjPBC8ebD0v/0hG+lyU4/qPaurSzv8SwjFUEN2HD+Zg9C4Lnup9a6WuVwvAuHE0UTO+Kk6IKN298s5/StC8qVhmWGxKhDJslsgNr+YuwoCO+h24r9YoWAOsnDGWo3BYmPdtvjqXpbvPVWOeG1FR83O3Z7GJGj9RSsbZqU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SN1PR12MB2398.namprd12.prod.outlook.com (2603:10b6:802:26::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.22; Thu, 7 Apr
 2022 13:13:12 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8%5]) with mapi id 15.20.5144.022; Thu, 7 Apr 2022
 13:13:12 +0000
Message-ID: <79648b84-e7d0-4c38-d8f1-cc569238ee7e@amd.com>
Date: Thu, 7 Apr 2022 15:13:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Javier Martinez Canillas <javierm@redhat.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 intel-gfx@lists.freedesktop.org
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-3-christian.koenig@amd.com>
 <29677a4e-42dc-d35e-f487-f8b344678bee@redhat.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <29677a4e-42dc-d35e-f487-f8b344678bee@redhat.com>
X-ClientProxiedBy: AM7PR02CA0017.eurprd02.prod.outlook.com
 (2603:10a6:20b:100::27) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d8caa9f-9ca8-4e0f-2e54-08da18985ddd
X-MS-TrafficTypeDiagnostic: SN1PR12MB2398:EE_
X-Microsoft-Antispam-PRVS: 
	<SN1PR12MB23989403BF0AFAB3B4414B7E83E69@SN1PR12MB2398.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2XCw2qY5O8Xi2PAY1+VRBRu4Daqa/znJxDGGB83fTYDHSTH4zGL6ldnFaFadoiqLmj0ghXPTMWgHRkvSXzLnDUC/VtTn7tqBM4/jwYooyd7vhR7zZv51nsZ9e6iK0PMJEeaw7Zqf4h3iG24xLOgk07s4TflgQYmRSmWJLEeJ3y0MGzW0h7bYVoXXwkFZvmOoPCKIy0CBeW7Pfb/WEuvqn9upvIC3OkZgJ2ARQsNnJjHd94Q/MQdB0UdFfWmImVty2bhl1Kl6yaknUeDwNu77MrGCQ1Ez7GtZ9eecU2hKfiCzt2iYig+DSZiuKC9vcE3GKISj1EowIRuwra2gvQC4WFN6RFZ2mvokqgxg/4ip9PzD66lEnJMVRaZdzux0I3r9yeavwt8SqWKtUhui0IthbB0VPXclIWU6BJE4N48OsLDOwOGzVfGaFL6zYFmKQhw+87SjKFx+xB9chyzAxVhehwerJsBC8jkUqdN8uBezVe9fJIn5WbuO75RnzdccBtcE1fUDur9KuGGwJ+OUgJvcHADKBZHJOcB7AKf4ZEZ73NNNX2Q6flWQeGK+ov+DGlg8uu3JU5+uABEtqrQIGPx+YANuEc89Fb0cM7ZUKSZvwDNN1qEGpBaqKQM/RJDbQ6JfNnRo3x02y7Z7NpZ3kTmw1GiRg72qpCjh1Uw1te25EKtUsUpbwXVquUbF3EH8amxjkPrXc3r5WJfqM6WJHY2Dv9gUaSSKdWXvQamhy7OdyoKqbtJNw/FUkuIKlizhb2YZ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(31696002)(38100700002)(86362001)(5660300002)(6486002)(36756003)(66556008)(66476007)(66574015)(316002)(8676002)(8936002)(110136005)(26005)(186003)(66946007)(2616005)(83380400001)(31686004)(508600001)(53546011)(2906002)(6666004)(6512007)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Vkl6RWFSMDh1bVFMM1plZ1laajVjYnhZMDJ0MmdSbXV4K0c3d2ZZMkViV0or?=
 =?utf-8?B?cTVpdHNvNTNtSWNzV0N6RzZTS3BUT0ZvWDVYOGxXbHFCL0szai9jaEFSVkhv?=
 =?utf-8?B?SU9DR1lIQ1dHUE5JeXl4eTR0cHh6dEkvajluOFhXN3FMSTBrUTd5RTR6Z01q?=
 =?utf-8?B?Z21Ubkgzc1o5bWFqcWN0cFJoTFJTUGtyWTFmdk9QSHNwcWZ5YVlqM1VOTExZ?=
 =?utf-8?B?OGtmM2RrakxzTXJSUTQyYkcyZktYeTZ4MmQ3ZUozZkQ3dExCRnpIcTFWZm81?=
 =?utf-8?B?R21aOVhtTDYwNlFwWEhoOUw4Rnpibzh0cjNkbkEwMTlIdXo1SHBlTXVma0x5?=
 =?utf-8?B?bnBwNDcyVXMrNU5QMFNUSkh5cUN3Q0daT2czSnNKamt1SUN0UWhla29PQUhQ?=
 =?utf-8?B?NG5aU1BQRkpoOUZtNkhzeHUrVU0rOGNjTnZhQlBQaFdOdXVvVzVpNTl2cGtG?=
 =?utf-8?B?L0RvdmR3cnBsN3VOaEsyd0dzSzlxZDBCTVdVT053NElvQlN6YmVmYThLVVV5?=
 =?utf-8?B?QjZVS1N6cS91akdoVzJ4ZkxjZFgvditjbnpPZWFwNGk3Rk1LZHQ0TUVWd1Ry?=
 =?utf-8?B?UHhPWE1HV2dzcU10MEJ1aElJaTV4SGRFcld0c2hWOTFnTmtIVkFVSEZZbzhi?=
 =?utf-8?B?eEp1M0cyYmVkN0QzcWVHeEgyVW1DbmVDYXd4VUszRm1iSlhodDk1dDh3OXIx?=
 =?utf-8?B?dnZTOUFTQnF0ZGx2TVV1ZTZWbTJ2L0M1eHZGdEI0NU5HNDBqS0d0ZVhsYk9s?=
 =?utf-8?B?N1h4dHZ0OTEyL3BFQ3o1ZThsc1J2LzVXbmNuVVZvTUNpUUZtblZEZTlEY2VL?=
 =?utf-8?B?b2ZLL1dQNEdrOTVPUFNrOHoyeDRQVGpCajJENFBWNVkzWjkxNnV1TEZtaXhU?=
 =?utf-8?B?enVFN0l0QS9HZ1ZIbjQveU1GVExlNnFBRnhyU0JKVEMvalhiZDdNMGMySkpl?=
 =?utf-8?B?WWhuZ256R292MzBSM1dMTHJ3a0NpbndFUFk1YjJzU1FKNDNoSTV2dlc0MU5N?=
 =?utf-8?B?UUJCNmtDRGxYMkdidktVbXQveUo0eHl1UXpXRnpqRklTRzNtV0Z3UHo3aVli?=
 =?utf-8?B?M0g5dmVvMGRNVndhWm03Nmc0dFk4U2x5U0NUVnlpWGNMdnlQcWdLUnZWL2Rr?=
 =?utf-8?B?MVhMaXpRaHg4OW4vblpMOEo2WC9RMWVIZENySFJRRFB3N29rRDZMOWtRaW1T?=
 =?utf-8?B?RU5pZ0xmd0U5TVA2RmJtVVUzODRHL2QrZnlpMXdtdmFQS3o0bWljRjRxR0xm?=
 =?utf-8?B?SXFENTdWQnVWaDZ2dDF4LzJwTm02Wk81SGFSTjdCQXRTd2dRQURVMDhnK3hR?=
 =?utf-8?B?aER2WVZHWWVVN3FUckNNS1U3OVBzcXc1YW5wUndiWnV2Q3pOaC9CY2Rwc2Rt?=
 =?utf-8?B?Wjk0eFhmRmFDeDZ4R3ZxemJlZFhtS0FXTGcyb0ZiTGRMdDBubEtFSGE3NG5V?=
 =?utf-8?B?cnYyU3J6djFNZzlMTStwdXZOYjg2bHNXOGgrcWlLU1dNbkZHdTdRQjVneWVp?=
 =?utf-8?B?ejI1REdlNEhsQWVHS1JCc0xzeDhTOFJhaDV6T25iYlV2aXkyZm1HK3FnbUxz?=
 =?utf-8?B?Z1A5d0k5VXYySWZYNmh2MmlVZXZaeHhOTkdPVURyVjg2dHdvUkNxMWlCNjFj?=
 =?utf-8?B?d0Fvczd4Q2NydWQ2eGhRU2VTc2J4ZFpVVjVreXF0QytzVFd3Rkltc2RoeHdU?=
 =?utf-8?B?RVg1bDFQL3RDemwxT09QSks4ZGx6dzhoSVVYRk5HWWd3RjMxQTg0MEhKa3FH?=
 =?utf-8?B?UEg4cWFVb21XZldSY0VrMmdielBUYUtQQnpMb1dQVkpKSStGRU0vRUhONXBD?=
 =?utf-8?B?NFJrMzJjZUJXWnoyQmpUWEtzMnp2cHduNHAzV1E4SURzZ3ZuSnA1d0RNLzRm?=
 =?utf-8?B?ZkhBbW11QUZTMVlRclhCa0MwV0ViMFVMT0FYcXFJRG1ORC81OU4ycnMyWElt?=
 =?utf-8?B?akgzc2ROdzlhWktscmFrclpuZGhYUUJySHMrWUQ1TzNJbG5qMFVjbmMvUit4?=
 =?utf-8?B?RlFhcmhrVVVoRU0yNllweG5vc0djTlIrMTlycXlxNThabStTWFM3anBnZUU3?=
 =?utf-8?B?dkRvZlBwUnZ3YStmdCt1VkpwWkIvUTB6S29IbVJ0Tm9WRjZ4Rk5obkdMS3N0?=
 =?utf-8?B?S3k0NldoeFg5ZzM4MWRYYU52enpEd1R4aEtJaC9HUTFuTkxmbWl2TTJadmtR?=
 =?utf-8?B?T0VFMUtsSEU1Rm5WMHB2TEtGeHpVZ2ZMRWFKNFJUaWE5am1QeHJocUd6QUhx?=
 =?utf-8?B?T2E3WVZZV1JzOXFxLytDYU01SjQ3dXZReGhHYldycmNvMWhqWU85aDBDbkZK?=
 =?utf-8?B?L01tbStUR3NKY0toR0lqM1dtZWNtL3VaZSt5Zkl4QnhWelpiWi9Sdz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d8caa9f-9ca8-4e0f-2e54-08da18985ddd
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2022 13:13:12.1624
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CLsCl8AGLElQB/iyFQSXEz1KmDoODg/P9/8j78LcHHuyTlTdkf6SbFdLw0tJOwAK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2398
Message-ID-Hash: HDCJBZD6MC4PURFC5RH4IHYSNQTWNXRD
X-Message-ID-Hash: HDCJBZD6MC4PURFC5RH4IHYSNQTWNXRD
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/15] dma-buf: specify usage while adding fences to dma_resv obj v7
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HDCJBZD6MC4PURFC5RH4IHYSNQTWNXRD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDcuMDQuMjIgdW0gMTU6MDggc2NocmllYiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXM6DQo+
IEhlbGxvIENocmlzdGlhbiwNCj4NCj4gT24gNC83LzIyIDEwOjU5LCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPj4gSW5zdGVhZCBvZiBkaXN0aW5ndGluZyBiZXR3ZWVuIHNoYXJlZCBhbmQgZXhj
bHVzaXZlIGZlbmNlcyBzcGVjaWZ5DQo+PiB0aGUgZmVuY2UgdXNhZ2Ugd2hpbGUgYWRkaW5nIGZl
bmNlcy4NCj4+DQo+PiBSZXdvcmsgYWxsIGRyaXZlcnMgdG8gdXNlIHRoaXMgaW50ZXJmYWNlIGlu
c3RlYWQgYW5kIGRlcHJlY2F0ZSB0aGUgb2xkIG9uZS4NCj4+DQo+IFRoaXMgcGF0Y2ggYnJva2Ug
Y29tcGlsYXRpb24gZm9yIHRoZSB2YzQgRFJNIGRyaXZlci4NCg0KTXkgYXBvbG9naWVzIGZvciB0
aGF0LiBJJ3ZlIHRyaWVkIHJlYWxseSBoYXJkIHRvIGNhdGNoIGFsbCBjYXNlcywgYnV0IA0KbG9v
a3MgbGlrZSBJIG1pc3NlZCBzb21lLg0KDQo+IEkndmUgdGhpcyBwYXRjaCBsb2NhbGx5DQo+IHdo
aWNoIHNlZW1zIHRvIHdvcmsgYnV0IEkgZG9uJ3Qga25vdyBlbm91Z2ggYWJvdXQgdGhlIGZlbmNl
IEFQSSB0byBrbm93IGlmDQo+IGlzIGNvcnJlY3QuDQo+DQo+IElmIHlvdSB0aGluayBpcyB0aGUg
cHJvcGVyIGZpeCB0aGVuIEkgY2FuIHBvc3QgaXQgYXMgYSBwYXRjaC4NCg0KWWVzLCB0aGF0IHBh
dGNoIGxvb2tzIGFic29sdXRlbHkgY29ycmVjdCB0byBtZS4NCg0KRmVlbCBmcmVlIHRvIGFkZCBh
biBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyANCjxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+IGFuZCBDQyBtZSBzbyB0aGF0IEkgY2FuIHB1c2ggaXQgdG8gDQpkcm0tbWlzYy1uZXh0IEFT
QVAuDQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPg0KPiAgRnJvbSAzZTk2ZGI0ODI3ZWY2OWIz
ODkyNzQ3NjY1OWNiYjQ0NjlhMDI0NmU2IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KPiBGcm9t
OiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4NCj4gRGF0ZTog
VGh1LCA3IEFwciAyMDIyIDE0OjU0OjA3ICswMjAwDQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL3Zj
NDogVXNlIG5ld2VyIGZlbmNlIEFQSSB0byBmaXggYnVpbGQgZXJyb3INCj4NCj4gVGhlIGNvbW1p
dCA3MzUxMWVkZjhiMTkgKCJkbWEtYnVmOiBzcGVjaWZ5IHVzYWdlIHdoaWxlIGFkZGluZyBmZW5j
ZXMgdG8NCj4gZG1hX3Jlc3Ygb2JqIHY3IikgcG9ydGVkIGFsbCB0aGUgRFJNIGRyaXZlcnMgdG8g
dXNlIHRoZSBuZXdlciBmZW5jZSBBUEkNCj4gdGhhdCBzcGVjaWZpZXMgdGhlIHVzYWdlIHdpdGgg
dGhlIGVudW0gZG1hX3Jlc3ZfdXNhZ2UgcmF0aGVyIHRoYW4gZG9pbmcNCj4gYW4gZXhwbGljaXQg
c2hhcmVkIC8gZXhjbHVzaXZlIGRpc3RpbmN0aW9uLg0KPg0KPiBCdXQgdGhlIGNvbW1pdCBkaWRu
J3QgZG8gaXQgcHJvcGVybHkgaW4gdHdvIGNhbGxlcnMgb2YgdGhlIHZjNCBkcml2ZXIsDQo+IGxl
YWRpbmcgdG8gYnVpbGQgZXJyb3JzLg0KPg0KPiBGaXhlczogNzM1MTFlZGY4YjE5ICgiZG1hLWJ1
Zjogc3BlY2lmeSB1c2FnZSB3aGlsZSBhZGRpbmcgZmVuY2VzIHRvIGRtYV9yZXN2IG9iaiB2NyIp
DQo+IFNpZ25lZC1vZmYtYnk6IEphdmllciBNYXJ0aW5leiBDYW5pbGxhcyA8amF2aWVybUByZWRo
YXQuY29tPg0KPiAtLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9nZW0uYyB8IDYgKysr
Ky0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkN
Cj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2dlbS5jIGIvZHJpdmVy
cy9ncHUvZHJtL3ZjNC92YzRfZ2VtLmMNCj4gaW5kZXggMzg1NTAzMTdlMDI1Li45ZWFmMzA0ZmMy
MGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2dlbS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2dlbS5jDQo+IEBAIC01NDYsNyArNTQ2LDggQEAgdmM0
X3VwZGF0ZV9ib19zZXFub3Moc3RydWN0IHZjNF9leGVjX2luZm8gKmV4ZWMsIHVpbnQ2NF90IHNl
cW5vKQ0KPiAgIAkJYm8gPSB0b192YzRfYm8oJmV4ZWMtPmJvW2ldLT5iYXNlKTsNCj4gICAJCWJv
LT5zZXFubyA9IHNlcW5vOw0KPiAgIA0KPiAtCQlkbWFfcmVzdl9hZGRfZmVuY2UoYm8tPmJhc2Uu
YmFzZS5yZXN2LCBleGVjLT5mZW5jZSk7DQo+ICsJCWRtYV9yZXN2X2FkZF9mZW5jZShiby0+YmFz
ZS5iYXNlLnJlc3YsIGV4ZWMtPmZlbmNlLA0KPiArCQkJCSAgIERNQV9SRVNWX1VTQUdFX1JFQUQp
Ow0KPiAgIAl9DQo+ICAgDQo+ICAgCWxpc3RfZm9yX2VhY2hfZW50cnkoYm8sICZleGVjLT51bnJl
Zl9saXN0LCB1bnJlZl9oZWFkKSB7DQo+IEBAIC01NTcsNyArNTU4LDggQEAgdmM0X3VwZGF0ZV9i
b19zZXFub3Moc3RydWN0IHZjNF9leGVjX2luZm8gKmV4ZWMsIHVpbnQ2NF90IHNlcW5vKQ0KPiAg
IAkJYm8gPSB0b192YzRfYm8oJmV4ZWMtPnJjbF93cml0ZV9ib1tpXS0+YmFzZSk7DQo+ICAgCQli
by0+d3JpdGVfc2Vxbm8gPSBzZXFubzsNCj4gICANCj4gLQkJZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVu
Y2UoYm8tPmJhc2UuYmFzZS5yZXN2LCBleGVjLT5mZW5jZSk7DQo+ICsJCWRtYV9yZXN2X2FkZF9m
ZW5jZShiby0+YmFzZS5iYXNlLnJlc3YsIGV4ZWMtPmZlbmNlLA0KPiArCQkJCSAgIERNQV9SRVNW
X1VTQUdFX1dSSVRFKTsNCj4gICAJfQ0KPiAgIH0NCj4gICANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
