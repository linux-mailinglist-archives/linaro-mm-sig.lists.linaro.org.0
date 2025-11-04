Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDqgAY744GkloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8913540FF47
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5C86405DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:56:12 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azhn15011000.outbound.protection.outlook.com [52.102.149.0])
	by lists.linaro.org (Postfix) with ESMTPS id 7D7473F857
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 08:53:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=selector1 header.b=uabM0aRg;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of m-malladi@ti.com designates 52.102.149.0 as permitted sender) smtp.mailfrom=m-malladi@ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YJnqhhKGfwOL1HaZTmlyiU+b5jrbZhJmMCxIDiBN+NH7+T9PX+8j+zQl+zwzw3s67QB5lcLN+NoVydk9qDDSeqRqTJRusDbTjBNfDa/DwxlfmaG5S9MZhdSlta2Ym178MtjoS9o/DB4CmoHsKWuZgWkHud3Mfzm6F4DD7gAcWFBOOOgzhJLcFQrVdPeCPSZFPoR9wrDcoTPRq90NoyW2nzqTMgbh0lbf06N+JLUToZPiAOQ4C+EYRKjjiJRn+Py86Q1FIq1Cm01s7ZcaXzqviyZUiTeZ0Y8NBvyrkCxoht8Zt8BQpG4WsGmxUN8dXCsEAVq1c3qQmEx8i/2rY7XrJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2o+GFgh4IBx4CdLDCRMAxzEWR65gnszOF4J3iviVUVw=;
 b=CYpUoEpb3rYeMd3rOSz8QcKJ4rFjlk/Gy1gz8khKIFLud3lvBXgZZFOEAMzJKLSNJFlgkCxdPVsNT+AwyzmQZIV5//V7SWhS1V1CarAa9yvCpUlBg9OYATF2eJaL5pm3kPzk2Jg9B8wvb7h9FBb4zE+ffY2DhxLdbbFNk/NDmYEPUZ0/7lv5XUd4RJKGVoDspAZls4LkLKXqRLdGOQlVUzaiamns87SJbkyVvedekkwfWcFC0Bb+7uOmZseJniVEj0tQJ9KznbGkq3kHwWVLrXQ3rYOjfKBz2ZAAaz9Nrhp01+GSZNpolxlU/dMWiyRVtSXx06sHbPQN1ocklQgucw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2o+GFgh4IBx4CdLDCRMAxzEWR65gnszOF4J3iviVUVw=;
 b=uabM0aRg/IhwdF/Nrah0UySW1CWKB5KVq0dLKeW7SWUpIh/Ck+uU/gYE/O6tpNu08uK/+10k9ByNpsuby1eK0WpwTbj2chueSdGz4u5MXkibVWtMMBAGS74RKBgjmyg0P9XhwSuqpOnLUtWr+ZktfHZdn9ki3FoOZlERLcmZBr8=
Received: from PH8P220CA0030.NAMP220.PROD.OUTLOOK.COM (2603:10b6:510:348::15)
 by CY8PR10MB7315.namprd10.prod.outlook.com (2603:10b6:930:7e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 08:53:51 +0000
Received: from SN1PEPF00036F42.namprd05.prod.outlook.com
 (2603:10b6:510:348:cafe::aa) by PH8P220CA0030.outlook.office365.com
 (2603:10b6:510:348::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9298.7 via Frontend Transport; Tue, 4
 Nov 2025 08:53:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SN1PEPF00036F42.mail.protection.outlook.com (10.167.248.26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.6 via Frontend Transport; Tue, 4 Nov 2025 08:53:49 +0000
Received: from DFLE203.ent.ti.com (10.64.6.61) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 4 Nov
 2025 02:53:32 -0600
Received: from DFLE202.ent.ti.com (10.64.6.60) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 4 Nov
 2025 02:53:32 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE202.ent.ti.com
 (10.64.6.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 4 Nov 2025 02:53:32 -0600
Received: from [10.24.69.13] (meghana-pc.dhcp.ti.com [10.24.69.13] (may be forged))
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5A48rPTu1678790;
	Tue, 4 Nov 2025 02:53:26 -0600
Message-ID: <c792f4da-3385-4c14-a625-e31b09675c32@ti.com>
Date: Tue, 4 Nov 2025 14:23:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Meghana Malladi <m-malladi@ti.com>
To: Paolo Abeni <pabeni@redhat.com>, <horms@kernel.org>,
	<namcao@linutronix.de>, <vadim.fedorenko@linux.dev>,
	<jacob.e.keller@intel.com>, <christian.koenig@amd.com>,
	<sumit.semwal@linaro.org>, <sdf@fomichev.me>, <john.fastabend@gmail.com>,
	<hawk@kernel.org>, <daniel@iogearbox.net>, <ast@kernel.org>,
	<kuba@kernel.org>, <edumazet@google.com>, <davem@davemloft.net>,
	<andrew+netdev@lunn.ch>
References: <20251023093927.1878411-1-m-malladi@ti.com>
 <20251023093927.1878411-3-m-malladi@ti.com>
 <05efdc9a-8704-476e-8179-1a9fc0ada749@redhat.com>
 <ba1b48dc-b544-4c4b-be8a-d39b104cda21@ti.com>
Content-Language: en-US
In-Reply-To: <ba1b48dc-b544-4c4b-be8a-d39b104cda21@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF00036F42:EE_|CY8PR10MB7315:EE_
X-MS-Office365-Filtering-Correlation-Id: afa45c00-5f65-40ef-fdf6-08de1b7fac39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|7416014|376014|1800799024|34020700016|36860700013|921020|12100799066;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YmU4YnpkdE05dTBzWC9UUDlDRzJjQzVuUTV1eDR4RlA1TUdraWl4VThmMXpD?=
 =?utf-8?B?WXRNcCtXV2hUcE1vblp3Y2NJbi80K013RVhNYnhyVUJqR0JGTWNXUFlDdExu?=
 =?utf-8?B?YW9nN2xIbU43emVxaXJFWkh2MWlqTm8rblV2M1pHUm81aGYrUzdpT3V1MHJV?=
 =?utf-8?B?elA3dGVBMng0RWpwc1BrdUoxaUVJTW9vNzMwQTlMQTA0U0M0czJ3ejdZZCtC?=
 =?utf-8?B?eVE4OWh3UFJHUXJRWXlnRkoyMUdUWXlvblhHU0JXdEUxRE1HQUdVd2wxbjJk?=
 =?utf-8?B?aDU2RTBrUlh4OHNUTkNDbFJuTFVXK0tDeFI0dmp0TjYwSUhXYzRlWU1Ydlcr?=
 =?utf-8?B?RzJnVE9NVGNOL1BnTG1jS0FhTGdvNm4xRldISzVldldBWG9rczRlVHhIWnpi?=
 =?utf-8?B?UkcyV2luQm95RXhZOFhLd3EvdjRhVTg0bEl5ZmFYaWMzNTJ5V0IrMXQvZ1BH?=
 =?utf-8?B?YW1mdmtHZ2V3ZEpTWlRxYXdUMjFHOW9UbmVKV0pXZGlLb2ljTXVFaHgwWExj?=
 =?utf-8?B?bjNsSzNlaEtlTWF3c0Q5ZWpDMlhwN2dicWp6VSs2R3B3L2RHOWZNMXBmZ08x?=
 =?utf-8?B?WW44ZFpINWYxZXZjMUh4YkRCZW5zaEhhc0RIdVgvQnhkZC9YeXNsYkRGaCtn?=
 =?utf-8?B?TGMzNTZ6Y3UrcTROZG55Vnp0WVREeFlnUzUrSjNtbTRIL25pSHF2bW1aVkE1?=
 =?utf-8?B?N042S3Z5MVF0K3p4WmwrWFJOVGpDU3VHdnFybWNHcmk2NHkvcWFMR2NOQnhw?=
 =?utf-8?B?di9DY2FCNkRGOUNxUk1qcit1K0xLbkhpbVRnMUNlY1RETlpJdWlpWWNBMG91?=
 =?utf-8?B?M2xmVEd3V2JHdkc4OHF2WE9YQWlNeTJ2ajFQakpMYnNqSlBmVzlESytNRVB0?=
 =?utf-8?B?OWlwVUs5ZlhYekZEOTlLVHJGUlNscC9DblVNRHI0QW5teE05Mm1ZdVpWNGI2?=
 =?utf-8?B?WTREWXc0NXBtMXAwMVZDRHdVbXNDWXlLS1J0RmZhaHFnWmtJUXFZeUQvRzBi?=
 =?utf-8?B?MDY1RjVOdnorUlFjbUJkdHpYZzFYUVdZckNHcXZMVzRDemYyTTQxam9yWDdI?=
 =?utf-8?B?bXEyVnVmd2d3RXFSdm9QaW94SHVFU3ZWS3c0c3VqY20rZkc3dUxobnV3dU1u?=
 =?utf-8?B?VE5tNk5OTXFzR054ejFNSWFFc0dycW9GMmJJZGZPaWtIV3RYY0g4VW1BUHMy?=
 =?utf-8?B?UGpUUFAzWklrWXdFMncwRGlmT3duaE82MWw0Tnh4SkRLL2VYWTNTUUsvZDl0?=
 =?utf-8?B?MC9hRkowaDlML055Q1ltWnhHbXJHU052TGRyREJwcnFNMGI0cWF0RnRXdjRX?=
 =?utf-8?B?SHcwSERTa1I2TXByUWVFTEREMDFjSWNaSThHZ2RRLzdvd1dSTGNsRkltRzB5?=
 =?utf-8?B?NUFrakJSelFrWmxJV1dKNjB1ZFBhaFJVQTAwd1M0c3dDN1N1RnM3dzRrc1pF?=
 =?utf-8?B?RGd6bWU4WE5FVUhiYmxCTW11MzhJc0JwNUc0bEdBalpDUGRqWEVkeFI3VzB4?=
 =?utf-8?B?eFdVaHk1ZFZDTXJsci8zZ2tQSmZub2VRVmpISU54R1hLVENGQ3R0dkdvL3hi?=
 =?utf-8?B?R0hSVHdHZWZ3L1ZiTmRRclFJNHVnaEZoaXFQTkUrZEg5WU0vVTdVdHRRTUFM?=
 =?utf-8?B?UFJZeWxBdG9MdFdXYzR4OEg1S2JZcnNOQ0hzUlIwaDRUWDk3Yys0bGZKTDRJ?=
 =?utf-8?B?eXFJRHlvc25KeVpBdm1DSUw2K2tJM3N6c0FCeDBMNXVrdHdOVzRjd1BnbFA0?=
 =?utf-8?B?MkN2cHFFUEd1SDJFMGYvbWQzK2s3cFZwTGVwbXQvZW9XZitCblBjSHdzS0lF?=
 =?utf-8?B?NkNtcUxBSnAzaUgyWlJEMlhwUm84QVJDL0krVlhKc3R0MjNQemlnd2FjaFJR?=
 =?utf-8?B?ZElKY2RVS2xkT0tncXA3b01TcEppcjVrR2ZNUXQ4dm1FNk5wL2pkbU5ia09z?=
 =?utf-8?B?U2c3VFFHS283b0w1Wkd4QUozYXZQMGNhS1U5OERtN3RDMkhxNUlpbFZYQlBI?=
 =?utf-8?B?Q0U5SHpuWFZDb1FuSE5ZZDl5OFQraG55b0xPZkZ3RmRsNUNGVXV6QVg5QkZ0?=
 =?utf-8?Q?mF4wFr?=
X-Forefront-Antispam-Report: 
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(7416014)(376014)(1800799024)(34020700016)(36860700013)(921020)(12100799066);DIR:OUT;SFP:1501;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 08:53:49.6979
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: afa45c00-5f65-40ef-fdf6-08de1b7fac39
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	SN1PEPF00036F42.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7315
X-Spamd-Bar: ---
X-MailFrom: m-malladi@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NHAHJZLRJ2W3XWOJMF6LYOV6WDWXKTUV
X-Message-ID-Hash: NHAHJZLRJ2W3XWOJMF6LYOV6WDWXKTUV
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:48 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXTERNAL] Re: [PATCH net-next v4 2/6] net: ti: icssg-prueth: Add XSK pool helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NHAHJZLRJ2W3XWOJMF6LYOV6WDWXKTUV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[ti.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[ti.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[3918];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[redhat.com,kernel.org,linutronix.de,linux.dev,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,iogearbox.net,google.com,davemloft.net,lunn.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[proofpoint.com:url,urldefense.com:url,ti.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	DKIM_TRACE(0.00)[ti.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.946];
	FROM_NEQ_ENVFROM(0.00)[m-malladi@ti.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[urldefense.com,proofpoint.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8913540FF47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgUGFvbG8sDQoNCk9uIDEwLzMwLzI1IDEwOjEzLCBNZWdoYW5hIE1hbGxhZGkgd3JvdGU6DQo+
IEhpIFBhb2xvLA0KPiANCj4gT24gMTAvMjgvMjUgMTY6MjcsIFBhb2xvIEFiZW5pIHdyb3RlOg0K
Pj4gT24gMTAvMjMvMjUgMTE64oCKMzkgQU0sIE1lZ2hhbmEgTWFsbGFkaSB3cm90ZTogPiBAQCAt
MTIwMCw2ICsxMjE4LDEwOSANCj4+IEBAIHN0YXRpYyBpbnQgZW1hY194ZHBfc2V0dXAoc3RydWN0
IHBydWV0aF9lbWFjICplbWFjLCBzdHJ1Y3QgDQo+PiBuZXRkZXZfYnBmICpicGYpID4gcmV0dXJu
IDA7ID4gfSA+ID4gK3N0YXRpYyBpbnQgDQo+PiBwcnVldGhfeHNrX3Bvb2xfZW5hYmxlKHN0cnVj
dCBwcnVldGhfZW1hYyAqZW1hYywNCj4+IFpqUWNtUVJZRnBmcHRCYW5uZXJTdGFydA0KPj4gVGhp
cyBtZXNzYWdlIHdhcyBzZW50IGZyb20gb3V0c2lkZSBvZiBUZXhhcyBJbnN0cnVtZW50cy4NCj4+
IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVjb2du
aXplIHRoZSBzb3VyY2UgDQo+PiBvZiB0aGlzIGVtYWlsIGFuZCBrbm93IHRoZSBjb250ZW50IGlz
IHNhZmUuDQo+PiBSZXBvcnTCoFN1c3BpY2lvdXMNCj4+IDxodHRwczovL3VzLXBoaXNoYWxhcm0t
ZXd0LnByb29mcG9pbnQuY29tL0VXVC92MS9HM3ZLISANCj4+IHVwZHFIYjBsdk9kNkFDWEZQRE9E
WHpGalcyUnRrSXBibHBXcjN6dWkyTzJKcVdUeVJDTEtjMmk3UGE3dVNNQlpZcHE4SDd0VHItanBf
bkRlbGdfT1VybU5DZ1o4X20wJD4NCj4+IFpqUWNtUVJZRnBmcHRCYW5uZXJFbmQNCj4+DQo+PiBP
biAxMC8yMy8yNSAxMTozOSBBTSwgTWVnaGFuYSBNYWxsYWRpIHdyb3RlOg0KPj4+IEBAIC0xMjAw
LDYgKzEyMTgsMTA5IEBAIHN0YXRpYyBpbnQgZW1hY194ZHBfc2V0dXAoc3RydWN0IHBydWV0aF9l
bWFjIA0KPj4+ICplbWFjLCBzdHJ1Y3QgbmV0ZGV2X2JwZiAqYnBmKQ0KPj4+IMKgwqDCoMKgIHJl
dHVybiAwOw0KPj4+IMKgfQ0KPj4+DQo+Pj4gK3N0YXRpYyBpbnQgcHJ1ZXRoX3hza19wb29sX2Vu
YWJsZShzdHJ1Y3QgcHJ1ZXRoX2VtYWMgKmVtYWMsDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgc3RydWN0IHhza19idWZmX3Bvb2wgKnBvb2wsIHUxNiBxdWV1ZV9pZCkN
Cj4+PiArew0KPj4+ICvCoMKgwqAgc3RydWN0IHBydWV0aF9yeF9jaG4gKnJ4X2NobiA9ICZlbWFj
LT5yeF9jaG5zOw0KPj4+ICvCoMKgwqAgdTMyIGZyYW1lX3NpemU7DQo+Pj4gK8KgwqDCoCBpbnQg
cmV0Ow0KPj4+ICsNCj4+PiArwqDCoMKgIGlmIChxdWV1ZV9pZCA+PSBQUlVFVEhfTUFYX1JYX0ZM
T1dTIHx8DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHF1ZXVlX2lkID49IGVtYWMtPnR4X2NoX251bSkg
ew0KPj4+ICvCoMKgwqDCoMKgwqDCoCBuZXRkZXZfZXJyKGVtYWMtPm5kZXYsICJJbnZhbGlkIFhT
SyBxdWV1ZSBJRCAlZFxuIiwgcXVldWVfaWQpOw0KPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVJTlZBTDsNCj4+PiArwqDCoMKgIH0NCj4+PiArDQo+Pj4gK8KgwqDCoCBmcmFtZV9zaXplID0g
eHNrX3Bvb2xfZ2V0X3J4X2ZyYW1lX3NpemUocG9vbCk7DQo+Pj4gK8KgwqDCoCBpZiAoZnJhbWVf
c2l6ZSA8IFBSVUVUSF9NQVhfUEtUX1NJWkUpDQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAt
RU9QTk9UU1VQUDsNCj4+PiArDQo+Pj4gK8KgwqDCoCByZXQgPSB4c2tfcG9vbF9kbWFfbWFwKHBv
b2wsIHJ4X2Nobi0+ZG1hX2RldiwgUFJVRVRIX1JYX0RNQV9BVFRSKTsNCj4+PiArwqDCoMKgIGlm
IChyZXQpIHsNCj4+PiArwqDCoMKgwqDCoMKgwqAgbmV0ZGV2X2VycihlbWFjLT5uZGV2LCAiRmFp
bGVkIHRvIG1hcCBYU0sgcG9vbDogJWRcbiIsIHJldCk7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiByZXQ7DQo+Pj4gK8KgwqDCoCB9DQo+Pj4gKw0KPj4+ICvCoMKgwqAgaWYgKG5ldGlmX3J1
bm5pbmcoZW1hYy0+bmRldikpIHsNCj4+PiArwqDCoMKgwqDCoMKgwqAgLyogc3RvcCBwYWNrZXRz
IGZyb20gd2lyZSBmb3IgZ3JhY2VmdWwgdGVhcmRvd24gKi8NCj4+PiArwqDCoMKgwqDCoMKgwqAg
cmV0ID0gaWNzc2dfc2V0X3BvcnRfc3RhdGUoZW1hYywgSUNTU0dfRU1BQ19QT1JUX0RJU0FCTEUp
Ow0KPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQ0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybiByZXQ7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHBydWV0aF9kZXN0cm95X3J4cShl
bWFjKTsNCj4+PiArwqDCoMKgIH0NCj4+PiArDQo+Pj4gK8KgwqDCoCBlbWFjLT54c2tfcWlkID0g
cXVldWVfaWQ7DQo+Pj4gK8KgwqDCoCBwcnVldGhfc2V0X3hza19wb29sKGVtYWMsIHF1ZXVlX2lk
KTsNCj4+PiArDQo+Pj4gK8KgwqDCoCBpZiAobmV0aWZfcnVubmluZyhlbWFjLT5uZGV2KSkgew0K
Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXQgPSBwcnVldGhfY3JlYXRlX3J4cShlbWFjKTsNCj4+DQo+
PiBJdCBsb29rcyBsaWtlIHRoaXMgZmFsbHMgc2hvcnQgb2YgSmFrdWIncyByZXF1ZXN0IG9uIHYy
Og0KPj4NCj4+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xvcmUua2VybmVs
Lm9yZy8gDQo+PiBuZXRkZXYvMjAyNTA5MDMxNzQ4NDcuNWQ4ZDFjOWZAa2VybmVsLm9yZy9fXzsh
IUczdkshIA0KPj4gVHhFT0YyUFpBLTJvYWdVN0dtcTJQZHlIcmNlSV9zV0ZSU0NNUDJtZU94VnJz
OGVxU3REVVNUUGkya3l6anZhMXJnVXpRVXRZYmQ5ZyQgPGh0dHBzOi8vdXJsZGVmZW5zZS5jb20v
djMvX19odHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyNTA5MDMxNzQ4NDcuNWQ4ZDFj
OWZAa2VybmVsLm9yZy9fXzshIUczdkshVHhFT0YyUFpBLTJvYWdVN0dtcTJQZHlIcmNlSV9zV0ZS
U0NNUDJtZU94VnJzOGVxU3REVVNUUGkya3l6anZhMXJnVXpRVXRZYmQ5ZyQ+DQo+Pg0KPj4gYWJv
dXQgbm90IGZyZWVpbmcgdGhlIHJ4IHF1ZXVlIGZvciByZWNvbmZpZy4NCj4+DQo+IA0KPiBJIHRy
aWVkIGhvbm9yaW5nIEpha3ViJ3MgY29tbWVudCB0byBhdm9pZCBmcmVlaW5nIHRoZSByeCBtZW1v
cnkgd2hlcmV2ZXIgDQo+IG5lY2Vzc2FyeS4NCj4gDQo+ICJJbiBjYXNlIG9mIGljc3NnIGRyaXZl
ciwgZnJlZWluZyB0aGUgcnggbWVtb3J5IGlzIG5lY2Vzc2FyeSBhcyB0aGUNCj4gcnggZGVzY3Jp
cHRvciBtZW1vcnkgaXMgb3duZWQgYnkgdGhlIGNwcGkgZG1hIGNvbnRyb2xsZXIgYW5kIGNhbiBi
ZQ0KPiBtYXBwZWQgdG8gYSBzaW5nbGUgbWVtb3J5IG1vZGVsIChwYWdlcy94ZHAgYnVmZmVycykg
YXQgYSBnaXZlbiB0aW1lLg0KPiBJbiBvcmRlciB0byByZW1hcCBpdCwgdGhlIG1lbW9yeSBuZWVk
cyB0byBiZSBmcmVlZCBhbmQgcmVhbGxvY2F0ZWQuIg0KPiANCg0KSnVzdCB0byBtYWtlIHN1cmUg
d2UgYXJlIG9uIHRoZSBzYW1lIHBhZ2UsIGRvZXMgdGhlIGFib3ZlIGV4cGxhbmF0aW9uIA0KbWFr
ZSBzZW5zZSB0byB5b3Ugb3IgZG8geW91IHdhbnQgbWUgdG8gbWFrZSBhbnkgY2hhbmdlcyBpbiB0
aGlzIHNlcmllcyANCmZvciB2NSA/DQoNCj4+IEkgdGhpbmsgeW91IHNob3VsZDoNCj4+IC0gc3Rv
cCB0aGUgSC9XIGZyb20gcHJvY2Vzc2luZyBpbmNvbWluZyBwYWNrZXRzLA0KPj4gLSBzcG9vbCBh
bGwgdGhlIHBlbmRpbmcgcGFja2V0cw0KPj4gLSBhdHRhY2gvZGV0YWNoIHRoZSB4c2tfcG9vbA0K
Pj4gLSByZWZpbGwgdGhlIHJpbmcNCj4+IC0gcmUtZW5hYmxlIHRoZSBIL1cNCj4+DQo+IA0KPiBD
dXJyZW50IGltcGxlbWVudGF0aW9uIGZvbGxvd3MgdGhlIHNhbWUgc2VxdWVuY2U6DQo+IDEuIERv
ZXMgYSBjaGFubmVsIHRlYXJkb3duIC0+IHN0b3AgaW5jb21pbmcgdHJhZmZpYw0KPiAyLiBmcmVl
IHRoZSByeCBkZXNjcmlwdG9ycyBmcm9tIGZyZWUgcXVldWUgYW5kIGNvbXBsZXRpb24gcXVldWUg
LT4gc3Bvb2wgDQo+IGFsbCBwZW5kaW5nIHBhY2tldHMvZGVzY3JpcHRvcnMNCj4gMy4gYXR0YWNo
L2RldGFjaCB0aGUgeHNrIHBvb2wNCj4gNC4gYWxsb2NhdGUgcnggZGVzY3JpcHRvcnMgYW5kIGZp
bGwgdGhlIGZyZWVxIGFmdGVyIG1hcHBpbmcgdGhlbSB0byB0aGUgDQo+IGNvcnJlY3QgbWVtb3J5
IGJ1ZmZlcnMgLT4gcmVmaWxsIHRoZSByaW5nDQo+IDUuIHJlc3RhcnQgdGhlIE5BUEkgLSByZS1l
bmFibGUgdGhlIEgvVyB0byByZWN2IHRoZSB0cmFmZmljDQo+IA0KPiBJIGFtIHN0aWxsIHdvcmtp
bmcgb24gc2tpcHBpbmcgMiBhbmQgNCBzdGVwcyBidXQgdGhpcyB3aWxsIGJlIGEgbG9uZyANCj4g
c2hvdC4gTmVlZCB0byBtYWtlIHN1cmUgYWxsIGNvcm5lciBjYXNlcyBhcmUgZ2V0dGluZyBjb3Zl
cmVkLiBJZiB0aGlzIA0KPiBhcHByb2FjaCBsb29rcyBkb2FibGUgd2l0aG91dCBjYXVzaW5nIGFu
eSByZWdyZXNzaW9ucyBJIG1pZ2h0IHBvc3QgaXQgYXMgDQo+IGEgZm9sbG93dXAgcGF0Y2ggbGF0
ZXIgaW4gdGhlIGZ1dHVyZS4NCj4gDQo+PiAvUA0KPj4NCj4gDQoNCnRoYW5rcywNCk1lZ2hhbmEN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
