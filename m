Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A007C83165B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 11:02:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E00643C6E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 10:02:52 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2086.outbound.protection.outlook.com [40.107.92.86])
	by lists.linaro.org (Postfix) with ESMTPS id AEFD63E930
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 10:02:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=tZKYZ8NI;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.86 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jZZdc1eYMKajVCO5WoJrw3celj88FfcwV5gEdzu5ZVzyWrGddIj36VvDUESbAuA833PXspg0E6WnYZy7e6dOqSnoVC53vLTF8+EZUWEMOsrqwM/BXTCwdP3xRL0585ULHfX+14yTI+6XwdtGY72HEfd526/knQ31oz6URLA3GE598NcuAawFspi1SBnH7hq3+I7KIl7+NHlHajGqFPpKNN1R25ksigMQwqBJUnhlaCS7md7y10VT5iDWbpEX7mgSTGU+ZURy6JIsmv0lrhAiBu8e2N2plMmct/QEtOoekkMxsTuoN7SSdufUoB3xiGiWvw6myHyXWr9C+UsbM5DLqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G7fDWCJHpxQ6ByzLIYgSDsVdTYce/RN//sPN8A9hEyc=;
 b=iAEeFeBwbHgBmTN7uVvoK5JIq7UaIQd1CwGoGiL2wo6blEKoYmvVUJRbKfHGVcCaG+4YPVIG7gU86j6T4ECRjsDR+pL6x2FNz+OVOV3GKmCeEMIv3m2T+WKX+m4MPzuH3NqoYhAlfken4fGxhI17dZDFKRAC0gB7Xue77eIc1VvcVwen98q+putnVMTTiC2MHjxSHY+bfNDy3SOfvWLYAGfidP3TXSDf8WwcpW3ZbqvvM46TVhYPauYWBTBL8VwFLgw8yCQqHet5h/9Y/7Fe/SAUqZlU4W0JuRFaHaaZcgIq/phr71sMoCtifucIQciB2D8RpjU4lwO4fF9oscmJGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7fDWCJHpxQ6ByzLIYgSDsVdTYce/RN//sPN8A9hEyc=;
 b=tZKYZ8NIaB5Ut/pL/vK9wf2E1XRU4bx6GjQkyx5EmNfWbD+ZUIKfokj4Rd+wko+nEm5cWmP7sA8ZAm1fyw2fQ76IoyU/71O+B28DJUTxT8tia5+CcNkBGuUAXQPfGLnkquIDxoCXAg4KANZFzztWNyujLCD22R/1g04NJpWoUWE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BY5PR12MB4227.namprd12.prod.outlook.com (2603:10b6:a03:206::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.23; Thu, 18 Jan
 2024 10:02:29 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653%4]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 10:02:29 +0000
Message-ID: <20a68f86-27f0-48f4-a066-7dcf0092858e@amd.com>
Date: Thu, 18 Jan 2024 11:02:22 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "T.J. Mercier" <tjmercier@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 Sandeep Patil <sspatil@android.com>, Laura Abbott <labbott@redhat.com>
References: <20240117181141.286383-1-tjmercier@google.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20240117181141.286383-1-tjmercier@google.com>
X-ClientProxiedBy: FR5P281CA0035.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f3::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BY5PR12MB4227:EE_
X-MS-Office365-Filtering-Correlation-Id: f578dee8-0f4b-4adb-811f-08dc180c9488
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Sz6Ow55WpLFyY+SaNeQnJgESMviI6B0jaBnyBJqc53Yzj2C/CayBSeRrOCOA10wSw7hxkTPwUR+H1XIS6FCtT0D14U6sbgy1hXVHpdn5fg0+G21KRev47I3tVwdyTmfaPMiF3WgTB0zJ+XG40ZkolEYWG9kiR8ICxaJxLm9zCQrDHjGfQXhL5kVJmDdjQSuH1TIh1wLWd8mCK83iZTNki960YznK0euEM+riKRqyCvnuoZPiczhMSwX1g3l2nQ03msdo99epbQY2p8FSdDhIltHcs58JN/1eudiFLndcqdFl9irfZhsOjWbO34xF/MlWDOzG3obJk8fVTnbd8NFHRwvM8W9H+jpn+tKqSrB7AYr6Zzi8wdJgp/9TCDrWDbdedIaAQiMmBzDSy1qSx4c7v2f5XkIlSrJ0dzj9HNLkAR4ulUfbWL8BTyCPMXFh+Y8Qj1XyEvaMf/y5W2rWu7xVttl/IqPSGkxYCegnQWdjT68CXH7bOTLKx7w8c0nK17SjRy0+53ewIzcioqkYhKfpDKAGyPoy+FpdqsZ3DR9Ff6AV4p77EHWJ0Jvil/UHzHLZi3LYtIfE/BkzEkVlQtBksQDehcHKN/ZbVaz/hdIbbbzRtiH+xw36ndbFdWrz7Ue5N8rPVobkxl5cp3kvd9tljQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(366004)(39860400002)(376002)(136003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(38100700002)(166002)(86362001)(31696002)(6486002)(36756003)(316002)(66556008)(66946007)(66476007)(110136005)(54906003)(478600001)(966005)(6512007)(33964004)(6506007)(6666004)(2906002)(8936002)(5660300002)(7416002)(31686004)(4326008)(8676002)(41300700001)(83380400001)(26005)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?blNEYVlHZ1JLWmx0K3F6dHpqcWtzeTNkU2kyYVhMNGhjNi9DNUtZMkpSWklq?=
 =?utf-8?B?WnJmRkhoOThsQ1dROGJOc0NycldKMUZOUGdsdE5HcEVSejVjVTYzd3MwQ3dV?=
 =?utf-8?B?bTd3Q2xKZkx2aWNRRGNXTDhFS3hvTUZoQXZXUGhlazl1VlBKRmI5YVY0T282?=
 =?utf-8?B?MWlKd0k4cnA3ay85Qk9RRWR3VkxSR0JVZlFwLzZOSVdJT3lGKysrMkdvYXVQ?=
 =?utf-8?B?YWlicEVCR0lDSE5TNzlRL0ZJeVFzeTRZdVh0TU42TUtNd3RMbm81dWlRem9w?=
 =?utf-8?B?RE5udk9qQnVSb3l3SVNheW9QZmRRVk4zc0p6aXkzVGhoaEZZb1RCdHc5TUdU?=
 =?utf-8?B?clcvVFVpMEptL01zck9KZ1hzdGpvSWdRUXBXR25BRGdxUGJramJ6VFQ0cml2?=
 =?utf-8?B?a09sNVBrNUZkSytlU1drOTZYRmplRHVBalZtSEtlbGhiSlE2TklaaVlZV2h1?=
 =?utf-8?B?YU9IeDNETVBWSGR0UzJtcFRTcnNlclJOcExSWkRvTTBRbGMwVURhMlhLU3JF?=
 =?utf-8?B?OXZhMU4wTGt2KzNNK3RiOUd2ZHA0a2QreFJxQnZOOE1nSGpOUkRUTmJWZCs0?=
 =?utf-8?B?UGJyVWxyRThRNndvTDlraWd2MEJ0NHozdVZVRGFKSExsZ0x1cVBPSDQvVmFZ?=
 =?utf-8?B?czY5RHl1cXU5clpmMTN2NXZBcmtDd3EyeTZVMGcrRkQ5WmdLWlN0Vy9RMzU4?=
 =?utf-8?B?S1ROTFEwZjUrcU94alFNMExIcnhZdmM3Zkd4d1RTR01QZE1vRXk0Y0xFNlJH?=
 =?utf-8?B?c3hncFdEQ21PbkdqLzkxb2ZZVmVEUWMrT1BoUmN5dGNmS2g3UHBuNFB6L25P?=
 =?utf-8?B?UStiRzB1bUlGbmgyMlYxdDR0TzBzUzQza1F2dklWUmNzcDRabFV2bjhjVk5z?=
 =?utf-8?B?N3VFT1IrbnhJcXY1R0N0cENrbDhIbFU5bUdWejBtOXQ4OGF6aGE2VHVoWDZP?=
 =?utf-8?B?OTZZandrTmhsK1N4L3RHNG5TRVBxdU8xTDNxS0ZrSFJ4cmFtM3JMYnRNczZT?=
 =?utf-8?B?WFJHY3JJVVdWU0V0ZGovYjBNamRtODh6L0N5WnNvckx4ZkkvVGlpeFcxeUVH?=
 =?utf-8?B?bU9pZktLb3JjVHFKV3dIeUxhaFUxbjIvdjBFSlc4MHJOM09sR0ZNVXVKR1Fy?=
 =?utf-8?B?ZGZyK1RlRzY0K09USTFnWjFicFdGdXVnYVVka3NIVHlEbmhDQ3dleTBLMzBR?=
 =?utf-8?B?elNta3ozYjQwUGhCSkphMi84UDZPWHphaDVUWEtFYmhHQ1NJRHRSaytkTUs0?=
 =?utf-8?B?UHVocnpTMGw3Q1VFNjZGbkVaU0J0eVc0V1loalJPQUVOaHpQdHc5Njhra0Nn?=
 =?utf-8?B?Wmhzd0E1aXR6T1kyTHBuZStVVUJVTjZja1d1UW50WFdFQk1UNWJPTDZ2MkNn?=
 =?utf-8?B?UysramUva2l4dmRxUW12U3J1cU93N01qOHYycFV4N0Y2UHVER29hMDluR0ha?=
 =?utf-8?B?NUJiK0pnV21TdmZhU2kzMGhSQVF4cHJ4TXMxTDE5TXB0U3FNb3kwYWh4K3dV?=
 =?utf-8?B?TXhsS1lHV3o5QmQyd21hQXViY0ZWbXB6dWFUbTQ1QkFMRjlTejJ6RHlhOGpt?=
 =?utf-8?B?d29CajQ4Q0ltSHNXQmxXOHAyeU1aSGVZNVhXaDd0OGNvMEx2UVhWelVmZUkr?=
 =?utf-8?B?VHZPaUh3YmdiNy94c3lhb2FLR3IzRTBSMVlBeEo2QldKbkhqclVtWEEwR0Rx?=
 =?utf-8?B?b3lPUlMwQVN1Umpvc3B1cU5wK0VYMFpuSklCbFhyaUkrazNzcHgyV2NiM1Aw?=
 =?utf-8?B?NWE1cERqVDNKUUM5SFVuRHdRSE5ENy9sWmlTWU5Ddi9JQktqM1NkNDhCd1lZ?=
 =?utf-8?B?UkU3QjVibGhBd1l3QXZRVW1PcWR2YjF6cFBmY2c5dWgrRmpTd0loN0tWVVI0?=
 =?utf-8?B?U2JYOXc4Qk9VYllzbXdyYVQrNkhIS0t1RWh2Slp6SVZNdjlsbWR4ejFCTFl1?=
 =?utf-8?B?ODFwdDkrWGxRUjBOUUxLSXNHZ3dTZENzUTJqNVlCaGd2TnpvOTdaWjRBbzJj?=
 =?utf-8?B?ZkoxWTIzeDdpRWNGc3ErREd0WXVrNUhyK3QxSm05aE8rekRLRzFidXNSQUoy?=
 =?utf-8?B?Q1RaYytlZEJRbFNhWWlZZVBPdHFqMW5BMFNiTE1TTnNIQXpFdnh1V1VjaVhw?=
 =?utf-8?Q?NX42fAuWBB3LShWZq3SSi/v0x?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f578dee8-0f4b-4adb-811f-08dc180c9488
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2024 10:02:29.2832
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iaQ9OZIEii1UFAgNfAu8DEyBo0FBTz/mO2D3tsPyP+YrbSJKhC1DSqEQhEDIuhEB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4227
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.86:from];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AEFD63E930
X-Spamd-Bar: --------
Message-ID-Hash: XZSET7VGOGVR4L4XSI4TJB3AH5FGUZYC
X-Message-ID-Hash: XZSET7VGOGVR4L4XSI4TJB3AH5FGUZYC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: android-mm@google.com, minchan@google.com, daniel@ffwll.ch, John Stultz <john.stultz@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Don't track CMA dma-buf pages under RssFile
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XZSET7VGOGVR4L4XSI4TJB3AH5FGUZYC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4329921031233698313=="

--===============4329921031233698313==
Content-Type: multipart/alternative;
 boundary="------------e9qSk2sYXbf5DiMrI9jyGXQS"
Content-Language: en-US

--------------e9qSk2sYXbf5DiMrI9jyGXQS
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTcuMDEuMjQgdW0gMTk6MTEgc2NocmllYiBULkouIE1lcmNpZXI6DQo+IERNQSBidWZmZXJz
IGFsbG9jYXRlZCBmcm9tIHRoZSBDTUEgZG1hLWJ1ZiBoZWFwIGdldCBjb3VudGVkIHVuZGVyDQo+
IFJzc0ZpbGUgZm9yIHByb2Nlc3NlcyB0aGF0IG1hcCB0aGVtIGFuZCB0cmlnZ2VyIHBhZ2UgZmF1
bHRzLiBJbg0KPiBhZGRpdGlvbiB0byB0aGUgaW5jb3JyZWN0IGFjY291bnRpbmcgcmVwb3J0ZWQg
dG8gdXNlcnNwYWNlLCByZWNsYWltDQo+IGJlaGF2aW9yIHdhcyBpbmZsdWVuY2VkIGJ5IHRoZSBN
TV9GSUxFUEFHRVMgY291bnRlciB1bnRpbCBsaW51eCA2LjgsIGJ1dA0KPiB0aGlzIG1lbW9yeSBp
cyBub3QgcmVjbGFpbWFibGUuIFsxXSBDaGFuZ2UgdGhlIENNQSBkbWEtYnVmIGhlYXAgdG8gc2V0
DQo+IFZNX1BGTk1BUCBvbiB0aGUgVk1BIHNvIE1NIGRvZXMgbm90IHBva2UgYXQgdGhlIG1lbW9y
eSBtYW5hZ2VkIGJ5IHRoaXMNCj4gZG1hLWJ1ZiBoZWFwLCBhbmQgdXNlIHZtZl9pbnNlcnRfcGZu
IHRvIGNvcnJlY3QgdGhlIFJTUyBhY2NvdW50aW5nLg0KPg0KPiBUaGUgc3lzdGVtIGRtYS1idWYg
aGVhcCBkb2VzIG5vdCBzdWZmZXIgZnJvbSB0aGlzIGlzc3VlIHNpbmNlDQo+IHJlbWFwX3Bmbl9y
YW5nZSBpcyB1c2VkIGR1cmluZyB0aGUgbW1hcCBvZiB0aGUgYnVmZmVyLCB3aGljaCBhbHNvIHNl
dHMNCj4gVk1fUEZOTUFQIG9uIHRoZSBWTUEuDQoNCk1obSwgbm90IGFuIGlzc3VlIHdpdGggdGhp
cyBwYXRjaCBidXQgRGFuaWVsIHdhbnRlZCB0byBhZGQgYSBjaGVjayBmb3IgDQpWTV9QRk5NQVAg
dG8gZG1hX2J1Zl9tbWFwKCkgd2hpY2ggd291bGQgaGF2ZSBub3RlZCB0aGlzIGVhcmxpZXIuDQoN
CkkgZG9uJ3QgZnVsbHkgcmVtZW1iZXIgdGhlIGRpc2N1c3Npb24gYnV0IGZvciBzb21lIHJlYXNv
biB0aGF0IHdhcyBuZXZlciANCmNvbW1pdHRlZC4gV2Ugc2hvdWxkIHByb2JhYmx5IHRyeSB0aGF0
IGFnYWluLg0KDQo+IFsxXWh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvbW0vdm1zY2FuLmM/aWQ9ZmI0NmUyMmE5
ZTM4NjNlMDhhZWY4ODE1ZGY5ZjE3ZDBmNGI5YWVkZQ0KPg0KPiBGaXhlczogYjYxNjE0ZWMzMThh
ICgiZG1hLWJ1ZjogaGVhcHM6IEFkZCBDTUEgaGVhcCB0byBkbWFidWYgaGVhcHMiKQ0KPiBTaWdu
ZWQtb2ZmLWJ5OiBULkouIE1lcmNpZXI8dGptZXJjaWVyQGdvb2dsZS5jb20+DQoNCkFja2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+
ICAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMgfCA3ICsrKy0tLS0NCj4gICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvY21hX2hlYXAuYw0KPiBpbmRleCBlZTg5OWY4ZTY3MjEuLjRhNjM1NjdlOTNiYSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCj4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCj4gQEAgLTE2OCwxMCArMTY4LDcgQEAgc3Rh
dGljIHZtX2ZhdWx0X3QgY21hX2hlYXBfdm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpDQo+
ICAgCWlmICh2bWYtPnBnb2ZmID4gYnVmZmVyLT5wYWdlY291bnQpDQo+ICAgCQlyZXR1cm4gVk1f
RkFVTFRfU0lHQlVTOw0KPiAgIA0KPiAtCXZtZi0+cGFnZSA9IGJ1ZmZlci0+cGFnZXNbdm1mLT5w
Z29mZl07DQo+IC0JZ2V0X3BhZ2Uodm1mLT5wYWdlKTsNCj4gLQ0KPiAtCXJldHVybiAwOw0KPiAr
CXJldHVybiB2bWZfaW5zZXJ0X3Bmbih2bWEsIHZtZi0+YWRkcmVzcywgcGFnZV90b19wZm4oYnVm
ZmVyLT5wYWdlc1t2bWYtPnBnb2ZmXSkpOw0KPiAgIH0NCj4gICANCj4gICBzdGF0aWMgY29uc3Qg
c3RydWN0IHZtX29wZXJhdGlvbnNfc3RydWN0IGRtYV9oZWFwX3ZtX29wcyA9IHsNCj4gQEAgLTE4
NSw2ICsxODIsOCBAQCBzdGF0aWMgaW50IGNtYV9oZWFwX21tYXAoc3RydWN0IGRtYV9idWYgKmRt
YWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpDQo+ICAgCWlmICgodm1hLT52bV9mbGFn
cyAmIChWTV9TSEFSRUQgfCBWTV9NQVlTSEFSRSkpID09IDApDQo+ICAgCQlyZXR1cm4gLUVJTlZB
TDsNCj4gICANCj4gKwl2bV9mbGFnc19zZXQodm1hLCBWTV9JTyB8IFZNX1BGTk1BUCB8IFZNX0RP
TlRFWFBBTkQgfCBWTV9ET05URFVNUCk7DQo+ICsNCj4gICAJdm1hLT52bV9vcHMgPSAmZG1hX2hl
YXBfdm1fb3BzOw0KPiAgIAl2bWEtPnZtX3ByaXZhdGVfZGF0YSA9IGJ1ZmZlcjsNCj4gICANCg==

--------------e9qSk2sYXbf5DiMrI9jyGXQS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIGh0bWw+PGh0bWw+PGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5
cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQogIDwvaGVhZD4NCiAgPGJv
ZHk+DQogICAgQW0gMTcuMDEuMjQgdW0gMTk6MTEgc2NocmllYiBULkouIE1lcmNpZXI6PGJyPg0K
ICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDoyMDI0MDExNzE4MTE0MS4yODYz
ODMtMS10am1lcmNpZXJAZ29vZ2xlLmNvbSI+DQogICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUt
cHJlIiB3cmFwPSIiPkRNQSBidWZmZXJzIGFsbG9jYXRlZCBmcm9tIHRoZSBDTUEgZG1hLWJ1ZiBo
ZWFwIGdldCBjb3VudGVkIHVuZGVyDQpSc3NGaWxlIGZvciBwcm9jZXNzZXMgdGhhdCBtYXAgdGhl
bSBhbmQgdHJpZ2dlciBwYWdlIGZhdWx0cy4gSW4NCmFkZGl0aW9uIHRvIHRoZSBpbmNvcnJlY3Qg
YWNjb3VudGluZyByZXBvcnRlZCB0byB1c2Vyc3BhY2UsIHJlY2xhaW0NCmJlaGF2aW9yIHdhcyBp
bmZsdWVuY2VkIGJ5IHRoZSBNTV9GSUxFUEFHRVMgY291bnRlciB1bnRpbCBsaW51eCA2LjgsIGJ1
dA0KdGhpcyBtZW1vcnkgaXMgbm90IHJlY2xhaW1hYmxlLiBbMV0gQ2hhbmdlIHRoZSBDTUEgZG1h
LWJ1ZiBoZWFwIHRvIHNldA0KVk1fUEZOTUFQIG9uIHRoZSBWTUEgc28gTU0gZG9lcyBub3QgcG9r
ZSBhdCB0aGUgbWVtb3J5IG1hbmFnZWQgYnkgdGhpcw0KZG1hLWJ1ZiBoZWFwLCBhbmQgdXNlIHZt
Zl9pbnNlcnRfcGZuIHRvIGNvcnJlY3QgdGhlIFJTUyBhY2NvdW50aW5nLg0KDQpUaGUgc3lzdGVt
IGRtYS1idWYgaGVhcCBkb2VzIG5vdCBzdWZmZXIgZnJvbSB0aGlzIGlzc3VlIHNpbmNlDQpyZW1h
cF9wZm5fcmFuZ2UgaXMgdXNlZCBkdXJpbmcgdGhlIG1tYXAgb2YgdGhlIGJ1ZmZlciwgd2hpY2gg
YWxzbyBzZXRzDQpWTV9QRk5NQVAgb24gdGhlIFZNQS48L3ByZT4NCiAgICA8L2Jsb2NrcXVvdGU+
DQogICAgPGJyPg0KICAgIE1obSwgbm90IGFuIGlzc3VlIHdpdGggdGhpcyBwYXRjaCBidXQgRGFu
aWVsIHdhbnRlZCB0byBhZGQgYSBjaGVjaw0KICAgIGZvciBWTV9QRk5NQVAgdG8gZG1hX2J1Zl9t
bWFwKCkgd2hpY2ggd291bGQgaGF2ZSBub3RlZCB0aGlzIGVhcmxpZXIuPGJyPg0KICAgIDxicj4N
CiAgICBJIGRvbid0IGZ1bGx5IHJlbWVtYmVyIHRoZSBkaXNjdXNzaW9uIGJ1dCBmb3Igc29tZSBy
ZWFzb24gdGhhdCB3YXMNCiAgICBuZXZlciBjb21taXR0ZWQuIFdlIHNob3VsZCBwcm9iYWJseSB0
cnkgdGhhdCBhZ2Fpbi48YnI+DQogICAgPGJyPg0KICAgIDxzcGFuIHN0eWxlPSJ3aGl0ZS1zcGFj
ZTogcHJlLXdyYXAiPg0KPC9zcGFuPg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9
Im1pZDoyMDI0MDExNzE4MTE0MS4yODYzODMtMS10am1lcmNpZXJAZ29vZ2xlLmNvbSI+DQogICAg
ICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPlsxXSA8YSBjbGFzcz0ibW96LXR4
dC1saW5rLWZyZWV0ZXh0IiBocmVmPSJodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0L21tL3Ztc2Nhbi5jP2lkPWZi
NDZlMjJhOWUzODYzZTA4YWVmODgxNWRmOWYxN2QwZjRiOWFlZGUiPmh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQv
bW0vdm1zY2FuLmM/aWQ9ZmI0NmUyMmE5ZTM4NjNlMDhhZWY4ODE1ZGY5ZjE3ZDBmNGI5YWVkZTwv
YT4NCg0KRml4ZXM6IGI2MTYxNGVjMzE4YSAoJnF1b3Q7ZG1hLWJ1ZjogaGVhcHM6IEFkZCBDTUEg
aGVhcCB0byBkbWFidWYgaGVhcHMmcXVvdDspDQpTaWduZWQtb2ZmLWJ5OiBULkouIE1lcmNpZXIg
PGEgY2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOnRqbWVyY2llckBn
b29nbGUuY29tIj4mbHQ7dGptZXJjaWVyQGdvb2dsZS5jb20mZ3Q7PC9hPjwvcHJlPg0KICAgIDwv
YmxvY2txdW90ZT4NCiAgICA8YnI+DQogICAgQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGEg
Y2xhc3M9Im1vei10eHQtbGluay1yZmMyMzk2RSIgaHJlZj0ibWFpbHRvOmNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbSI+Jmx0O2NocmlzdGlhbi5rb2VuaWdAYW1kLmNvbSZndDs8L2E+PGJyPg0KICAg
IDxicj4NCiAgICA8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBjaXRlPSJtaWQ6MjAyNDAxMTcxODEx
NDEuMjg2MzgzLTEtdGptZXJjaWVyQGdvb2dsZS5jb20iPg0KICAgICAgPHByZSBjbGFzcz0ibW96
LXF1b3RlLXByZSIgd3JhcD0iIj4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVh
cC5jIHwgNyArKystLS0tDQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5j
IGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCmluZGV4IGVlODk5ZjhlNjcyMS4u
NGE2MzU2N2U5M2JhIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFw
LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jDQpAQCAtMTY4LDEwICsx
NjgsNyBAQCBzdGF0aWMgdm1fZmF1bHRfdCBjbWFfaGVhcF92bV9mYXVsdChzdHJ1Y3Qgdm1fZmF1
bHQgKnZtZikNCiAJaWYgKHZtZi0mZ3Q7cGdvZmYgJmd0OyBidWZmZXItJmd0O3BhZ2Vjb3VudCkN
CiAJCXJldHVybiBWTV9GQVVMVF9TSUdCVVM7DQogDQotCXZtZi0mZ3Q7cGFnZSA9IGJ1ZmZlci0m
Z3Q7cGFnZXNbdm1mLSZndDtwZ29mZl07DQotCWdldF9wYWdlKHZtZi0mZ3Q7cGFnZSk7DQotDQot
CXJldHVybiAwOw0KKwlyZXR1cm4gdm1mX2luc2VydF9wZm4odm1hLCB2bWYtJmd0O2FkZHJlc3Ms
IHBhZ2VfdG9fcGZuKGJ1ZmZlci0mZ3Q7cGFnZXNbdm1mLSZndDtwZ29mZl0pKTsNCiB9DQogDQog
c3RhdGljIGNvbnN0IHN0cnVjdCB2bV9vcGVyYXRpb25zX3N0cnVjdCBkbWFfaGVhcF92bV9vcHMg
PSB7DQpAQCAtMTg1LDYgKzE4Miw4IEBAIHN0YXRpYyBpbnQgY21hX2hlYXBfbW1hcChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCiAJaWYgKCh2bWEt
Jmd0O3ZtX2ZsYWdzICZhbXA7IChWTV9TSEFSRUQgfCBWTV9NQVlTSEFSRSkpID09IDApDQogCQly
ZXR1cm4gLUVJTlZBTDsNCiANCisJdm1fZmxhZ3Nfc2V0KHZtYSwgVk1fSU8gfCBWTV9QRk5NQVAg
fCBWTV9ET05URVhQQU5EIHwgVk1fRE9OVERVTVApOw0KKw0KIAl2bWEtJmd0O3ZtX29wcyA9ICZh
bXA7ZG1hX2hlYXBfdm1fb3BzOw0KIAl2bWEtJmd0O3ZtX3ByaXZhdGVfZGF0YSA9IGJ1ZmZlcjsN
CiANCjwvcHJlPg0KICAgIDwvYmxvY2txdW90ZT4NCiAgICA8YnI+DQogIDwvYm9keT4NCjwvaHRt
bD4NCg==

--------------e9qSk2sYXbf5DiMrI9jyGXQS--

--===============4329921031233698313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4329921031233698313==--
