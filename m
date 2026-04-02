Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sF/ENR8uzmlJlwYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 10:51:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 492AD3864F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 10:51:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51A95401F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Apr 2026 08:51:42 +0000 (UTC)
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012053.outbound.protection.outlook.com [40.107.209.53])
	by lists.linaro.org (Postfix) with ESMTPS id 4969E3F7FB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 08:51:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="mD/s6PGg";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.209.53 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nbQ63ABYxRqX1j8GXSY+O5sSK9wMtyBS15vhpAxx+KV5FT+Cmw0wn+ClvwiUoO0SYPRnQWS/GuHDxJDuUYt/x8HxOpFbq+ptbZkC6im8XvxCY0yGHSXiQCtIL03FEdzeHmGopoxaB1bjLGmH5eS6k27lYRlWXH16U60amCp5ejt8CBwptUtyREnzAClkYydCX4crR7tSW6ZaKp+tIauCqloFDuIV6j5g/24CB0uGh27kgqO3hUjxWp0s2cDFaUsJFkmocyzMpZR4LkLGWIS3rjF0JZAL+pA44czPl5072sfMf9pGxaP5stuklR+tf4v0sVylBhqiKPXOVNXcL+jJjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UfYFd+OYL6X+fIJMKO6wCt+DP0m7OAFnvn6SbXDBQIc=;
 b=TkzXtOs+7cIDj6pTggZi1QTJ7E3I2L7qN68kQ6Ds5b53VpmMrtzGnLmV33St/8ZUPNQVif1B+QUVdkqT4qpXnE35fLfd3PWGbsxRQgFCQODHR9Zs2XItdtNS1DO9ktJWX1l1Y8tW+1W2v50adkgT3T6j3tD1P1z0B5Vcpberh4fCKQa+JVQC4hMEAiNiMjTOphHudQRai+ZA91P8P/81w7RqSThvsZmLSRhOcleCweiVwNVUHLwt1rvIajtcAmAYJ4BL+roHOTXwcXvWIS1G2fvFfOi2U4KEZdH/WZbtgBuwG1XRJobQSy+8YjPMUg2Iw9Uyr2Oou1eioxTRHxl1sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UfYFd+OYL6X+fIJMKO6wCt+DP0m7OAFnvn6SbXDBQIc=;
 b=mD/s6PGgUAjbFq/zc676GJKTozEsgR3fuIChSSfT89tQd8824o6vloigYun+iWYKQbLYufWChrFwDpEUW2jMNMLg/eV9wZsGn+omvGxJxubRszrjJ//W8sYkTyl/vQ80bpYNdXcAZl/K63HVFvSRZ7W2iE9kUR3Bxbf02OzMNh0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Thu, 2 Apr
 2026 08:51:33 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.016; Thu, 2 Apr 2026
 08:51:33 +0000
Message-ID: <9c1545d0-6a5d-4260-b921-e8b1d3525f33@amd.com>
Date: Thu, 2 Apr 2026 10:51:26 +0200
User-Agent: Mozilla Thunderbird
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>,
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-12-fe46a9c1a046@oss.qualcomm.com>
 <e87c0c1d-82f1-4a03-9a56-9bf3e03273cf@amd.com>
 <29f9bb45-5c3f-4847-a629-21cef540f38b@oss.qualcomm.com>
 <998ce121-e027-441d-a3f4-2f3e41e10830@oss.qualcomm.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <998ce121-e027-441d-a3f4-2f3e41e10830@oss.qualcomm.com>
X-ClientProxiedBy: BL1PR13CA0320.namprd13.prod.outlook.com
 (2603:10b6:208:2c1::25) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: 4162e61e-251b-4917-f30a-08de90950a46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|921020|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	B7Mx2G/D/bguQBr7wYKmKlgw7h/ymHSBxi6DbEESlZR1PPZjacbgfrQbdgTobkq97Ph5aYK/Wrstgcm7OAstI8fY8ghm9m0qcIHwYVS+MdhcrQhlXpUpWM0CnK825iaXCB4JxGmWRRWTxA9vWdQcG1p+l6arBpHYkdJIbwPMdaseSbJ8mOBWBJbPZHe5orXHWap7DZxWSley1POhsElLTNSyaKg3oYYh9rbcb5WUc/2gwxY6dJiEZZnZ6pbID9TUtv3gUC2LkFIxJzj4AG62qlaa3sIEGC+aKwp2HjEVydSSj7Lsv5dzQrIEE3H8Dynk91x+NQULbOAIKPgX1Jj4EskRLG7gbaDYB4Xd9sk9az1LGoiElz9kmetzF8D8OwsDkK8s95LIbHq7v3F4fgeVCj+0tVsi7RBoPMBitWws4KsgZ7BQfSYvGAccHoojRLi5jtLFkJ0PvyUo4HM00H7dvKPODk84ebSsEzCdetEsaNC3iDr89gM3YCgVTqcPs5yeEJLCxLtPZeqNUi47QUFUKfBNLE2jA2Ge2Wga3kYQujeepTQH76CN7/7zOVELp9+WTjpzJnr+WTVCgZcWwZag+FPs/yGvdyZJ2M9jkzMti+mX6Z92sjP5tNMCiZrlaO3hJ4ISaCNAiPGlpSYTybpdxmf6jZ3dwStaMHwaPNLztovB5J8/LBkmXiCF7T9Wqk9ba1mZ1Oo26GpgjzkL3IeWtZfbRcOhrnMnDzuM/ffHkF8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(921020)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VDdoTjZSVFRTSk9IK1BPdkxDTis0dE1YcDFZMTJQbGZDMnQ5UkhmV0NVV3JV?=
 =?utf-8?B?cTVqb0N4eFkvRkk3RzY1N1Vxenk2NkZ4NkhNdk9kR0VDMHJqRmo4eHVFcWpM?=
 =?utf-8?B?WlMweXJObUg5Z3ZXclNmMVZjSEYySE4yUDdncGZWOUQ5T2dXNFlIdGFReDh4?=
 =?utf-8?B?K1pFb2FFY3oyVndDNm4yVzllTDhnTTZXV0FoaklteWZpYjdpYXNhbStnd1cy?=
 =?utf-8?B?Mnk0dGZvZ3RQNXVmYTBXR2txMEc4WUVCVlordG5rcTdWRmliQlExbUZaRTZK?=
 =?utf-8?B?bmhjSlJPMDYzUnpobGx0aVdXcmtza3UxRVZsWjV1RXBMMndKSkgyTER4RHZ3?=
 =?utf-8?B?eGRDanVnZnlkRWE0K2k2ZEVHWVFrMXhyWld4clFmbk11RUlYbzJld3BIaWkr?=
 =?utf-8?B?YTQwcEIyS2pyb1JYR3lEaUdyZUdkZkZYZGtqNTJTdmRHQ09rMlA1RjRrVVpR?=
 =?utf-8?B?Q3RiUmJvMC9ySnNvRkhuNGtac2ZWeXhpOXV2T2dZMzNqU1hhRWFpYm1RZm85?=
 =?utf-8?B?ZDJNd1NEbGljWi8vOFo0OHZqL01LMEUwRUNKS2ZjVnFLNzNnNW8zYmlXdHJ0?=
 =?utf-8?B?NDBKeHpyOGpTSUU3Qno5eFE0TndGU0k5WGxDL1FITndWNXhFdkxpSjNkZTZK?=
 =?utf-8?B?cjcwVFZ6QXlCeXFEaHA4M084ZUNZMnh6L29MZHQ1VmpLeEpJYmU0MWtGZkdY?=
 =?utf-8?B?OVVpQUpHZU4vcWpHOHJsbm5iOTU1NWIzM2dvZkZSRmZmSXBwQXJHRGZsR0J5?=
 =?utf-8?B?YjVjOWtwQ0VwdHBJZm5YUzM0aEZmdHQyN1RvWUJvWXhEdGZyazR1Q0lNdkNU?=
 =?utf-8?B?UFkzY09Gb3VpNzlTcTZwZ3FIS1IxV3BvUEZaTDZCSUlQUkRnUGhBN2VjeG4v?=
 =?utf-8?B?bnpVcDdlSXlDQjlvOFp4OVJCcHFTMVgwbWUxK1duOWNaUlJDSmZtNG9SVC80?=
 =?utf-8?B?M2FzUTdDT09aUjRUNjlSRjJGdVB1QmRXWnE2SzJHOFEzWmxBRGtROUhXUERR?=
 =?utf-8?B?RFZCMmdzUlM5K21KZERYL2JiMDg4MERONVZBUUduc2g0NHVmR0pvREhxSi9u?=
 =?utf-8?B?Uy80S2thMU85OEhBMzBUeFpMYUE4VFpaeDFRQ3pvc2JMZVA3cDJyVFRDTlBu?=
 =?utf-8?B?WHZuTmNNeUZYZVdNZEtQTnlvMU9NNko0QS9RTDFnUzBoZUdVclVRd0RMZ2lX?=
 =?utf-8?B?SVgyeVRXWXp2R1Vtb1lBaU04ZDVCbGsxSWdrbktHdm9mWUVOaUllMjYrUUVJ?=
 =?utf-8?B?NDc3bkh3NVUvME40RVRpbktyQ0NrZVFndmlYZGhQWUk3aGtLU1pYZTN5Y1pL?=
 =?utf-8?B?KzYxb1FKVGhVb2s5TlJkN2ZhbjRiVkpLNVN5aVRBSlUrWmxlSTNlbGlCdGIz?=
 =?utf-8?B?SHlnR3NVRkp3b2hvZHRzT0szQWo1ZTFjY3VCeHMvU2RCajF0S3VyVFFrYlhC?=
 =?utf-8?B?NmJLcStBc1hBSUtqSGY4dWh6Q2VRL0VUNjdmdVhHdmdLM21LK0FmZ2JpeEVn?=
 =?utf-8?B?Nkk3ekpaWW5qcXhuUmtWVDFZL3hJV0RxMnhIbFYwN1Q2NFZGaXZ0YWpCdHBw?=
 =?utf-8?B?NzdFdHJBNVNHQnZDemFXR1VjV3BvWktEM1dWMDA2M0FKVW0xYStSSjRPNUYv?=
 =?utf-8?B?THlld0U2cjNOcTUwTVF4M1lWMVQ4VlhCbkJTWEQzYXB2bVBsT2pvQVBPczl1?=
 =?utf-8?B?TWYzcjR1RW15V0dYQUpKcFVwdTZObmw3K1JnZ0pncFdnc05lK1czU0g1bWJk?=
 =?utf-8?B?REpqWTF2SjVFSlNNdG5od1V2V090SDRXRHdjMUVJeHdaUXhrSDMvYnBudENs?=
 =?utf-8?B?VGd6NWhDRDJ6VnUrTFlWRGsyc09wbkIrbnpVUjMvMUEvaHI2WThvem13aWc0?=
 =?utf-8?B?YStYYUpCSzcvQldEdjVHM3N1ZERmOEJxVmJjaDhKOGU2MXIzOGdWRVkxSGF0?=
 =?utf-8?B?NVpzc1FKYzRSNnp6eHVXQWxWRnVhaTVmQUVjd1JwY09TTlZFU1kwOGp4WGJ6?=
 =?utf-8?B?eENwZ05qWTBpRE5DV2JTbHFRTXlaZGljV3VJNFYyU0ZBek9TODF6Wmw2VmRI?=
 =?utf-8?B?UWZUQ2s1blMrRWhIbkxsQVpFVTZiR1JEaVh5VWZzd2lUYWxpemtCS0Z4N2pa?=
 =?utf-8?B?TERMVFQybFlxVS8yalZLMWNpQ24rR0VtUlVqNkRESC9KMlpCY29zQm9VeHN5?=
 =?utf-8?B?ZXdjVmUzZCs2VXJrQXVjSWh0d1kvaXF1MzFWb1o1R3Z4enZlOHV5OWVkRWRG?=
 =?utf-8?B?bGVNLzBHcHZSVkEvbjZLT2tVekw1R3oxckNlbENBTUdOWFZVUWhQN1VRNTRC?=
 =?utf-8?Q?4/CE1y1oxCy4eB6hTz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4162e61e-251b-4917-f30a-08de90950a46
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 08:51:33.1571
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2/XRxMWkAvpNNl8Q7G6CWyWR0PZDVl21g6ICTR65EiOfwpP5VHY4vM/3zqPQ8YdL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB8809
X-Spamd-Bar: ----
Message-ID-Hash: 67E7J5IBNU7NCAAEH3A7EWIAAM3TN7QF
X-Message-ID-Hash: 67E7J5IBNU7NCAAEH3A7EWIAAM3TN7QF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 12/18] accel/qda: Add PRIME dma-buf import support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/67E7J5IBNU7NCAAEH3A7EWIAAM3TN7QF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-0.339];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 492AD3864F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8yLzI2IDEwOjM2LCBFa2Fuc2ggR3VwdGEgd3JvdGU6DQo+IE9uIDMvOS8yMDI2IDEyOjI5
IFBNLCBFa2Fuc2ggR3VwdGEgd3JvdGU6DQo+Pg0KPj4gT24gMi8yNC8yMDI2IDI6NDIgUE0sIENo
cmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gT24gMi8yMy8yNiAyMDowOSwgRWthbnNoIEd1cHRh
IHdyb3RlOg0KPj4+PiBbU2llIGVyaGFsdGVuIG5pY2h0IGjDpHVmaWcgRS1NYWlscyB2b24gZWth
bnNoLmd1cHRhQG9zcy5xdWFsY29tbS5jb20uIFdlaXRlcmUgSW5mb3JtYXRpb25lbiwgd2FydW0g
ZGllcyB3aWNodGlnIGlzdCwgZmluZGVuIFNpZSB1bnRlciBodHRwczovL2FrYS5tcy9MZWFybkFi
b3V0U2VuZGVySWRlbnRpZmljYXRpb24gXQ0KPj4+Pg0KPj4+PiBBZGQgUFJJTUUgZG1hLWJ1ZiBp
bXBvcnQgc3VwcG9ydCBmb3IgUURBIEdFTSBidWZmZXIgb2JqZWN0cyBhbmQgaW50ZWdyYXRlDQo+
Pj4+IGl0IHdpdGggdGhlIGV4aXN0aW5nIHBlci1wcm9jZXNzIG1lbW9yeSBtYW5hZ2VyIGFuZCBJ
T01NVSBkZXZpY2UgbW9kZWwuDQo+Pj4+DQo+Pj4+IFRoZSBpbXBsZW1lbnRhdGlvbiBleHRlbmRz
IHFkYV9nZW1fb2JqIHRvIHJlcHJlc2VudCBpbXBvcnRlZCBkbWEtYnVmcywNCj4+Pj4gaW5jbHVk
aW5nIGRtYV9idWYgcmVmZXJlbmNlcywgYXR0YWNobWVudCBzdGF0ZSwgc2NhdHRlci1nYXRoZXIg
dGFibGVzDQo+Pj4+IGFuZCBhbiBpbXBvcnRlZCBETUEgYWRkcmVzcyB1c2VkIGZvciBEU1AtZmFj
aW5nIGJvb2sta2VlcGluZy4gVGhlDQo+Pj4+IHFkYV9nZW1fcHJpbWVfaW1wb3J0KCkgcGF0aCBo
YW5kbGVzIHJlaW1wb3J0cyBvZiBidWZmZXJzIG9yaWdpbmFsbHkNCj4+Pj4gZXhwb3J0ZWQgYnkg
UURBIGFzIHdlbGwgYXMgaW1wb3J0cyBvZiBleHRlcm5hbCBkbWEtYnVmcywgYXR0YWNoaW5nIHRo
ZW0NCj4+Pj4gdG8gdGhlIGFzc2lnbmVkIElPTU1VIGRldmljZQ0KPj4+IFRoYXQgaXMgdXN1YWxs
eSBhbiBhYnNvbHV0ZWx5IGNsZWFyIE5PLUdPIGZvciBETUEtYnVmcy4gV2hlcmUgZXhhY3RseSBp
biB0aGUgY29kZSBpcyB0aGF0Pw0KPj4gZG1hX2J1Zl9hdHRhY2gqIHRvIGNvbXV0ZS1jYiBpb21t
dSBkZXZpY2VzIGFyZSBjcml0aWNhbCBmb3IgRFNQcyB0byBhY2Nlc3MgdGhlIGJ1ZmZlci4NCj4+
IFRoaXMgaXMgbmVlZGVkIGlmIHRoZSBidWZmZXIgaXMgZXhwb3J0ZWQgYnkgYW55b25lIG90aGVy
IHRoYW4gUURBKHNheSBzeXN0ZW0gaGVhcCkuIElmIHRoaXMgaXMgbm90DQo+PiB0aGUgY29ycmVj
dCB3YXksIHdoYXQgc2hvdWxkIGJlIHRoZSByaWdodCB3YXkgaGVyZT8gT24gdGhlIGN1cnJlbnQg
ZmFzdHJwYyBkcml2ZXIgYWxzbywNCj4+IHRoZSBETUFCVUYgaXMgZ2V0dGluZyBhdHRhY2hlZCB3
aXRoIGlvbW11IGRldmljZVsxXSBkdWUgdG8gdGhlIHNhbWUgcmVxdWlyZW1lbnQuDQo+Pg0KPj4g
WzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQv
bGludXgtbmV4dC5naXQvdHJlZS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jI243NzkNCj4gDQo+IEhp
IENocmlzdGlhbiwNCj4gDQo+IERvIHlvdSBoYXZlIGFueSBzdWdnZXN0aW9ucyBmb3IgdGhlIHNo
YXJlZCByZXF1aXJlbWVudHM/DQoNCldlbGwgSSBkb24ndCBmdWxseSB1bmRlcnN0YW5kIHdoYXQg
eW91IGFyZSB0cnlpbmcgdG8gZG8gd2l0aCB0aGUgaW9tbXUuIFVzdWFsbHkgaXQgaXMgdGhlIGpv
YiBvZiB0aGUgZXhwb3J0ZXIgdG8gcHJvdmlkZSB0aGUgaW1wb3J0ZXIgd2l0aCBETUEgYWRkcmVz
c2VzIHdoaWNoIGFyZSB2YWxpZCBmb3IgaXRzIGRldmljZSBzdHJ1Y3R1cmUsIHRoYXQgaW5jbHVk
ZXMgSU9NTVUgbWFwcGluZy4NCg0KQ2FuIHlvdSBpdGVyYXRlIHdoYXQgZXhhY3RseSB0aGlzIGlv
bW11IGdyb3VwIGlzIGFuZCB3aHkgeW91IGhhdmUgdG8gYXR0YWNoIHRoZSBpbXBvcnRlZCBidWZm
ZXJzIHRvIGl0LCBob3cgdGhhdCBhdHRhY2htZW50IHdvcmtzIGFuZCBob3cgbGlmZXRpbWUgaXMg
bWFuYWdlZD8NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gSSdtIHJld29ya2luZyBv
biB0aGUgbmV4dCB2ZXJzaW9uIGFuZCBjdXJyZW50bHkgSSBkb24ndCBzZWUgYW55IG90aGVyIHdh
eQ0KPiB0byBoYW5kbGUgZG1hX2J1Zl9hdHRhY2gqIGNhc2VzLg0KPiANCj4gLy9Fa2Fuc2gNCj4g
DQo+Pj4+IGFuZCBtYXBwaW5nIHRoZW0gdGhyb3VnaCB0aGUgbWVtb3J5IG1hbmFnZXINCj4+Pj4g
Zm9yIERTUCBhY2Nlc3MuIFRoZSBHRU0gZnJlZSBwYXRoIGlzIHVwZGF0ZWQgdG8gdW5tYXAgYW5k
IGRldGFjaA0KPj4+PiBpbXBvcnRlZCBidWZmZXJzIHdoaWxlIHByZXNlcnZpbmcgdGhlIGV4aXN0
aW5nIGJlaGF2aW91ciBmb3IgbG9jYWxseQ0KPj4+PiBhbGxvY2F0ZWQgbWVtb3J5Lg0KPj4+Pg0K
Pj4+PiBUaGUgUFJJTUUgZmQtdG8taGFuZGxlIHBhdGggaXMgaW1wbGVtZW50ZWQgaW4gcWRhX3By
aW1lX2ZkX3RvX2hhbmRsZSgpLA0KPj4+PiB3aGljaCByZWNvcmRzIHRoZSBjYWxsaW5nIGRybV9m
aWxlIGluIGEgZHJpdmVyLXByaXZhdGUgaW1wb3J0IGNvbnRleHQNCj4+Pj4gYmVmb3JlIGludm9r
aW5nIHRoZSBjb3JlIERSTSBoZWxwZXJzLiBUaGUgR0VNIGltcG9ydCBjYWxsYmFjayByZXRyaWV2
ZXMNCj4+Pj4gdGhpcyBjb250ZXh0IHRvIGVuc3VyZSB0aGF0IGFuIElPTU1VIGRldmljZSBpcyBh
c3NpZ25lZCB0byB0aGUgcHJvY2Vzcw0KPj4+PiBhbmQgdGhhdCBpbXBvcnRlZCBidWZmZXJzIGZv
bGxvdyB0aGUgc2FtZSBwZXItcHJvY2VzcyBJT01NVSBzZWxlY3Rpb24NCj4+Pj4gcnVsZXMgYXMg
bmF0aXZlbHkgYWxsb2NhdGVkIEdFTSBvYmplY3RzLg0KPj4+Pg0KPj4+PiBUaGlzIHBhdGNoIHBy
ZXBhcmVzIHRoZSBkcml2ZXIgZm9yIGludGVyb3BlcmFibGUgYnVmZmVyIHNoYXJpbmcgYmV0d2Vl
bg0KPj4+PiBRREEgYW5kIG90aGVyIGRtYS1idWYgY2FwYWJsZSBzdWJzeXN0ZW1zIHdoaWxlIGtl
ZXBpbmcgSU9NTVUgbWFwcGluZyBhbmQNCj4+Pj4gbGlmZXRpbWUgaGFuZGxpbmcgY29uc2lzdGVu
dCB3aXRoIHRoZSBleGlzdGluZyBHRU0gYWxsb2NhdGlvbiBmbG93Lg0KPj4+Pg0KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBFa2Fuc2ggR3VwdGEgPGVrYW5zaC5ndXB0YUBvc3MucXVhbGNvbW0uY29tPg0K
Pj4+IC4uLg0KPj4+DQo+Pj4+IEBAIC0xNSwyMyArMTYsMjkgQEAgc3RhdGljIGludCB2YWxpZGF0
ZV9nZW1fb2JqX2Zvcl9tbWFwKHN0cnVjdCBxZGFfZ2VtX29iaiAqcWRhX2dlbV9vYmopDQo+Pj4+
ICAgICAgICAgICAgICAgICBxZGFfZXJyKE5VTEwsICJJbnZhbGlkIEdFTSBvYmplY3Qgc2l6ZVxu
Iik7DQo+Pj4+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4+Pj4gICAgICAgICB9
DQo+Pj4+IC0gICAgICAgaWYgKCFxZGFfZ2VtX29iai0+aW9tbXVfZGV2IHx8ICFxZGFfZ2VtX29i
ai0+aW9tbXVfZGV2LT5kZXYpIHsNCj4+Pj4gLSAgICAgICAgICAgICAgIHFkYV9lcnIoTlVMTCwg
IkFsbG9jYXRlZCBidWZmZXIgbWlzc2luZyBJT01NVSBkZXZpY2VcbiIpOw0KPj4+PiAtICAgICAg
ICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4+IC0gICAgICAgfQ0KPj4+PiAtICAgICAgIGlm
ICghcWRhX2dlbV9vYmotPmlvbW11X2Rldi0+ZGV2KSB7DQo+Pj4+IC0gICAgICAgICAgICAgICBx
ZGFfZXJyKE5VTEwsICJBbGxvY2F0ZWQgYnVmZmVyIG1pc3NpbmcgSU9NTVUgZGV2aWNlXG4iKTsN
Cj4+Pj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPj4+PiAtICAgICAgIH0NCj4+
Pj4gLSAgICAgICBpZiAoIXFkYV9nZW1fb2JqLT52aXJ0KSB7DQo+Pj4+IC0gICAgICAgICAgICAg
ICBxZGFfZXJyKE5VTEwsICJBbGxvY2F0ZWQgYnVmZmVyIG1pc3NpbmcgdmlydHVhbCBhZGRyZXNz
XG4iKTsNCj4+Pj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPj4+PiAtICAgICAg
IH0NCj4+Pj4gLSAgICAgICBpZiAocWRhX2dlbV9vYmotPmRtYV9hZGRyID09IDApIHsNCj4+Pj4g
LSAgICAgICAgICAgICAgIHFkYV9lcnIoTlVMTCwgIkFsbG9jYXRlZCBidWZmZXIgbWlzc2luZyBE
TUEgYWRkcmVzc1xuIik7DQo+Pj4+IC0gICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4+
Pj4gKyAgICAgICBpZiAocWRhX2dlbV9vYmotPmlzX2ltcG9ydGVkKSB7DQo+Pj4gQWJzb2x1dGVs
eSBjbGVhciBOQUsgdG8gdGhhdC4gSW1wb3J0ZWQgYnVmZmVycyAqY2FuJ3QqIGJlIG1tYXBlZCB0
aHJvdWdoIHRoZSBpbXBvcnRlciENCj4+Pg0KPj4+IFVzZXJzcGFjZSBuZWVkcyB0byBtbWFwKCkg
dGhlbSB0aHJvdWdoIHRoZSBleHBvcnRlci4NCj4+Pg0KPj4+IElmIHlvdSBhYnNvbHV0ZWx5IGhh
dmUgdG8gbWFwIHRoZW0gdGhyb3VnaCB0aGUgaW1wb3J0ZXIgZm9yIHVBUEkgYmFja3dhcmQgY29t
cGF0aWJpbGl0eSB0aGVuIHRoZXJlIGlzIGRtYV9idWZfbW1hcCgpIGZvciB0aGF0LCBidXQgdGhp
cyBpcyBjbGVhcmx5IG5vdCB0aGUgY2FzZSBoZXJlLg0KPj4+DQo+Pj4gLi4uDQo+PiBPa2F5LCB0
aGUgcmVxdWlyZW1lbnQgaXMgc2xpZ2h0bHkgZGlmZmVyZW50IGhlcmUuIEFueSBidWZmZXIgd2hp
Y2ggaXMgbm90IGFsbG9jYXRlZCB1c2luZyB0aGUNCj4+IFFEQSBHRU0gaW50ZXJmYWNlIG5lZWRz
IHRvIGJlIGF0dGFjaGVkIHRvIHRoZSBpb21tdSBkZXZpY2UgZm9yIHRoYXQgcGFydGljdWxhciBw
cm9jZXNzIHRvDQo+PiBlbmFibGUgRFNQIGZvciB0aGUgYWNjZXNzLiBJIHNob3VsZCBub3QgY2Fs
bCBpdCBgbW1hcGAgaW5zdGVhZCBpdCBzaG91bGQgYmUgY2FsbGVkIGltcG9ydGluZyB0aGUNCj4+
IGJ1ZmZlciB0byBhIHBhcnRpY3VsYXIgaW9tbXUgY29udGV4dCBiYW5rLiBXaXRoIHRoaXMgZGVm
aW5pdGlvbiwgaXMgaXQgZmluZSB0byBrZWVwIGl0IHRoaXMgd2F5PyBPcg0KPj4gc2hvdWxkIHRo
ZSBkbWFfYnVmX2F0dGFjaCogY2FsbHMgYmUgbW92ZWQgdG8gc29tZSBvdGhlciBwbGFjZT8NCj4+
Pj4gK3N0YXRpYyBpbnQgcWRhX21lbW9yeV9tYW5hZ2VyX21hcF9pbXBvcnRlZChzdHJ1Y3QgcWRh
X21lbW9yeV9tYW5hZ2VyICptZW1fbWdyLA0KPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IHFkYV9nZW1fb2JqICpnZW1fb2JqLA0KPj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHFkYV9pb21tdV9k
ZXZpY2UgKmlvbW11X2RldikNCj4+Pj4gK3sNCj4+Pj4gKyAgICAgICBzdHJ1Y3Qgc2NhdHRlcmxp
c3QgKnNnOw0KPj4+PiArICAgICAgIGRtYV9hZGRyX3QgZG1hX2FkZHI7DQo+Pj4+ICsgICAgICAg
aW50IHJldCA9IDA7DQo+Pj4+ICsNCj4+Pj4gKyAgICAgICBpZiAoIWdlbV9vYmotPmlzX2ltcG9y
dGVkIHx8ICFnZW1fb2JqLT5zZ3QgfHwgIWlvbW11X2Rldikgew0KPj4+PiArICAgICAgICAgICAg
ICAgcWRhX2VycihOVUxMLCAiSW52YWxpZCBwYXJhbWV0ZXJzIGZvciBpbXBvcnRlZCBidWZmZXIg
bWFwcGluZ1xuIik7DQo+Pj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4+Pj4g
KyAgICAgICB9DQo+Pj4+ICsNCj4+Pj4gKyAgICAgICBnZW1fb2JqLT5pb21tdV9kZXYgPSBpb21t
dV9kZXY7DQo+Pj4+ICsNCj4+Pj4gKyAgICAgICBzZyA9IGdlbV9vYmotPnNndC0+c2dsOw0KPj4+
PiArICAgICAgIGlmIChzZykgew0KPj4+PiArICAgICAgICAgICAgICAgZG1hX2FkZHIgPSBzZ19k
bWFfYWRkcmVzcyhzZyk7DQo+Pj4+ICsgICAgICAgICAgICAgICBkbWFfYWRkciArPSAoKHU2NClp
b21tdV9kZXYtPnNpZCA8PCAzMik7DQo+Pj4+ICsNCj4+Pj4gKyAgICAgICAgICAgICAgIGdlbV9v
YmotPmltcG9ydGVkX2RtYV9hZGRyID0gZG1hX2FkZHI7DQo+Pj4gV2VsbCB0aGF0IGxvb2tzIGxp
a2UgeW91IGFyZSBvbmx5IHVzaW5nIHRoZSBmaXJzdCBETUEgYWRkcmVzcyBmcm9tIHRoZSBpbXBv
cnRlZCBzZ3QuIFdoYXQgYWJvdXQgdGhlIG90aGVycz8NCj4+IEkgbWlnaHQgaGF2ZSBhIHByb3Bl
ciBhcHBhY2ggZm9yIHRoaXMgbm93LCB3aWxsIHVwZGF0ZSBpbiB0aGUgbmV4dCBzcGluLg0KPj4+
IFJlZ2FyZHMsDQo+Pj4gQ2hyaXN0aWFuLg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
