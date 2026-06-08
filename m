Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id asr+GGNmJmqSVwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 08 Jun 2026 08:51:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D138F6533E4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 08 Jun 2026 08:51:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b="y0/ShAL4";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6620D40977
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jun 2026 06:42:19 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012056.outbound.protection.outlook.com [52.101.43.56])
	by lists.linaro.org (Postfix) with ESMTPS id BE2D43F79C
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jun 2026 06:42:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u0DhbrrfSCzZbOuyO/b1bLaAp2p2T/ViVl3GQnDf/gRfo9TtKd5jzQ+NlvNsigXQKOCLgVYS6d2/gismNRBJyYyqYBEr3OWSlsN1uHUnMouGSbBPNP6+wQ7yVVt/NmahSQk9yM6+waR8PKp/WoqGO9RcQgsOgUSGRjv/UisCES+/7I/clc956F8F/49enKpUprkA+OGRHJlPIZRP21+2nSUzBBXfwZEu2EKzgMWTQqghem6dovDrFztvumowZK+R+xPzhtnU/CXPGvXVnOsQsBLkv8/I7nyhxIntSrH81NYU3AAUXN/RQYdHRTHbf5q5FcglZRbntQ2RYWKKkPRfuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p/S1yzBaxcOKzcVQoqSHiatBx5MJa01Q0+RQecGvJTM=;
 b=l7quJ1V9z+G76WP3obzjZ3l2/F9L3ksx1AkhwQRhZGnIMLukdGfsN6wRU/n7jEucvNZs8JcW6jdhWZQA+AQ6nR5W88nVjmyG3KutsmSwGE0l1VuDAGa6LT1gLYJg2PXNNlCPie25UweBUbNozmuEvIfHSUuz8XQPz3gzlUxF7CgIhAm5dFl67pzh2IMpxE41i5c7+fM9Rxx+YF1bPy6FL8V09PnBxWpnynVRQyxIdLcMAamcOv3Y8rJY/nnyqCA6iCAjrmP5y8+PReCeWQ5304dE/SFc9PfZBNQwespXhOwGmOzyR7eQkYi66MW+7s/uG2J/FsgGkjQki6z7P3mxJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p/S1yzBaxcOKzcVQoqSHiatBx5MJa01Q0+RQecGvJTM=;
 b=y0/ShAL47Q57dmPcdLmxmBNkWDIwVvgRsYCbBy5jW8ecEwMc0O1P3zlklWUU7LHU1AXlhg9uq6g43mq0Mm9Kd5c+GfEQmkb0QjELaNJ9MBuUov9Z1kXvwbKgaBVwu12tyqm43HJOh7Hs8oBJPX84mpnQrO/4N2zKQUWtw+JG5M4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW3PR12MB4410.namprd12.prod.outlook.com (2603:10b6:303:5b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 06:42:06 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0092.006; Mon, 8 Jun 2026
 06:42:06 +0000
Message-ID: <0c86f5d3-b5e9-4cac-aa9d-30c5c8ecca66@amd.com>
Date: Mon, 8 Jun 2026 08:41:59 +0200
User-Agent: Mozilla Thunderbird
To: Bobby Eshleman <bobbyeshleman@gmail.com>
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
 <20260603-tcpdm-large-niovs-v1-2-f37a4ac6726c@meta.com>
 <bdce2488-fe77-4f36-9ed6-dd2c785fa7c1@amd.com>
 <aiMY8CpckM8Jav0g@devvm29614.prn0.facebook.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aiMY8CpckM8Jav0g@devvm29614.prn0.facebook.com>
X-ClientProxiedBy: MN0PR04CA0019.namprd04.prod.outlook.com
 (2603:10b6:208:52d::33) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW3PR12MB4410:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a6a4d1a-a5d4-4e1d-1006-08dec5290ea9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|56012099006|11063799006|4143699003|10063799003|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	mY4KyWWW0DcqHFDH+GljXAMQF0w7k8a1NECDugI5OUcyPiXURfHEw5L0H/jjaAnk3afo4QTZo+u6m2XH0NHN9SJOKbCFmcJ1evcJdFmLG6LpGa/zi8j6bHdsuoSSua3Rkg+HgIzesf8u7RiQuQ+m9nvtNAB3o2WCU3xBOsOPTYAwZK8Equvc4D9LNP8xGUh+ICyCGNFZVGWb5lNPeP+MIeThSqxhEL8ung5pCW+as9+cKbKzmm9RUshI4Xvjd8hYnr+vClEZztf7ZPaoLkJLADyAWlmRRI0wnO2qprrRSl5XR3ZweDqI4D6bcp4ZEIlhaf6u+l5ybfV2hVEqg7mhHD30dc59KpRf8iBBMm75YSwPIt/mJsw0LIJSjG0IghyegtGONKeleUFZxTbtRcDNr8kAyWXiMmYqDMsoTBCVfQ+YTkxXMTtabYvxZv3YmF5sutipWihqpUozfk9No7sSIx2iREOrXDdcyCxWQKuI9Pk8FwkZ5vRgDciLJKxjwCOfeamor00J733RqlWjYmi8M6XTaiR0GT2HMOcEUiQ05DYXuaFpJOOLgfYkHjz4YPiVUkJ4ziWqbyY1GHuH1YtAMhVQjbuPjd9SQyRPYGzrU0O8NfVo3cyN0b0NAOsSK2O7qw1s4Oo4x42XafsWJ7wiqihXairzTs/a2A7nRu03MDQ22RQmKb8ZToKwSLLjKBUK
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099006)(11063799006)(4143699003)(10063799003)(6133799003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NVdnM1dSOFkrcFBwMldRMVh6Q21lcDZKbmNHM1k4eG13SHdiSUZIVWN4b2xh?=
 =?utf-8?B?RGxYdmR1VkRaazJqdjhSdnViUzJTQkJ3OGswQUpBUGRnQ2pSZVQyZVlBelNp?=
 =?utf-8?B?UzBucXF3ak5LVVZnSUtoLzRnRTlrLzRxWCtXODltNkZRVng4SERBSTA3UWtM?=
 =?utf-8?B?U3RUcTY1T3dnLzBLcnRycHZOZUhIUEV1TkFlUkIxQ3RNTWJJaGIwWHdia2oy?=
 =?utf-8?B?dktjZytyTHJaZ2dsOURBcmIxNkJSUU5yMk03czJyVHRDaUJqOHlDeW1pWnAw?=
 =?utf-8?B?aE5oWVNsYmwrVHJuSFM5MHJxZHl4WEo1emg5aEJDVWc2eVpocVpZVndKbm1r?=
 =?utf-8?B?Nnk5QlltV0doYW1QRXlqUFQ3THZibk90ZHpxaWJEL1hPUUNZUWhKa09WamMx?=
 =?utf-8?B?RkZBaTNrRHkxTTlkQTNHL2FSTS9JWmdxcWJ1eVptQlJBamZRYWd2L1M4dlgz?=
 =?utf-8?B?ZXRhVkZlWnNBT0d2YSszS0JWa0svUEhzeXhRejBIS2t1T0ovZ3laSEY4Uzkv?=
 =?utf-8?B?cDFFc0kxaUtHMnRudFk1ZS8rcWw1b1VkcU4rZFYvVHdkR25aR2k4d1hsNzJM?=
 =?utf-8?B?Uy9rUCt1QThHQjAwd211N3B6b2xqOHhOaFArb3BKZFkwOEt1eGJmYlFGVEdV?=
 =?utf-8?B?VWpyRlE3YjR2VEpvUklXbFpCVlhLZ0xJejRGSDc3WGFaZStBemswR25QOFJD?=
 =?utf-8?B?MXV2ZmVIM2xoeWlDekd0aWlmVzJxc0gzeVpWdFlsaEU0SFBLa0IwOTRCbXBL?=
 =?utf-8?B?WVdkS1RJUXE0N3BBVE9RMHJNV1h2ZUNTcWFtem5uVDJkbE5OWXJPUXpQZTFh?=
 =?utf-8?B?aklLLzhSVXA3ZHB4d2hldjNmOFhBSVp3dmxmOTdpNS9ZMkxlem91SkRiejE5?=
 =?utf-8?B?dHJkcnhZM1d3V2M5V0VMelBSaWFGSFFZb3kzSzJqZVdSMFlFdm93M1dhazBu?=
 =?utf-8?B?VmZnWkh6N2RHbDY3TFVpUnhhMllTbGZSNEE3SSs4NjlzWTlrbmZXdHVpZCtr?=
 =?utf-8?B?OXpSVFlQNFVmMURZcjNwRWFzVEx1UUQ5a3Jkc2VzVDZjZjNuRk1NUnhXS29F?=
 =?utf-8?B?TzFjUVFyTTJGbFc2bXFRT3Y3eTUzd2dmbVozQjVoVGVPcUo1WUdTelNwRkxZ?=
 =?utf-8?B?UTlhWjJSZlNEOGd6aFJpa2R5c1JIdDNtSlBDUnR5QmpvODFDdWFMTGhDTFhI?=
 =?utf-8?B?WDcwWVdLdjd0VnBLdEpsVXo0aVRubWxuRkdJZGdJc0VveklqQnI0aE90Wkl0?=
 =?utf-8?B?Zk9KSlpSb09WWXZxN3hyS0tZZDZUSFFqR0xmT1ZiN29hcWEwVlY2WW42QTMr?=
 =?utf-8?B?eUZkalpyalVLUUFXSXl1NUZuN0V1OWFuTmRTTE41ZzNWUTdVajlTWTJ3ak9u?=
 =?utf-8?B?QUR1VHZ2THFVUjNoOWt0NG1aWW12aE92aXo5ZHM0akh2MG13QVZjR2E0YzdV?=
 =?utf-8?B?UzN3TXNJMUc1SzZUbVdMZGYybDVsSHAvVlhkYVoveHZDZnBXM0NXMGgvTDVk?=
 =?utf-8?B?ODZuSGJmQ0J2V05oejNMMFNvNnBwdTZUUzFFYW0rSmdqdlU1dlI3dEdha2VM?=
 =?utf-8?B?VHdRd3VlT2pZb3cxZ3ZoS1k2SUFiT3JYOU1zQXFzOS9LL0hMRGtXTWp1WjJY?=
 =?utf-8?B?Z25TQ3R0dzdpcUs5Q1JPRmR6d1J4SlZtWFc1RVNnbDhSMGZRQks3TFh2NHpu?=
 =?utf-8?B?MSs0RmtjR005MHFKQ3NmcUtJUVlYL1hsZDJzS1RUcWlHMlcrdEVPcTRCTGxq?=
 =?utf-8?B?cy9JcEZOY3Q1Y3dGVjVkT2wvd3BZaVFEelB5SXFORi9mSWphckxTeXk5K1pO?=
 =?utf-8?B?UnhpUndaL0RlTE4zUGlNbVZVcHFvNzhNcFpGR014SGxFRXR6KzVlZzVrZHAx?=
 =?utf-8?B?djJtSDFzSDF1bWFkRitvZmZoOHRISzZqNzdHNHdWbm13a1I2bEF3aXVla1lr?=
 =?utf-8?B?MDlOaHk5eVE3S29TSzhlS2FFdklYUHNlZWFLeWtGUnFUNnhVZkRYbVFtTkc1?=
 =?utf-8?B?ckk5VzVDMnFxdTZiTnNyam51YkVhWlJjdE9Za2I2VTJSdjFVbnNVUVBUVGdQ?=
 =?utf-8?B?WjdXbW1YdkY4ZEhSc1M0cVVIL28yTVlkcnpPbldjZ292NU9rUlB1V045QnFl?=
 =?utf-8?B?Wi9sQU9GQkRGYVRvVTZIaWNxT1VEbGNXeVRJUnZRdFNlWUdXaFlMd1Ivc0lF?=
 =?utf-8?B?a1NtY3FMNnAvU0dMOUFDN2wrT0RpU29nRzYwdlB2d3VZTHpmVnFtcTVsT0hm?=
 =?utf-8?B?cERLOXRvdGpEcnlsb2MzYUdQWmxQT1d2cldGY2VkNHBzQ0xENmdocG43NSt6?=
 =?utf-8?Q?znPe40rWImS5ws3DgF?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a6a4d1a-a5d4-4e1d-1006-08dec5290ea9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 06:42:06.5925
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aWh0FkF6SRYzYdOHvfJfr8w+wwO5oK+M9PU9O36QSJU9MkFTebDiQxQ0O/f4BSiO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4410
X-Spamd-Bar: -----
Message-ID-Hash: SDL3B5ITGS2IITJ35RBWYWNHP4NVXHFH
X-Message-ID-Hash: SDL3B5ITGS2IITJ35RBWYWNHP4NVXHFH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SDL3B5ITGS2IITJ35RBWYWNHP4NVXHFH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:from_mime,amd.com:mid,meta.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D138F6533E4

T24gNi81LzI2IDIwOjQ0LCBCb2JieSBFc2hsZW1hbiB3cm90ZToNCj4gT24gRnJpLCBKdW4gMDUs
IDIwMjYgYXQgMTE6MzA6MDdBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IE9u
IDYvNC8yNiAwMjo0MiwgQm9iYnkgRXNobGVtYW4gd3JvdGU6DQo+Pj4gRnJvbTogQm9iYnkgRXNo
bGVtYW4gPGJvYmJ5ZXNobGVtYW5AbWV0YS5jb20+DQo+Pj4NCj4+PiBnZXRfc2dfdGFibGUoKSBl
bWl0dGVkIG9uZSBQQUdFX1NJWkUgc2cgZW50cnkgcGVyIHBhZ2UgZXZlbiB3aGVuIHRoZQ0KPj4+
IHVuZGVybHlpbmcgZm9saW8gd2FzIGxhcmdlci4NCj4+Pg0KPj4+IEluc3RlYWQsIHdhbGsgZm9s
aW9zW10gYW5kIGVtaXQgb25lIHNnIGVudHJ5IHBlciBmb2xpby4gV2hlbiBmb2xpb3MNCj4+PiBy
ZXByZXNlbnQgbGFyZ2UgcGFnZXMgKGFzIGlzIGZvciBNRkRfSFVHRVRMQiksIGVhY2ggc2cgZW50
cnkgaXMgYSBsYXJnZQ0KPj4+IHBhZ2UuIE5vcm1hbCBQQUdFX1NJWkUgc2cgdGFibGVzIGFyZSB1
bmNoYW5nZWQuDQo+Pj4NCj4+PiBSZXF1aXJlZCBieSBuZXQvY29yZS9kZXZtZW0gdG8gc3VwcG9y
dCByeC1idWYtc2l6ZSA+IFBBR0VfU0laRSB3aXRoDQo+Pj4gdWRtYWJ1Zi4NCj4+DQo+PiBUaGF0
IGRvZXNuJ3QgZXhwbGFpbiB3aHkgdGhpcyBpcyByZXF1aXJlZC4NCj4gDQo+IFN1cmUsIGNhbiBk
ZWZpbml0ZWx5IGFkZC4gRGV2bWVtIGN1cnJlbnRseSByZXF1aXJlcyBkbWFidWYgc2cgZW50cmll
cyB0bw0KPiBiZSBsZW5ndGggYW5kIHNpemUgYWxpZ25lZCB3aGVuIGl0IGFsbG9jYXRlcyBuaW92
cyBmb3IgTklDIHBhZ2UgcG9vbHMuDQo+IFRob3VnaCB1ZG1hYnVmIGlzIG5vdCB2aW9sYXRpbmcg
YW55IGRtYWJ1ZiBjb250cmFjdCBieSBlbWl0dGluZw0KPiBQQUdFX1NJWkUgZW50cmllcyBhbmQg
dGhlIGFib3ZlIHJlc3RyaWN0aW9uIGlzIHByb2JhYmx5IG1vcmUgYQ0KPiBzaG9ydGZhbGxpbmcg
b2YgZGV2bWVtLCBieSBlbWl0dGluZyBhIHNpbmdsZSBlbnRyeSBwZXIgZm9saW8gdGhpcyBwYXRj
aA0KPiBhbGxvd3MgdWRtYWJ1ZiB0byBiZSB1c2VkIGJ5IGRldm1lbSBmb3IgbGFyZ2UgcGFnZXMu
DQo+IA0KPj4NCj4+IFBsZWFzZSBub3RlIHRoYXQgYWNjZXNzaW5nIHRoZSBwYWdlcy9mb2xpbyBv
ZiBhbiBzZy10YWJsZSByZXR1cm5lZCBieSBETUEtYnVmIGlzIGlsbGVnYWwgYW5kIHN0cmljdGx5
IGZvcmJpZGRlbiENCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPiANCj4gSXQgc2Vl
bXMgYm90aCBkZXZtZW0gYW5kIGlvX3VyaW5nIHpjcnggYXQgbGVhc3QgaW50cm9zcGVjdCB0aHJv
dWdoIHRvDQo+IHRoZSBzZy10YWJsZSB0byBidWlsZCBOSUMgcGFnZSBwb29scyAobm90IGFjY2Vz
c2luZyB0aGUgbWVtb3J5IGl0c2VsZiwNCj4gaG93ZXZlcikuIElzIHRoZXJlIGEgYmV0dGVyIHdh
eT8NCg0KVGhhdCdzIGFuIGFic29sdXRlIE5PLUdPISBXZSBuZWVkIHRvIHN0b3AgdGhhdCBpbW1l
ZGlhdGVseS4NCg0KVG91Y2hpbmcgdGhlIHVuZGVybHlpbmcgc3RydWN0IHBhZ2Ugb2YgYW4gRE1B
LWJ1ZiBleHBvcnRlZCBzZy10YWJsZSBpcyBzdHJpY3RseSBmb3JiaWRkZW4uDQoNCldlIGV2ZW4g
aGF2ZSBjb2RlIHRvIHdyYXAgdGhlIHNnX3RhYmxlIGFuZCBoaWRlIHRoZSBzdHJ1Y3QgcGFnZXMg
b24gZGVidWcgYnVpbGRzIHRvIGNhdGNoIHRob3NlIGlzc3Vlcywgc2VlIGZ1bmN0aW9uIGRtYV9i
dWZfd3JhcF9zZ190YWJsZSgpLg0KDQpNeSBsYXN0IHN0YXR1cyBpcyB0aGF0IHRoZSBOSUMgcGFn
ZSBwb29scyBhcmUgYnVpbGQgZGlyZWN0bHkgZnJvbSB0aGUgRE1BIGFkZHJlc3NlcyBleHBvc2Vk
IGJ5IHRoZSBzZ190YWJsZS4NCg0KV2FzIHRoZXJlIGFueSBjaGFuZ2UgSSdtIG5vdCBhd2FyZSBv
Zj8NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gQmVzdCwNCj4gQm9iYnkNCj4gDQo+
Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEJvYmJ5IEVzaGxlbWFuIDxib2JieWVzaGxlbWFuQG1ldGEu
Y29tPg0KPj4+IC0tLQ0KPj4+ICBkcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIHwgNDcgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0NCj4+PiAgMSBmaWxlIGNo
YW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVm
LmMNCj4+PiBpbmRleCA5NGI4ZWNiODkyYmIuLmYyOGRkMzc4OGFkYSAxMDA2NDQNCj4+PiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3Vk
bWFidWYuYw0KPj4+IEBAIC0xNDEsMjYgKzE0MSw2MyBAQCBzdGF0aWMgdm9pZCB2dW5tYXBfdWRt
YWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQo+Pj4gICAg
ICAgICB2bV91bm1hcF9yYW0obWFwLT52YWRkciwgdWJ1Zi0+cGFnZWNvdW50KTsNCj4+PiAgfQ0K
Pj4+DQo+Pj4gKy8qIFJldHVybiB0aGUgbnVtYmVyIG9mIGNvbnRpZ3VvdXMgcGFnZXMgYmFja2Vk
IGJ5IHRoZSBmb2xpbyBhdCBAaS4NCj4+PiArICogQSB1ZG1hYnVmIG1heSBtYXAgb25seSBwYXJ0
IG9mIGEgZm9saW8sIG9yIHJlZmVyZW5jZSB0aGUgc2FtZSBmb2xpbw0KPj4+ICsgKiBpbiBtdWx0
aXBsZSBub24tY29udGlndW91cyBydW5zLCBzbyBmb2xpb19ucl9wYWdlcygpIGNhbid0IGJlIHVz
ZWQuDQo+Pj4gKyAqLw0KPj4+ICtzdGF0aWMgcGdvZmZfdCB1ZG1hYnVmX2ZvbGlvX25yX3BhZ2Vz
KHN0cnVjdCB1ZG1hYnVmICp1YnVmLCBwZ29mZl90IGkpDQo+Pj4gK3sNCj4+PiArICAgICAgIHN0
cnVjdCBmb2xpbyAqZiA9IHVidWYtPmZvbGlvc1tpXTsNCj4+PiArICAgICAgIHBnb2ZmX3QgajsN
Cj4+PiArDQo+Pj4gKyAgICAgICBmb3IgKGogPSAxOyBpICsgaiA8IHVidWYtPnBhZ2Vjb3VudDsg
aisrKSB7DQo+Pj4gKyAgICAgICAgICAgICAgIGlmICh1YnVmLT5mb2xpb3NbaSArIGpdICE9IGYp
DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+Pj4gKyAgICAgICAgICAgICAg
IC8qIFNhbWUgZm9saW8sIGJ1dCBub3QgYSBzZXF1ZW50aWFsIG9mZnNldCB3aXRoaW4gaXQuICov
DQo+Pj4gKyAgICAgICAgICAgICAgIGlmICh1YnVmLT5vZmZzZXRzW2kgKyBqXSAhPSB1YnVmLT5v
ZmZzZXRzW2ldICsgaiAqIFBBR0VfU0laRSkNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICBi
cmVhazsNCj4+PiArICAgICAgIH0NCj4+PiArICAgICAgIHJldHVybiBqOw0KPj4+ICt9DQo+Pj4g
Kw0KPj4+ICsvKiBDb3VudCB0aGUgY29udGlndW91cyBmb2xpbyBydW5zIGluIEB1YnVmLCBvbmUg
c2cgZW50cnkgcGVyIHJ1bi4gKi8NCj4+PiArc3RhdGljIHVuc2lnbmVkIGludCB1ZG1hYnVmX3Nn
X25lbnRzKHN0cnVjdCB1ZG1hYnVmICp1YnVmKQ0KPj4+ICt7DQo+Pj4gKyAgICAgICB1bnNpZ25l
ZCBpbnQgbmVudHMgPSAwOw0KPj4+ICsgICAgICAgcGdvZmZfdCBpOw0KPj4+ICsNCj4+PiArICAg
ICAgIGZvciAoaSA9IDA7IGkgPCB1YnVmLT5wYWdlY291bnQ7IGkgKz0gdWRtYWJ1Zl9mb2xpb19u
cl9wYWdlcyh1YnVmLCBpKSkNCj4+PiArICAgICAgICAgICAgICAgbmVudHMrKzsNCj4+PiArICAg
ICAgIHJldHVybiBuZW50czsNCj4+PiArfQ0KPj4+ICsNCj4+PiAgc3RhdGljIHN0cnVjdCBzZ190
YWJsZSAqZ2V0X3NnX3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRtYV9idWYgKmJ1
ZiwNCj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBkbWFfZGF0
YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQ0KPj4+ICB7DQo+Pj4gICAgICAgICBzdHJ1Y3QgdWRtYWJ1
ZiAqdWJ1ZiA9IGJ1Zi0+cHJpdjsNCj4+PiAtICAgICAgIHN0cnVjdCBzZ190YWJsZSAqc2c7DQo+
Pj4gICAgICAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbDsNCj4+PiAtICAgICAgIHVuc2lnbmVk
IGludCBpID0gMDsNCj4+PiArICAgICAgIHN0cnVjdCBzZ190YWJsZSAqc2c7DQo+Pj4gKyAgICAg
ICBwZ29mZl90IGksIHJ1bjsNCj4+PiArICAgICAgIHVuc2lnbmVkIGludCBuZW50czsNCj4+PiAg
ICAgICAgIGludCByZXQ7DQo+Pj4NCj4+PiArICAgICAgIG5lbnRzID0gdWRtYWJ1Zl9zZ19uZW50
cyh1YnVmKTsNCj4+PiArDQo+Pj4gICAgICAgICBzZyA9IGt6YWxsb2Nfb2JqKCpzZyk7DQo+Pj4g
ICAgICAgICBpZiAoIXNnKQ0KPj4+ICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5P
TUVNKTsNCj4+Pg0KPj4+IC0gICAgICAgcmV0ID0gc2dfYWxsb2NfdGFibGUoc2csIHVidWYtPnBh
Z2Vjb3VudCwgR0ZQX0tFUk5FTCk7DQo+Pj4gKyAgICAgICByZXQgPSBzZ19hbGxvY190YWJsZShz
ZywgbmVudHMsIEdGUF9LRVJORUwpOw0KPj4+ICAgICAgICAgaWYgKHJldCA8IDApDQo+Pj4gICAg
ICAgICAgICAgICAgIGdvdG8gZXJyX2FsbG9jOw0KPj4+DQo+Pj4gLSAgICAgICBmb3JfZWFjaF9z
ZyhzZy0+c2dsLCBzZ2wsIHVidWYtPnBhZ2Vjb3VudCwgaSkNCj4+PiAtICAgICAgICAgICAgICAg
c2dfc2V0X2ZvbGlvKHNnbCwgdWJ1Zi0+Zm9saW9zW2ldLCBQQUdFX1NJWkUsDQo+Pj4gKyAgICAg
ICBzZ2wgPSBzZy0+c2dsOw0KPj4+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IHVidWYtPnBhZ2Vj
b3VudDsgaSArPSBydW4pIHsNCj4+PiArICAgICAgICAgICAgICAgcnVuID0gdWRtYWJ1Zl9mb2xp
b19ucl9wYWdlcyh1YnVmLCBpKTsNCj4+PiArICAgICAgICAgICAgICAgc2dfc2V0X2ZvbGlvKHNn
bCwgdWJ1Zi0+Zm9saW9zW2ldLCBydW4gPDwgUEFHRV9TSElGVCwNCj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHVidWYtPm9mZnNldHNbaV0pOw0KPj4+ICsgICAgICAgICAgICAgICBz
Z2wgPSBzZ19uZXh0KHNnbCk7DQo+Pj4gKyAgICAgICB9DQo+Pj4NCj4+PiAgICAgICAgIHJldCA9
IGRtYV9tYXBfc2d0YWJsZShkZXYsIHNnLCBkaXJlY3Rpb24sIDApOw0KPj4+ICAgICAgICAgaWYg
KHJldCA8IDApDQo+Pj4NCj4+PiAtLQ0KPj4+IDIuNTMuMC1NZXRhDQo+Pj4NCj4+DQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
