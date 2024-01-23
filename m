Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 26239838FDA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 14:28:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2405340B5D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 13:28:30 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2058.outbound.protection.outlook.com [40.107.237.58])
	by lists.linaro.org (Postfix) with ESMTPS id E26463F38E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jan 2024 13:28:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=MlWUs5WE;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.58 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8ADoFQbReeZWDT6zpoM1zBg9hp8k9rPhxZWcx6IhJK9g4YQ4KWmJShaLf0orIyGzzaW48+AqmH3ubhVPB/yfYItmYz7R0jairDL1aXU588YId4h5xwmGshuwIHhHPD2HMCwDuwuaGaW5KUxbavjM40QzoNONN0zuqx7QKfyg6SLI8L57221T01LD1n4v/RDvcz4u4vLwbt+OG8s9h/Tq+VqrJBjhGmew6yuUnq2ahG3HDdlGZfAwiUBt6oY550Sny5Iiwi8/PUdd2nnPkyc1s975Iih2PQ66oX9AQoC9nWmA4qn5Q+fj2+RxI7HIWmp7rTdrjcypFEbYeQbFumqOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lSPJHYKosunKZLgxIioGCQRyVNTsSvFZskOVucv7UEw=;
 b=ArEe/zS60ILZ108t2btubHWL5uE9rqLzDHTqyNJBiHGgARR9D9w2hrEMGdjzZdeo4Jk0p22gDq2C/sB0bjbi5khnLh6LR65xicLd8U9bea2MZMM8W7qQRgdnvXTNsOymeOrbt1/oJcXV19IVmsfP1FbsdV3k7iz3YlDtHtqS4ABgvwhTeOZz+4O527pnWPtdfNeIiJygKumCs1Nhc4S10NnwBZvdSFZrAyjolxvc05+7wiCJX++RpxYYs9ZBtTOzncIn3kSQqyUQKS5cP94KfSts8bTbRn19zhPVJoQQZPanzYMALAKARvQ5UlNx3Fga0VBtIxZMPdlyvOZCEYCj1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lSPJHYKosunKZLgxIioGCQRyVNTsSvFZskOVucv7UEw=;
 b=MlWUs5WEGsh9Uid8R6zETBMml6mRz2raE9Qe9Cn9AIvuvtIQ8ChsmYpbj60kP0rYGswlkMQiFy+R72Bv0vRtjG1MIqTaCV+YoxY4uw2QdUBcji1CnCRE5WBSHddiMoBQsrwNNvKzraCG37PP4o5o/EA8GPX3qczoLk+cSiEBM1g=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB7285.namprd12.prod.outlook.com (2603:10b6:303:22e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Tue, 23 Jan
 2024 13:28:18 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653%4]) with mapi id 15.20.7202.031; Tue, 23 Jan 2024
 13:28:18 +0000
Message-ID: <577501f9-9d1c-4f8d-9882-7c71090e5ef3@amd.com>
Date: Tue, 23 Jan 2024 14:28:10 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Cercueil <paul@crapouillou.net>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20240119141402.44262-1-paul@crapouillou.net>
 <20240119141402.44262-2-paul@crapouillou.net>
 <8035f515-591f-4c87-bf0a-23d5705d9b1c@gmail.com>
 <442f69f31ece6d441f3dc41c3dfeb4dcf52c00b8.camel@crapouillou.net>
 <0b6b8738-9ea3-44fa-a624-9297bd55778f@amd.com>
 <e4620acdf24628d904cedcb0030d78b14559f337.camel@crapouillou.net>
 <85a89505-edeb-4619-86c1-157f7abdd190@amd.com>
 <0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net>
X-ClientProxiedBy: FR0P281CA0183.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB7285:EE_
X-MS-Office365-Filtering-Correlation-Id: 2155f6d4-032b-4199-295f-08dc1c1728ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XDgxK3ZhlopPknvD5l3bTdSQKxof7xmNhd0R89525JNn86b8Ru0Y0h6xRw+TuYDFkdHTCVW8rKNf1fb4JOMjIEAZw0TY4iqQNr/f07Gwl5u5AKP4wOunUU0lKThdRgmo7knfTqoslPFs+NYkJ2j+CDOZEgBViYpxW+v+0gPJoQM9GC78fHqAp1u4mqZieH59iRFR3UaLZu3R3p86ppwPlkB5zZgIJE6R3dC+6b74S8y022Pd75rqPLazKgdiXTMMnBRrwUnMw4pi6QzE2LECLlTaIEybgOiXvWjccRnz1csarqjBa7hRE0cqTqzoSwFrxp5a+nQjC3OcJH/53C0isOXsnwB4GKd1GB510RtucUi1eMqo8MwBi3ajw/RIarh5A0jNJsCWDIl5anGgxlNw9F7WoLKqEGZ2zohcLk0ZMCVBeb2CDjDWSpf1+aFDuEKE+SZ11A8n4iEWpTbBZM07tiQktOxFlucXvy0nRiVsDb647J3k0ntt8tF9/bHA5v38ZKa9VmBdbWEXpggXOHG490ADys2ze7BPME8pQjK5zKexVLMBlxwsj7x+hziJouYccIrLq6TG12dkI/xAi2VfjZZbJpA2U2TYdcMNt+ZqmJVb5oqNURGqsEpmMf+7v8Dms+lMLf6sTyGDCbEOpYcRow==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(376002)(346002)(39860400002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(31686004)(83380400001)(6512007)(6506007)(33964004)(2616005)(5660300002)(4326008)(8676002)(316002)(110136005)(66476007)(6666004)(66946007)(8936002)(66556008)(54906003)(6486002)(478600001)(26005)(30864003)(2906002)(7416002)(38100700002)(86362001)(31696002)(36756003)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U2R4WHBHU2x2Z1grWlpjZ1V5NE9mWitOdlFoSTNKNklQTTY2UkRkTXhZZEZh?=
 =?utf-8?B?T3hoNVQ4cjcvajZOQ0RtUUpoNzQ5S0piQmdCZTFuSmNLTEFRcGQ1aExwOUV3?=
 =?utf-8?B?aE9qakVyYlZ0SG1iT01SUUNyTWJrQW9jaEs3MkpGdkRZYmNRQkdMR2tqa01N?=
 =?utf-8?B?NWRvVWJGeXBQeGhKcURURmlIUG9IUm9oelpZYWUxWndXSDdaU0YwUDlxS3FZ?=
 =?utf-8?B?RmZ2U1lnMFJiRTg0eDMzMW9VcUxNekFDNkt6Z3dNV1pZQ1FDNktVV0szK1l4?=
 =?utf-8?B?QVNnTzVITE90WndsWGpvbE04TUxnWlM2NjkxR2IvaVJGSVB2blRHcWpBS0JW?=
 =?utf-8?B?UGtSRFRYUTNiMEk5dk9BK3ZRNGgvckR5d01sRkpjRkdXWk9JUEgzbzVFTWRj?=
 =?utf-8?B?dUNXcHRhTnBiSk9yU0w4bVdNcUwrbTlDTmFuSjhWclMrZXMxQjNsOVlld3gv?=
 =?utf-8?B?dk96ZEpWRFc4bzVuTitPTXJZa1JFQ285dVJDRmFmRUlVZVhSaFNBS052N2pO?=
 =?utf-8?B?V2NRcUtmdjZHTXpvVHFKNC9iVldMTHc4dy9IMytGb0J3YWNUTW5MekNjMUw2?=
 =?utf-8?B?dVQxVkRzRjhLS1JiOUtFVS9wSitzaFNwY1JuSE16SzNIMGJ4S21wSkxTZldh?=
 =?utf-8?B?c3BFb2FKVGxtWU8xaEJ2SVh2K3BBdElkTkQ3ZTRtOUdkaWwzWHorVnBaTnRr?=
 =?utf-8?B?RjI0RFh4aVpkeExSL1F3MGlreWlsZENVQllnZzBoRTJIM0pRWTgwRTFXNVZj?=
 =?utf-8?B?Y2FRWW8xdWtPdEM5dXUvcTRIaDJEYWxyVS9iNVlMbURBRVJZT0RNV1Q0Qmdh?=
 =?utf-8?B?Nm5mNnpFNFo5STQxUnhvTU1zZEp0UzBqZTVNVE1TUHJZWWFoQ0FXSXlURDlu?=
 =?utf-8?B?L29YZVBYUWM3YXdiVWhFZlNGcWFiNnpxaFc2OEVIZDN6ZXZhbW5mRjJrdmhV?=
 =?utf-8?B?V3JnWnJOK1JCZFd2Zk1pOSttaE9lNEMrMTl3dmNEVmUxWkV0NTFRdHB3SUtM?=
 =?utf-8?B?NC9xaEhBNUtUb1d4dHp5c1ZsblR6NFVSRFpVUG1hclBJN01jVk15V3IzUml5?=
 =?utf-8?B?U0czY2EzOXZ2MTNLdm1rZHo2bEpMY1dRbmJ3UmZZTVIzcml6TTNaeU4ybVJQ?=
 =?utf-8?B?b01EK0JBRkxWUWhRWXF2ZERkUTRSc0hkSFh4WEpWTElod1VjQURWNnQyYm9Z?=
 =?utf-8?B?ZXBHdjkydktLWmJtUmxHekFOVHRVcVZZdFJWNWxZTXNQTTNDZTlXZGtFSzd2?=
 =?utf-8?B?b1VubEh0c3VCeFpHdzJpaTYydE81Y21GUHV1ZWlMMEI3TVpJQ2J6bjh6cGo3?=
 =?utf-8?B?by9IRnRUVHNST0pKeXB4cFI0N3dQNGdmcmxYTjM3TGNGVkV0Ylo4VFFLSFFL?=
 =?utf-8?B?Sk5NODMwRGlQT3V3STlaYjRDVGM5eGpYMlIvSUFTYVdnVlU4UTR2bEhCeDNZ?=
 =?utf-8?B?TXBRSUJHZXJUUjVhaVkwbncvZ1pjbWJ6V1daVGdSR3ZTZ2hPSVZaZkZhN0dT?=
 =?utf-8?B?R2JWM0M2VURHNklHaU1abG1XRFhzYWozdWlNVUdZMFRhQW1aa3RQZ3ZDNklK?=
 =?utf-8?B?RXBqVWswZ01OR25ONjh0KzB3S0JwNm5KWTJ6RkQ2dW1oMk16ZTNyTDdtK1M2?=
 =?utf-8?B?Z2QrNGZCSHNLbFpBelFTTmhSZDlYZkxYMVJHbDArbDZpc0NjY1ZvRU5GY1Uz?=
 =?utf-8?B?YjB3bkxiUlI4dzZQSEhuRnVCSjU0TVBSK0hqM1pBSEMrKzZMS1NzYThsMkJj?=
 =?utf-8?B?VU56U2lsNUEyMStPMnJtQVhBZDNaUE1nZXVRaEZmL0krUUhtbzNsbDBEQ05M?=
 =?utf-8?B?MjRPYzJmc2htVFpQN1MrV1ZHbUF6RzdUaGgxWVZVRlBGTGFJRUZXVmpEUlps?=
 =?utf-8?B?ckpNTVgweDgyMmtXaFBCdHJDUDAxVkdGV3VUNnIrajA4dzhXak1WUkhKbVVs?=
 =?utf-8?B?M21Yd3Y0U1F0WE5kQjY0VENXVGsxVWJscDIxWnYxVDZJMGV2Ui9UaE1UV0xt?=
 =?utf-8?B?Mm54VjhPVm1nZ3JqQVpmT0RQMEhGSkJJK09xZlFlM0FqSUI1QlpUUFFMbUtS?=
 =?utf-8?B?cllsNHZLSlVPZnJURDFMMjl3ZnBJK25IVDFvcEl4T0NDa3pZM1VhUHdqQ2Fm?=
 =?utf-8?Q?So5O7S52FfCwTmu88qykdaydV?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2155f6d4-032b-4199-295f-08dc1c1728ff
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2024 13:28:17.9645
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0NAj6N7v4/HVp+5OhHoF7vnNaZrB8SiU7dBRgByI9lE/2LvV6fDNxBmQQtKseZv2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7285
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E26463F38E
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.58:from];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_TO(0.00)[crapouillou.net,gmail.com,linuxfoundation.org,lwn.net,linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,ffwll.ch];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: 2K22Q6GAU264PN3LQR4NSRJXCTEKC34Q
X-Message-ID-Hash: 2K22Q6GAU264PN3LQR4NSRJXCTEKC34Q
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2K22Q6GAU264PN3LQR4NSRJXCTEKC34Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0241479847583073876=="

--===============0241479847583073876==
Content-Type: multipart/alternative;
 boundary="------------zGGu3dX8EMazW07Gs3tWx65o"
Content-Language: en-US

--------------zGGu3dX8EMazW07Gs3tWx65o
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDEuMjQgdW0gMTQ6MDIgc2NocmllYiBQYXVsIENlcmN1ZWlsOg0KPiBbU05JUF0NCj4+
Pj4gVGhhdCBhbiBleHBvcnRlciBoYXMgdG8gY2FsbCBleHRyYSBmdW5jdGlvbnMgdG8gYWNjZXNz
IGhpcyBvd24NCj4+Pj4gYnVmZmVycw0KPj4+PiBpcyBhIGNvbXBsZXRlIG5vLWdvIGZvciB0aGUg
ZGVzaWduIHNpbmNlIHRoaXMgZm9yY2VzIGV4cG9ydGVycw0KPj4+PiBpbnRvDQo+Pj4+IGRvaW5n
IGV4dHJhIHN0ZXBzIGZvciBhbGxvd2luZyBpbXBvcnRlcnMgdG8gYWNjZXNzIHRoZWlyIGRhdGEu
DQo+Pj4gVGhlbiB3aGF0IGFib3V0IHdlIGFkZCB0aGVzZSBkbWFfYnVmX3tiZWdpbixlbmR9X2Fj
Y2VzcygpLCB3aXRoDQo+Pj4gb25seQ0KPj4+IGltcGxlbWVudGF0aW9ucyBmb3IgImR1bWIiIGV4
cG9ydGVycyBlLmcuIHVkbWFidWYgb3IgdGhlIGRtYWJ1Zg0KPj4+IGhlYXBzPw0KPj4+IEFuZCBv
bmx5IGltcG9ydGVycyAod2hvIGNhY2hlIHRoZSBtYXBwaW5nIGFuZCBhY3R1YWxseSBjYXJlIGFi
b3V0DQo+Pj4gbm9uLQ0KPj4+IGNvaGVyZW5jeSkgd291bGQgaGF2ZSB0byBjYWxsIHRoZXNlLg0K
Pj4gTm8sIHRoZSBwcm9ibGVtIGlzIHN0aWxsIHRoYXQgeW91IHdvdWxkIGhhdmUgdG8gY2hhbmdl
IGFsbCBpbXBvcnRlcnMNCj4+IHRvDQo+PiBtYW5kYXRvcnkgdXNlIGRtYV9idWZfYmVnaW4vZW5k
Lg0KPj4NCj4+IEJ1dCBnb2luZyBhIHN0ZXAgYmFjayBjYWNoaW5nIHRoZSBtYXBwaW5nIGlzIGly
cmVsZXZhbnQgZm9yDQo+PiBjb2hlcmVuY3kuDQo+PiBFdmVuIGlmIHlvdSBkb24ndCBjYWNoZSB0
aGUgbWFwcGluZyB5b3UgZG9uJ3QgZ2V0IGNvaGVyZW5jeS4NCj4gWW91IGFjdHVhbGx5IGRvIC0g
YXQgbGVhc3Qgd2l0aCB1ZG1hYnVmLCBhcyBpbiB0aGF0IGNhc2UNCj4gZG1hX2J1Zl9tYXBfYXR0
YWNobWVudCgpIC8gZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KCkgd2lsbCBoYW5kbGUgY2FjaGUN
Cj4gY29oZXJlbmN5IHdoZW4gdGhlIFNHcyBhcmUgbWFwcGVkL3VubWFwcGVkLg0KDQpXZWxsIEkg
anVzdCBkb3VibGUgY2hlY2tlZCB0aGUgc291cmNlIGluIDYuNy4xIGFuZCBJIGNhbid0IHNlZSB1
ZG1hYnVmIA0KZG9pbmcgYW55dGhpbmcgZm9yIGNhY2hlIGNvaGVyZW5jeSBpbiBtYXAvdW5tYXAu
DQoNCkFsbCBpdCBkb2VzIGlzIGNhbGxpbmcgZG1hX21hcF9zZ3RhYmxlKCkgYW5kIGRtYV91bm1h
cF9zZ3RhYmxlKCkgdG8gDQpjcmVhdGUgYW5kIGRlc3Ryb3kgdGhlIFNHIHRhYmxlIGFuZCB0aG9z
ZSBhcmUgbm90IHN1cHBvc2VkIHRvIHN5bmMgDQphbnl0aGluZyB0byB0aGUgQ1BVIGNhY2hlLg0K
DQpJbiBvdGhlciB3b3JkcyBkcml2ZXJzIHVzdWFsbHkgdXNlIERNQV9BVFRSX1NLSVBfQ1BVX1NZ
TkMgaGVyZSwgaXQncyANCmp1c3QgdGhhdCB0aGlzIGlzIG1pc3NpbmcgZnJvbSB1ZG1hYnVmLg0K
DQo+IFRoZSBwcm9ibGVtIHdhcyB0aGVuIHRoYXQgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50IGNh
bm5vdCBiZSBjYWxsZWQNCj4gYmVmb3JlIHRoZSBkbWFfZmVuY2UgaXMgc2lnbmFsZWQsIGFuZCBj
YWxsaW5nIGl0IGFmdGVyIGlzIGFscmVhZHkgdG9vDQo+IGxhdGUgKGJlY2F1c2UgdGhlIGZlbmNl
IHdvdWxkIGJlIHNpZ25hbGVkIGJlZm9yZSB0aGUgZGF0YSBpcyBzeW5jJ2QpLg0KDQpXZWxsIHdo
YXQgc3luYyBhcmUgeW91IHRhbGtpbmcgYWJvdXQ/IENQVSBzeW5jPyBJbiBETUEtYnVmIHRoYXQg
aXMgDQpoYW5kbGVkIGRpZmZlcmVudGx5Lg0KDQpGb3IgaW1wb3J0ZXJzIGl0J3MgbWFuZGF0b3J5
IHRoYXQgdGhleSBjYW4gYmUgY29oZXJlbnQgd2l0aCB0aGUgDQpleHBvcnRlci4gVGhhdCB1c3Vh
bGx5IG1lYW5zIHRoZXkgY2FuIHNub29wIHRoZSBDUFUgY2FjaGUgaWYgdGhlIA0KZXhwb3J0ZXIg
Y2FuIHNub29wIHRoZSBDUFUgY2FjaGUuDQoNCkZvciBleHBvcnRlcnMgeW91IGNhbiBpbXBsZW1l
bnQgdGhlIGJlZ2luL2VuZCBDUFUgYWNjZXNzIGZ1bmN0aW9ucyB3aGljaCANCmFsbG93cyB5b3Ug
dG8gaW1wbGVtZW50IHNvbWV0aGluZyBldmVuIGlmIHlvdXIgZXhwb3J0aW5nIGRldmljZSBjYW4n
dCANCnNub29wIHRoZSBDUFUgY2FjaGUuDQoNCj4gRGFuaWVsIC8gU2ltYSBzdWdnZXN0ZWQgdGhl
biB0aGF0IEkgY2FjaGUgdGhlIG1hcHBpbmcgYW5kIGFkZCBuZXcNCj4gZnVuY3Rpb25zIHRvIGVu
c3VyZSBjYWNoZSBjb2hlcmVuY3ksIHdoaWNoIGlzIHdoYXQgdGhlc2UgcGF0Y2hlcyBhcmUNCj4g
YWJvdXQuDQoNClllYWgsIEkndmUgbm93IGNhdGNoZWQgdXAgb24gdGhlIGxhdGVzdCBtYWlsLiBT
b3JyeSBJIGhhdmVuJ3Qgc2VlbiB0aGF0IA0KYmVmb3JlLg0KDQo+DQo+PiBJbiBvdGhlciB3b3Jk
cyBleHBvcnRlcnMgYXJlIG5vdCByZXF1aXJlIHRvIGNhbGwgc3luY190b19jcHUgb3INCj4+IHN5
bmNfdG9fZGV2aWNlIHdoZW4geW91IGNyZWF0ZSBhIG1hcHBpbmcuDQo+Pg0KPj4gV2hhdCBleGFj
dGx5IGlzIHlvdXIgdXNlIGNhc2UgaGVyZT8gQW5kIHdoeSBkb2VzIGNvaGVyZW5jeSBtYXR0ZXJz
Pw0KPiBNeSB1c2UtY2FzZSBpcywgSSBjcmVhdGUgRE1BQlVGcyB3aXRoIHVkbWFidWYsIHRoYXQg
SSBhdHRhY2ggdG8NCj4gVVNCL2Z1bmN0aW9uZnMgd2l0aCB0aGUgaW50ZXJmYWNlIGludHJvZHVj
ZWQgYnkgdGhpcyBwYXRjaHNldC4gSSBhdHRhY2gNCj4gdGhlbSB0byBJSU8gd2l0aCBhIHNpbWls
YXIgaW50ZXJmYWNlIChiZWluZyB1cHN0cmVhbWVkIGluIHBhcmFsbGVsKSwNCj4gYW5kIHRyYW5z
ZmVyIGRhdGEgZnJvbSBVU0IgdG8gSUlPIGFuZCB2aWNlLXZlcnNhIGluIGEgemVyby1jb3B5DQo+
IGZhc2hpb24uDQo+DQo+IFRoaXMgd29ya3MgcGVyZmVjdGx5IGZpbmUgYXMgbG9uZyBhcyB0aGUg
VVNCIGFuZCBJSU8gaGFyZHdhcmUgYXJlDQo+IGNvaGVyZW50IGJldHdlZW4gdGhlbXNlbHZlcywg
d2hpY2ggaXMgdGhlIGNhc2Ugb24gbW9zdCBvZiBvdXIgYm9hcmRzLg0KPiBIb3dldmVyIEkgZG8g
aGF2ZSBhIGJvYXJkICh3aXRoIGEgWGlsaW54IFVsdHJhc2NhbGUgU29DKSB3aGVyZSBpdCBpcw0K
PiBub3QgdGhlIGNhc2UsIGFuZCBjYWNoZSBmbHVzaGVzL3N5bmMgYXJlIG5lZWRlZC4gU28gSSB3
YXMgdHJ5aW5nIHRvDQo+IHJld29yayB0aGVzZSBuZXcgaW50ZXJmYWNlcyB0byB3b3JrIG9uIHRo
YXQgc3lzdGVtIHRvby4NCg0KWWVhaCwgdGhhdCBzb3VuZHMgc3Ryb25nbHkgbGlrZSBvbmUgb2Yg
dGhlIHVzZSBjYXNlcyB3ZSBoYXZlIHJlamVjdGVkIHNvIA0KZmFyLg0KDQo+IElmIHRoaXMgcmVh
bGx5IGlzIGEgbm8tbm8sIHRoZW4gSSBhbSBmaW5lIHdpdGggdGhlIGFzc3VtcHRpb24gdGhhdA0K
PiBkZXZpY2VzIHNoYXJpbmcgYSBETUFCVUYgbXVzdCBiZSBjb2hlcmVudCBiZXR3ZWVuIHRoZW1z
ZWx2ZXM7IGJ1dA0KPiB0aGF0J3Mgc29tZXRoaW5nIHRoYXQgc2hvdWxkIHByb2JhYmx5IGJlIGVu
Zm9yY2VkIHJhdGhlciB0aGFuIGFzc3VtZWQuDQo+DQo+IChhbmQgSSAqdGhpbmsqIHRoZXJlIGlz
IGEgd2F5IHRvIGZvcmNlIGNvaGVyZW5jeSBpbiB0aGUgVWx0cmFzY2FsZSdzDQo+IGludGVyY29u
bmVjdCAtIHdlJ3JlIGludmVzdGlnYXRpbmcgaXQpDQoNCldoYXQgeW91IGNhbiBkbyBpcyB0aGF0
IGluc3RlYWQgb2YgdXNpbmcgdWRtYWJ1ZiBvciBkbWEtaGVhcHMgaXMgdGhhdCANCnRoZSBkZXZp
Y2Ugd2hpY2ggY2FuJ3QgcHJvdmlkZSBjb2hlcmVuY3kgYWN0IGFzIGV4cG9ydGVycyBvZiB0aGUg
YnVmZmVycy4NCg0KVGhlIGV4cG9ydGVyIGlzIGFsbG93ZWQgdG8gY2FsbCBzeW5jX2Zvcl9jcHUv
c3luY19mb3JfZGV2aWNlIG9uIGl0J3Mgb3duIA0KYnVmZmVycyBhbmQgYWxzbyBnZXRzIGJlZ2lu
L2VuZCBDUFUgYWNjZXNzIG5vdGZpY2F0aW9ucy4gU28geW91IGNhbiB0aGVuIA0KaGFuZGxlIGNv
aGVyZW5jeSBiZXR3ZWVuIHRoZSBleHBvcnRlciBhbmQgdGhlIENQVS4NCg0KSWYgeW91IHJlYWxs
eSBkb24ndCBoYXZlIGNvaGVyZW5jeSBiZXR3ZWVuIGRldmljZXMgdGhlbiB0aGF0IHdvdWxkIGJl
IGEgDQpyZWFsbHkgbmV3IHVzZSBjYXNlIGFuZCB3ZSB3b3VsZCBuZWVkIG11Y2ggbW9yZSBhZ3Jl
ZW1lbnQgb24gaG93IHRvIGRvIHRoaXMuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4g
Q2hlZXJzLA0KPiAtUGF1bA0KPg0KPj4+IEF0IHRoZSB2ZXJ5IGxlYXN0LCBpcyB0aGVyZSBhIHdh
eSB0byBjaGVjayB0aGF0ICJ0aGUgZGF0YSBjYW4gYmUNCj4+PiBhY2Nlc3NlZCBjb2hlcmVudGx5
IGJ5IHRoZSBpbnZvbHZlZCBkZXZpY2VzIj8gU28gdGhhdCBteSBpbXBvcnRlcg0KPj4+IGNhbg0K
Pj4+IEVQRVJNIGlmIHRoZXJlIGlzIG5vIGNvaGVyZW5jeSB2cy4gYSBkZXZpY2UgdGhhdCdzIGFs
cmVhZHkNCj4+PiBhdHRhY2hlZC4NCj4+IFllYWgsIHRoZXJlIGlzIGZ1bmN0aW9uYWxpdHkgZm9y
IHRoaXMgaW4gdGhlIERNQSBzdWJzeXN0ZW0uIEkndmUgb25jZQ0KPj4gY3JlYXRlZCBwcm90b3R5
cGUgcGF0Y2hlcyBmb3IgZW5mb3JjaW5nIHRoZSBzYW1lIGNvaGVyZW5jeSBhcHByb2FjaA0KPj4g
YmV0d2VlbiBpbXBvcnRlciBhbmQgZXhwb3J0ZXIsIGJ1dCB3ZSBuZXZlciBnb3QgYXJvdW5kIHRv
IHVwc3RyZWFtDQo+PiB0aGVtLg0KPj4NCj4+DQo+Pg0KPj4+IENoZWVycywNCj4+PiAtUGF1bA0K
Pj4+DQo+Pj4+IFRoYXQgaW4gdHVybiBpcyBwcmV0dHkgbXVjaCB1bi10ZXN0YWJsZSB1bmxlc3Mg
eW91IGhhdmUgZXZlcnkNCj4+Pj4gcG9zc2libGUNCj4+Pj4gaW1wb3J0ZXIgYXJvdW5kIHdoaWxl
IHRlc3RpbmcgdGhlIGV4cG9ydGVyLg0KPj4+Pg0KPj4+PiBSZWdhcmRzLA0KPj4+PiBDaHJpc3Rp
YW4uDQo+Pj4+DQo+Pj4+Pj4gUmVnYXJkcywNCj4+Pj4+PiBDaHJpc3RpYW4uDQo+Pj4+PiBDaGVl
cnMsDQo+Pj4+PiAtUGF1bA0KPj4+Pj4NCj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogUGF1bCBDZXJj
dWVpbDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gLS0tDQo+Pj4+Pj4+
IHY1OiBOZXcgcGF0Y2gNCj4+Pj4+Pj4gLS0tDQo+Pj4+Pj4+ICDCoMKgwqAgZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYyB8IDY2DQo+Pj4+Pj4+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKw0KPj4+Pj4+PiAgwqDCoMKgIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5owqDCoCB8
IDM3ICsrKysrKysrKysrKysrKysrKysrKysNCj4+Pj4+Pj4gIMKgwqDCoCAyIGZpbGVzIGNoYW5n
ZWQsIDEwMyBpbnNlcnRpb25zKCspDQo+Pj4+Pj4+DQo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtDQo+Pj4+Pj4+IGJ1Zi9kbWEtDQo+
Pj4+Pj4+IGJ1Zi5jDQo+Pj4+Pj4+IGluZGV4IDhmZTVhYTY3YjE2Ny4uYThiYWI2YzE4ZmNkIDEw
MDY0NA0KPj4+Pj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4+Pj4+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+Pj4+Pj4gQEAgLTgzMCw2ICs4MzAsOCBA
QCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICoNCj4+Pj4+Pj4gX19tYXBfZG1hX2J1ZihzdHJ1Y3QN
Cj4+Pj4+Pj4gZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQo+Pj4+Pj4+ICDCoMKgwqDCoCAq
wqDCoMKgwqAgLSBkbWFfYnVmX21tYXAoKQ0KPj4+Pj4+PiAgwqDCoMKgwqAgKsKgwqDCoMKgIC0g
ZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKCkNCj4+Pj4+Pj4gIMKgwqDCoMKgICrCoMKgwqDCoCAt
IGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoKQ0KPj4+Pj4+PiArICrCoMKgwqDCoCAtIGRtYV9idWZf
YmVnaW5fYWNjZXNzKCkNCj4+Pj4+Pj4gKyAqwqDCoMKgwqAgLSBkbWFfYnVmX2VuZF9hY2Nlc3Mo
KQ0KPj4+Pj4+PiAgwqDCoMKgwqAgKsKgwqDCoMKgIC0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91
bmxvY2tlZCgpDQo+Pj4+Pj4+ICDCoMKgwqDCoCAqwqDCoMKgwqAgLSBkbWFfYnVmX3VubWFwX2F0
dGFjaG1lbnRfdW5sb2NrZWQoKQ0KPj4+Pj4+PiAgwqDCoMKgwqAgKsKgwqDCoMKgIC0gZG1hX2J1
Zl92bWFwX3VubG9ja2VkKCkNCj4+Pj4+Pj4gQEAgLTE2MDIsNiArMTYwNCw3MCBAQCB2b2lkIGRt
YV9idWZfdnVubWFwX3VubG9ja2VkKHN0cnVjdA0KPj4+Pj4+PiBkbWFfYnVmDQo+Pj4+Pj4+ICpk
bWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+Pj4+Pj4gIMKgwqDCoCB9DQo+Pj4+Pj4+
ICDCoMKgwqAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQsIERN
QV9CVUYpOw0KPj4+Pj4+PiAgICAgIA0KPj4+Pj4+PiArLyoqDQo+Pj4+Pj4+ICsgKiBAZG1hX2J1
Zl9iZWdpbl9hY2Nlc3MgLSBDYWxsIGJlZm9yZSBhbnkgaGFyZHdhcmUgYWNjZXNzDQo+Pj4+Pj4+
IGZyb20vdG8NCj4+Pj4+Pj4gdGhlIERNQUJVRg0KPj4+Pj4+PiArICogQGF0dGFjaDoJW2luXQlh
dHRhY2htZW50IHVzZWQgZm9yIGhhcmR3YXJlDQo+Pj4+Pj4+IGFjY2Vzcw0KPj4+Pj4+PiArICog
QHNnX3RhYmxlOglbaW5dCXNjYXR0ZXJsaXN0IHVzZWQgZm9yIHRoZSBETUENCj4+Pj4+Pj4gdHJh
bnNmZXINCj4+Pj4+Pj4gKyAqIEBkaXJlY3Rpb246wqAgW2luXcKgwqDCoCBkaXJlY3Rpb24gb2Yg
RE1BIHRyYW5zZmVyDQo+Pj4+Pj4+ICsgKi8NCj4+Pj4+Pj4gK2ludCBkbWFfYnVmX2JlZ2luX2Fj
Y2VzcyhzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50DQo+Pj4+Pj4+ICphdHRhY2gsDQo+Pj4+Pj4+
ICsJCQkgc3RydWN0IHNnX3RhYmxlICpzZ3QsIGVudW0NCj4+Pj4+Pj4gZG1hX2RhdGFfZGlyZWN0
aW9uIGRpcikNCj4+Pj4+Pj4gK3sNCj4+Pj4+Pj4gKwlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0K
Pj4+Pj4+PiArCWJvb2wgY29va2llOw0KPj4+Pj4+PiArCWludCByZXQ7DQo+Pj4+Pj4+ICsNCj4+
Pj4+Pj4gKwlpZiAoV0FSTl9PTighYXR0YWNoKSkNCj4+Pj4+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7
DQo+Pj4+Pj4+ICsNCj4+Pj4+Pj4gKwlkbWFidWYgPSBhdHRhY2gtPmRtYWJ1ZjsNCj4+Pj4+Pj4g
Kw0KPj4+Pj4+PiArCWlmICghZG1hYnVmLT5vcHMtPmJlZ2luX2FjY2VzcykNCj4+Pj4+Pj4gKwkJ
cmV0dXJuIDA7DQo+Pj4+Pj4+ICsNCj4+Pj4+Pj4gKwljb29raWUgPSBkbWFfZmVuY2VfYmVnaW5f
c2lnbmFsbGluZygpOw0KPj4+Pj4+PiArCXJldCA9IGRtYWJ1Zi0+b3BzLT5iZWdpbl9hY2Nlc3Mo
YXR0YWNoLCBzZ3QsIGRpcik7DQo+Pj4+Pj4+ICsJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGNv
b2tpZSk7DQo+Pj4+Pj4+ICsNCj4+Pj4+Pj4gKwlpZiAoV0FSTl9PTl9PTkNFKHJldCkpDQo+Pj4+
Pj4+ICsJCXJldHVybiByZXQ7DQo+Pj4+Pj4+ICsNCj4+Pj4+Pj4gKwlyZXR1cm4gMDsNCj4+Pj4+
Pj4gK30NCj4+Pj4+Pj4gK0VYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfYmVnaW5fYWNjZXNz
LCBETUFfQlVGKTsNCj4+Pj4+Pj4gKw0KPj4+Pj4+PiArLyoqDQo+Pj4+Pj4+ICsgKiBAZG1hX2J1
Zl9lbmRfYWNjZXNzIC0gQ2FsbCBhZnRlciBhbnkgaGFyZHdhcmUgYWNjZXNzDQo+Pj4+Pj4+IGZy
b20vdG8NCj4+Pj4+Pj4gdGhlIERNQUJVRg0KPj4+Pj4+PiArICogQGF0dGFjaDoJW2luXQlhdHRh
Y2htZW50IHVzZWQgZm9yIGhhcmR3YXJlDQo+Pj4+Pj4+IGFjY2Vzcw0KPj4+Pj4+PiArICogQHNn
X3RhYmxlOglbaW5dCXNjYXR0ZXJsaXN0IHVzZWQgZm9yIHRoZSBETUENCj4+Pj4+Pj4gdHJhbnNm
ZXINCj4+Pj4+Pj4gKyAqIEBkaXJlY3Rpb246wqAgW2luXcKgwqDCoCBkaXJlY3Rpb24gb2YgRE1B
IHRyYW5zZmVyDQo+Pj4+Pj4+ICsgKi8NCj4+Pj4+Pj4gK2ludCBkbWFfYnVmX2VuZF9hY2Nlc3Mo
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPj4+Pj4+PiArCQnCoMKgwqDCoMKg
wqAgc3RydWN0IHNnX3RhYmxlICpzZ3QsIGVudW0NCj4+Pj4+Pj4gZG1hX2RhdGFfZGlyZWN0aW9u
IGRpcikNCj4+Pj4+Pj4gK3sNCj4+Pj4+Pj4gKwlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPj4+
Pj4+PiArCWJvb2wgY29va2llOw0KPj4+Pj4+PiArCWludCByZXQ7DQo+Pj4+Pj4+ICsNCj4+Pj4+
Pj4gKwlpZiAoV0FSTl9PTighYXR0YWNoKSkNCj4+Pj4+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+
Pj4+Pj4+ICsNCj4+Pj4+Pj4gKwlkbWFidWYgPSBhdHRhY2gtPmRtYWJ1ZjsNCj4+Pj4+Pj4gKw0K
Pj4+Pj4+PiArCWlmICghZG1hYnVmLT5vcHMtPmVuZF9hY2Nlc3MpDQo+Pj4+Pj4+ICsJCXJldHVy
biAwOw0KPj4+Pj4+PiArDQo+Pj4+Pj4+ICsJY29va2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25h
bGxpbmcoKTsNCj4+Pj4+Pj4gKwlyZXQgPSBkbWFidWYtPm9wcy0+ZW5kX2FjY2VzcyhhdHRhY2gs
IHNndCwgZGlyKTsNCj4+Pj4+Pj4gKwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoY29va2llKTsN
Cj4+Pj4+Pj4gKw0KPj4+Pj4+PiArCWlmIChXQVJOX09OX09OQ0UocmV0KSkNCj4+Pj4+Pj4gKwkJ
cmV0dXJuIHJldDsNCj4+Pj4+Pj4gKw0KPj4+Pj4+PiArCXJldHVybiAwOw0KPj4+Pj4+PiArfQ0K
Pj4+Pj4+PiArRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9lbmRfYWNjZXNzLCBETUFfQlVG
KTsNCj4+Pj4+Pj4gKw0KPj4+Pj4+PiAgwqDCoMKgICNpZmRlZiBDT05GSUdfREVCVUdfRlMNCj4+
Pj4+Pj4gIMKgwqDCoCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2Zp
bGUgKnMsIHZvaWQNCj4+Pj4+Pj4gKnVudXNlZCkNCj4+Pj4+Pj4gIMKgwqDCoCB7DQo+Pj4+Pj4+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1h
LQ0KPj4+Pj4+PiBidWYuaA0KPj4+Pj4+PiBpbmRleCA4ZmY0YWRkNzFmODguLjhiYTYxMmM3Y2Mx
NiAxMDA2NDQNCj4+Pj4+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4+Pj4+Pj4g
KysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4+Pj4+Pj4gQEAgLTI0Niw2ICsyNDYsMzgg
QEAgc3RydWN0IGRtYV9idWZfb3BzIHsNCj4+Pj4+Pj4gIMKgwqDCoMKgCSAqLw0KPj4+Pj4+PiAg
wqDCoMKgwqAJaW50ICgqZW5kX2NwdV9hY2Nlc3MpKHN0cnVjdCBkbWFfYnVmICosIGVudW0NCj4+
Pj4+Pj4gZG1hX2RhdGFfZGlyZWN0aW9uKTsNCj4+Pj4+Pj4gICAgICANCj4+Pj4+Pj4gKwkvKioN
Cj4+Pj4+Pj4gKwkgKiBAYmVnaW5fYWNjZXNzOg0KPj4+Pj4+PiArCSAqDQo+Pj4+Pj4+ICsJICog
VGhpcyBpcyBjYWxsZWQgZnJvbSBkbWFfYnVmX2JlZ2luX2FjY2VzcygpIHdoZW4NCj4+Pj4+Pj4g
YQ0KPj4+Pj4+PiBkZXZpY2UgZHJpdmVyDQo+Pj4+Pj4+ICsJICogd2FudHMgdG8gYWNjZXNzIHRo
ZSBkYXRhIG9mIHRoZSBETUFCVUYuIFRoZQ0KPj4+Pj4+PiBleHBvcnRlcg0KPj4+Pj4+PiBjYW4g
dXNlIHRoaXMNCj4+Pj4+Pj4gKwkgKiB0byBmbHVzaC9zeW5jIHRoZSBjYWNoZXMgaWYgbmVlZGVk
Lg0KPj4+Pj4+PiArCSAqDQo+Pj4+Pj4+ICsJICogVGhpcyBjYWxsYmFjayBpcyBvcHRpb25hbC4N
Cj4+Pj4+Pj4gKwkgKg0KPj4+Pj4+PiArCSAqIFJldHVybnM6DQo+Pj4+Pj4+ICsJICoNCj4+Pj4+
Pj4gKwkgKiAwIG9uIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uDQo+Pj4+Pj4+
IGZhaWx1cmUuDQo+Pj4+Pj4+ICsJICovDQo+Pj4+Pj4+ICsJaW50ICgqYmVnaW5fYWNjZXNzKShz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICosDQo+Pj4+Pj4+IHN0cnVjdA0KPj4+Pj4+PiBzZ190
YWJsZSAqLA0KPj4+Pj4+PiArCQkJwqDCoMKgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uKTsNCj4+
Pj4+Pj4gKw0KPj4+Pj4+PiArCS8qKg0KPj4+Pj4+PiArCSAqIEBlbmRfYWNjZXNzOg0KPj4+Pj4+
PiArCSAqDQo+Pj4+Pj4+ICsJICogVGhpcyBpcyBjYWxsZWQgZnJvbSBkbWFfYnVmX2VuZF9hY2Nl
c3MoKSB3aGVuIGENCj4+Pj4+Pj4gZGV2aWNlDQo+Pj4+Pj4+IGRyaXZlciBpcw0KPj4+Pj4+PiAr
CSAqIGRvbmUgYWNjZXNzaW5nIHRoZSBkYXRhIG9mIHRoZSBETUFCVUYuIFRoZQ0KPj4+Pj4+PiBl
eHBvcnRlcg0KPj4+Pj4+PiBjYW4NCj4+Pj4+Pj4gdXNlIHRoaXMNCj4+Pj4+Pj4gKwkgKiB0byBm
bHVzaC9zeW5jIHRoZSBjYWNoZXMgaWYgbmVlZGVkLg0KPj4+Pj4+PiArCSAqDQo+Pj4+Pj4+ICsJ
ICogVGhpcyBjYWxsYmFjayBpcyBvcHRpb25hbC4NCj4+Pj4+Pj4gKwkgKg0KPj4+Pj4+PiArCSAq
IFJldHVybnM6DQo+Pj4+Pj4+ICsJICoNCj4+Pj4+Pj4gKwkgKiAwIG9uIHN1Y2Nlc3Mgb3IgYSBu
ZWdhdGl2ZSBlcnJvciBjb2RlIG9uDQo+Pj4+Pj4+IGZhaWx1cmUuDQo+Pj4+Pj4+ICsJICovDQo+
Pj4+Pj4+ICsJaW50ICgqZW5kX2FjY2Vzcykoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqLA0K
Pj4+Pj4+PiBzdHJ1Y3QNCj4+Pj4+Pj4gc2dfdGFibGUgKiwNCj4+Pj4+Pj4gKwkJCcKgIGVudW0g
ZG1hX2RhdGFfZGlyZWN0aW9uKTsNCj4+Pj4+Pj4gKw0KPj4+Pj4+PiAgwqDCoMKgwqAJLyoqDQo+
Pj4+Pj4+ICDCoMKgwqDCoAkgKiBAbW1hcDoNCj4+Pj4+Pj4gIMKgwqDCoMKgCSAqDQo+Pj4+Pj4+
IEBAIC02MDYsNiArNjM4LDExIEBAIHZvaWQgZG1hX2J1Zl9kZXRhY2goc3RydWN0IGRtYV9idWYN
Cj4+Pj4+Pj4gKmRtYWJ1ZiwNCj4+Pj4+Pj4gIMKgwqDCoCBpbnQgZG1hX2J1Zl9waW4oc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsNCj4+Pj4+Pj4gIMKgwqDCoCB2b2lkIGRtYV9i
dWZfdW5waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsNCj4+Pj4+Pj4gICAg
ICANCj4+Pj4+Pj4gK2ludCBkbWFfYnVmX2JlZ2luX2FjY2VzcyhzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50DQo+Pj4+Pj4+ICphdHRhY2gsDQo+Pj4+Pj4+ICsJCQkgc3RydWN0IHNnX3RhYmxlICpz
Z3QsIGVudW0NCj4+Pj4+Pj4gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcik7DQo+Pj4+Pj4+ICtpbnQg
ZG1hX2J1Zl9lbmRfYWNjZXNzKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4+
Pj4+Pj4gKwkJwqDCoMKgwqDCoMKgIHN0cnVjdCBzZ190YWJsZSAqc2d0LCBlbnVtDQo+Pj4+Pj4+
IGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpOw0KPj4+Pj4+PiArDQo+Pj4+Pj4+ICDCoMKgwqAgc3Ry
dWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdA0KPj4+Pj4+PiBkbWFfYnVm
X2V4cG9ydF9pbmZvDQo+Pj4+Pj4+ICpleHBfaW5mbyk7DQo+Pj4+Pj4+ICAgICAgDQo+Pj4+Pj4+
ICDCoMKgwqAgaW50IGRtYV9idWZfZmQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwgaW50IGZsYWdz
KTsNCg==

--------------zGGu3dX8EMazW07Gs3tWx65o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    Am 23.01.24 um 14:02 schrieb Paul Cercueil:<br>
    <blockquote type="cite" cite="mid:0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net">[SNIP]<span style="white-space: pre-wrap">
</span>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">That an exporter has to call extra functions to access his own
buffers
is a complete no-go for the design since this forces exporters
into
doing extra steps for allowing importers to access their data.
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">Then what about we add these dma_buf_{begin,end}_access(), with
only
implementations for &quot;dumb&quot; exporters e.g. udmabuf or the dmabuf
heaps?
And only importers (who cache the mapping and actually care about
non-
coherency) would have to call these.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
No, the problem is still that you would have to change all importers
to 
mandatory use dma_buf_begin/end.

But going a step back caching the mapping is irrelevant for
coherency. 
Even if you don't cache the mapping you don't get coherency.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
You actually do - at least with udmabuf, as in that case
dma_buf_map_attachment() / dma_buf_unmap_attachment() will handle cache
coherency when the SGs are mapped/unmapped.</pre>
    </blockquote>
    <br>
    Well I just double checked the source in 6.7.1 and I can't see
    udmabuf doing anything for cache coherency in map/unmap.<br>
    <br>
    All it does is calling dma_map_sgtable() and dma_unmap_sgtable() to
    create and destroy the SG table and those are not supposed to sync
    anything to the CPU cache.<br>
    <br>
    In other words drivers usually use DMA_ATTR_SKIP_CPU_SYNC here, it's
    just that this is missing from udmabuf.<br>
    <br>
    <blockquote type="cite" cite="mid:0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">The problem was then that dma_buf_unmap_attachment cannot be called
before the dma_fence is signaled, and calling it after is already too
late (because the fence would be signaled before the data is sync'd).</pre>
    </blockquote>
    <br>
    Well what sync are you talking about? CPU sync? In DMA-buf that is
    handled differently.<br>
    <br>
    For importers it's mandatory that they can be coherent with the
    exporter. That usually means they can snoop the CPU cache if the
    exporter can snoop the CPU cache.<br>
    <br>
    For exporters you can implement the begin/end CPU access functions
    which allows you to implement something even if your exporting
    device can't snoop the CPU cache.<br>
    <br>
    <blockquote type="cite" cite="mid:0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">Daniel / Sima suggested then that I cache the mapping and add new
functions to ensure cache coherency, which is what these patches are
about.</pre>
    </blockquote>
    <br>
    Yeah, I've now catched up on the latest mail. Sorry I haven't seen
    that before.<br>
    <br>
    <blockquote type="cite" cite="mid:0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">In other words exporters are not require to call sync_to_cpu or 
sync_to_device when you create a mapping.

What exactly is your use case here? And why does coherency matters?
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
My use-case is, I create DMABUFs with udmabuf, that I attach to
USB/functionfs with the interface introduced by this patchset. I attach
them to IIO with a similar interface (being upstreamed in parallel),
and transfer data from USB to IIO and vice-versa in a zero-copy
fashion.

This works perfectly fine as long as the USB and IIO hardware are
coherent between themselves, which is the case on most of our boards.
However I do have a board (with a Xilinx Ultrascale SoC) where it is
not the case, and cache flushes/sync are needed. So I was trying to
rework these new interfaces to work on that system too.</pre>
    </blockquote>
    <br>
    Yeah, that sounds strongly like one of the use cases we have
    rejected so far.<br>
    <br>
    <span style="white-space: pre-wrap">
</span>
    <blockquote type="cite" cite="mid:0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">
If this really is a no-no, then I am fine with the assumption that
devices sharing a DMABUF must be coherent between themselves; but
that's something that should probably be enforced rather than assumed.

(and I *think* there is a way to force coherency in the Ultrascale's
interconnect - we're investigating it)</pre>
    </blockquote>
    <br>
    What you can do is that instead of using udmabuf or dma-heaps is
    that the device which can't provide coherency act as exporters of
    the buffers.<br>
    <br>
    The exporter is allowed to call sync_for_cpu/sync_for_device on it's
    own buffers and also gets begin/end CPU access notfications. So you
    can then handle coherency between the exporter and the CPU.<br>
    <br>
    If you really don't have coherency between devices then that would
    be a really new use case and we would need much more agreement on
    how to do this.<br>
    <br>
    Regards,<br>
    Christian.<br>
    <br>
    <blockquote type="cite" cite="mid:0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">

Cheers,
-Paul

</pre>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">At the very least, is there a way to check that &quot;the data can be
accessed coherently by the involved devices&quot;? So that my importer
can
EPERM if there is no coherency vs. a device that's already
attached.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Yeah, there is functionality for this in the DMA subsystem. I've once
created prototype patches for enforcing the same coherency approach 
between importer and exporter, but we never got around to upstream
them.



</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">
Cheers,
-Paul

</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">That in turn is pretty much un-testable unless you have every
possible
importer around while testing the exporter.

Regards,
Christian.

</pre>
            <blockquote type="cite">
              <blockquote type="cite">
                <pre class="moz-quote-pre" wrap="">Regards,
Christian.
</pre>
              </blockquote>
              <pre class="moz-quote-pre" wrap="">Cheers,
-Paul

</pre>
              <blockquote type="cite">
                <blockquote type="cite">
                  <pre class="moz-quote-pre" wrap="">Signed-off-by: Paul Cercueil <a class="moz-txt-link-rfc2396E" href="mailto:paul@crapouillou.net">&lt;paul@crapouillou.net&gt;</a>

---
v5: New patch
---
&nbsp;&nbsp;&nbsp; drivers/dma-buf/dma-buf.c | 66
+++++++++++++++++++++++++++++++++++++++
&nbsp;&nbsp;&nbsp; include/linux/dma-buf.h&nbsp;&nbsp; | 37 ++++++++++++++++++++++
&nbsp;&nbsp;&nbsp; 2 files changed, 103 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-
buf/dma-
buf.c
index 8fe5aa67b167..a8bab6c18fcd 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -830,6 +830,8 @@ static struct sg_table *
__map_dma_buf(struct
dma_buf_attachment *attach,
&nbsp;&nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp; - dma_buf_mmap()
&nbsp;&nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp; - dma_buf_begin_cpu_access()
&nbsp;&nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp; - dma_buf_end_cpu_access()
+ *&nbsp;&nbsp;&nbsp;&nbsp; - dma_buf_begin_access()
+ *&nbsp;&nbsp;&nbsp;&nbsp; - dma_buf_end_access()
&nbsp;&nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp; - dma_buf_map_attachment_unlocked()
&nbsp;&nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp; - dma_buf_unmap_attachment_unlocked()
&nbsp;&nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp; - dma_buf_vmap_unlocked()
@@ -1602,6 +1604,70 @@ void dma_buf_vunmap_unlocked(struct
dma_buf
*dmabuf, struct iosys_map *map)
&nbsp;&nbsp;&nbsp; }
&nbsp;&nbsp;&nbsp; EXPORT_SYMBOL_NS_GPL(dma_buf_vunmap_unlocked, DMA_BUF);
&nbsp;&nbsp;&nbsp; 
+/**
+ * @dma_buf_begin_access - Call before any hardware access
from/to
the DMABUF
+ * @attach:	[in]	attachment used for hardware
access
+ * @sg_table:	[in]	scatterlist used for the DMA
transfer
+ * @direction:&nbsp; [in]&nbsp;&nbsp;&nbsp; direction of DMA transfer
+ */
+int dma_buf_begin_access(struct dma_buf_attachment
*attach,
+			 struct sg_table *sgt, enum
dma_data_direction dir)
+{
+	struct dma_buf *dmabuf;
+	bool cookie;
+	int ret;
+
+	if (WARN_ON(!attach))
+		return -EINVAL;
+
+	dmabuf = attach-&gt;dmabuf;
+
+	if (!dmabuf-&gt;ops-&gt;begin_access)
+		return 0;
+
+	cookie = dma_fence_begin_signalling();
+	ret = dmabuf-&gt;ops-&gt;begin_access(attach, sgt, dir);
+	dma_fence_end_signalling(cookie);
+
+	if (WARN_ON_ONCE(ret))
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(dma_buf_begin_access, DMA_BUF);
+
+/**
+ * @dma_buf_end_access - Call after any hardware access
from/to
the DMABUF
+ * @attach:	[in]	attachment used for hardware
access
+ * @sg_table:	[in]	scatterlist used for the DMA
transfer
+ * @direction:&nbsp; [in]&nbsp;&nbsp;&nbsp; direction of DMA transfer
+ */
+int dma_buf_end_access(struct dma_buf_attachment *attach,
+		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct sg_table *sgt, enum
dma_data_direction dir)
+{
+	struct dma_buf *dmabuf;
+	bool cookie;
+	int ret;
+
+	if (WARN_ON(!attach))
+		return -EINVAL;
+
+	dmabuf = attach-&gt;dmabuf;
+
+	if (!dmabuf-&gt;ops-&gt;end_access)
+		return 0;
+
+	cookie = dma_fence_begin_signalling();
+	ret = dmabuf-&gt;ops-&gt;end_access(attach, sgt, dir);
+	dma_fence_end_signalling(cookie);
+
+	if (WARN_ON_ONCE(ret))
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(dma_buf_end_access, DMA_BUF);
+
&nbsp;&nbsp;&nbsp; #ifdef CONFIG_DEBUG_FS
&nbsp;&nbsp;&nbsp; static int dma_buf_debug_show(struct seq_file *s, void
*unused)
&nbsp;&nbsp;&nbsp; {
diff --git a/include/linux/dma-buf.h b/include/linux/dma-
buf.h
index 8ff4add71f88..8ba612c7cc16 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -246,6 +246,38 @@ struct dma_buf_ops {
&nbsp;&nbsp;&nbsp;&nbsp;	 */
&nbsp;&nbsp;&nbsp;&nbsp;	int (*end_cpu_access)(struct dma_buf *, enum
dma_data_direction);
&nbsp;&nbsp;&nbsp; 
+	/**
+	 * @begin_access:
+	 *
+	 * This is called from dma_buf_begin_access() when
a
device driver
+	 * wants to access the data of the DMABUF. The
exporter
can use this
+	 * to flush/sync the caches if needed.
+	 *
+	 * This callback is optional.
+	 *
+	 * Returns:
+	 *
+	 * 0 on success or a negative error code on
failure.
+	 */
+	int (*begin_access)(struct dma_buf_attachment *,
struct
sg_table *,
+			&nbsp;&nbsp;&nbsp; enum dma_data_direction);
+
+	/**
+	 * @end_access:
+	 *
+	 * This is called from dma_buf_end_access() when a
device
driver is
+	 * done accessing the data of the DMABUF. The
exporter
can
use this
+	 * to flush/sync the caches if needed.
+	 *
+	 * This callback is optional.
+	 *
+	 * Returns:
+	 *
+	 * 0 on success or a negative error code on
failure.
+	 */
+	int (*end_access)(struct dma_buf_attachment *,
struct
sg_table *,
+			&nbsp; enum dma_data_direction);
+
&nbsp;&nbsp;&nbsp;&nbsp;	/**
&nbsp;&nbsp;&nbsp;&nbsp;	 * @mmap:
&nbsp;&nbsp;&nbsp;&nbsp;	 *
@@ -606,6 +638,11 @@ void dma_buf_detach(struct dma_buf
*dmabuf,
&nbsp;&nbsp;&nbsp; int dma_buf_pin(struct dma_buf_attachment *attach);
&nbsp;&nbsp;&nbsp; void dma_buf_unpin(struct dma_buf_attachment *attach);
&nbsp;&nbsp;&nbsp; 
+int dma_buf_begin_access(struct dma_buf_attachment
*attach,
+			 struct sg_table *sgt, enum
dma_data_direction dir);
+int dma_buf_end_access(struct dma_buf_attachment *attach,
+		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct sg_table *sgt, enum
dma_data_direction dir);
+
&nbsp;&nbsp;&nbsp; struct dma_buf *dma_buf_export(const struct
dma_buf_export_info
*exp_info);
&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp; int dma_buf_fd(struct dma_buf *dmabuf, int flags);
</pre>
                </blockquote>
              </blockquote>
            </blockquote>
          </blockquote>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------zGGu3dX8EMazW07Gs3tWx65o--

--===============0241479847583073876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0241479847583073876==--
