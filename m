Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B9E60C35A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:37:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09AD53EA23
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:37:45 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2047.outbound.protection.outlook.com [40.107.92.47])
	by lists.linaro.org (Postfix) with ESMTPS id C2B113F4B3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Sep 2022 15:40:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fFoJWbKDOWbEOJhD59uof2AjQTiG4gwMDgKf9T3B0Ag5sBSvqtC4X5X9q6ZWo+DEF80NhMbsJ24a5+BQ6arXQdx/uv5xM3UVXU64AoPog8Ssb2ctkSN/cwNaiDAo0TZOrcBqY7zpndgOarZg95DbnigTEqXp6GmUpIM58NFnm6zbyxkSHGoqrmiHoxOz3KfC3Xrzszn9cdWUqvjKZEm/hRfzQVElaQ3+98/leRE7dvJEeENg6/l6z3NqWBTqqfJWOdyHSlBgJNEDDU3WYvKisYJgpH3ZvKEruTRjyvPSReZur1klH4C08Xiy2B8hJ5fxnMkL+5Ed/IUZ3XU6qW3EYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WQ5VSDMCYvaF/M9RVpi7AIbLLlwVviNnMU/zknLh0qk=;
 b=m9beKkGNmdKqCo5XBBg9BdDj2TF1ldohlvVgmx1NwZMfnfE0mNjSIB+dYOocMlRZzHVfTghOzOudV2ym2UOiTWmzj0IPozPhtTU4sT3eApIpLY57Yt1aJWGRlO48bULl3i9QBWiJWi/vKevTYBmR/ejC/DdLMyZqEInB4ZidSMNWC7Brc/2SV6hyOCvQywqS38C0tvWmoTY5CNCvbBwffvk76UgF0k1f5dwOd2LazEPnwo+9q2mZ55Mozy2a/ohpwNHbIAFv0VAjojDuYkqg0qxwMWCcgNwJYSMRtUaqQcGEjeLK0CpAUGVn3r2TeUZIGJD3dHZRHoXleK0dpw4bqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WQ5VSDMCYvaF/M9RVpi7AIbLLlwVviNnMU/zknLh0qk=;
 b=EKoxHAX9aWNQDb8O8Ozn8H4qK4x3O04l5uQunLk9Kmy4Odc5mDZ4xDjyNmN7y7GI1nuUVoZoZ78VBbQ7/rTmd8D4UU+50Q6Y0Eo3J7YeviksDoDsSIHJU7/10sV6iwfylZRTKnH45KyxHU+YhjdR3pXizwO5ekGEI1Fdv4k4/EQ=
Received: from PH7PR12MB6000.namprd12.prod.outlook.com (2603:10b6:510:1dc::15)
 by DM4PR12MB5985.namprd12.prod.outlook.com (2603:10b6:8:68::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.18; Fri, 30 Sep
 2022 15:40:09 +0000
Received: from PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::9ef8:a10e:6fe:1933]) by PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::9ef8:a10e:6fe:1933%6]) with mapi id 15.20.5654.024; Fri, 30 Sep 2022
 15:40:09 +0000
Message-ID: <e4aeea32-4ed8-c1db-e826-32ce278f61c4@amd.com>
Date: Fri, 30 Sep 2022 21:09:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 steven.price@arm.com
References: <20220930084810.4639-1-Arvind.Yadav@amd.com>
 <38ef1813-030c-8315-249d-349d69b81c52@amd.com>
From: "Yadav, Arvind" <arvyadav@amd.com>
In-Reply-To: <38ef1813-030c-8315-249d-349d69b81c52@amd.com>
X-ClientProxiedBy: PN3PR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::11) To PH7PR12MB6000.namprd12.prod.outlook.com
 (2603:10b6:510:1dc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB6000:EE_|DM4PR12MB5985:EE_
X-MS-Office365-Filtering-Correlation-Id: 392522b4-0074-49ce-581b-08daa2fa0e48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	m03rKrfeGjD2EVCR3iMiKRheQBfSj+izGT/X2T+3k8uMHvvk1WP4Ajl3UfjA0IgGMDr53Q6BMJhrYytYxI3dOAtPBWZFPhCfhxZ17bbXevw4NHF4SDGNAR0hseJmZF80A7UNE6UinuAP3c8g7yATTzgLJqSX/flInTTVxcjJU19XNAu+SouJcnjw4jG5zuhUE6MJfZ00tq4vRMJQMpYs74igag/zqvqedNGgDUCqJy8Tnk3N3B6cRgstYIwjixX9t7mhoQembQbHSo1bA2KT+U+zLm0WjEdL5o25pNegOaaVzGOiczBfemOP5Ka3YgfzhdIc5EnGMWclFBgjxbiYMniyXpbbn4NEA3zU2BAwE88sOPI38BDWqY/EicDtKr8Yol5ZQReOiC6lXtINLtzrobSnbOzDo8c8et0J6Fqs0hNQ3B5OdTHJo5R168wQL6k8M82q2hUD0oLbE6ctFKfNy1cngbdutsxY8CiXMdJMHZMjUa4vitqWn7OXiQ8sWrdKtbciV1xFzDbPdKRCH7ZErpOcHoQoXPD6fVKroMMZ7ZKuyFIQkQeC9jLe2O+kw/aVaEka+y5f8lE4NTG0iuEZ6aft56I2ZMC81aaWLNhWsHxw9dfQ07N8QO/E00sW0Q5QEQhMWALxfXcbssaFAUwTxxzFNPRAToSiLk7AUw7oCQxcpd76BJ13DXZ5U9pF+cti16tU2eGIC4T2B+uMPolXtvYwJcG61+4qkRIFIWMEU1vHD9I8tJcwKraMJ+VzG8VjGkA2KoapIbQVBLkHOfw3z3OeIOuRotLtvTpYT+h7+Y5tbmC8VmX0ykfdBuxQR1Uzqpdls0GV6uJO11D9ulZG1QMHuwF0/4vcVpv5DKua84I=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB6000.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(396003)(39860400002)(366004)(136003)(376002)(451199015)(186003)(36756003)(110136005)(31696002)(31686004)(6512007)(5660300002)(2616005)(921005)(66574015)(2906002)(38100700002)(83380400001)(6666004)(26005)(6506007)(53546011)(478600001)(316002)(8676002)(66556008)(66476007)(66946007)(6486002)(8936002)(41300700001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bVgyaW0rQU92VUtWSlFlNUZiSHFhV2lDQ0l6N2NPZFk5Y3A5cVBPbnZ5OXFF?=
 =?utf-8?B?TEE1L2xCbzgwNXBIL2VYRTZQeitUVDZRNno5Nll1WHNWMGJhcERxZkN1Q3h0?=
 =?utf-8?B?QzU0MnJzNmVLOHNEekNvSHROVG9jbVV0RkRqeGJIU0J4NG9TREZyelFLYlFH?=
 =?utf-8?B?bzlVeGpDUmVwODNHVy8wSWh4UXIwYWRKWXI4bUV1VzNRZzMybVZlVDQzcUVE?=
 =?utf-8?B?SDBrcjdaOG8wMlE1K0gzQ1BCNUVxcGdaSi9ydmZ1N1kzM2FlZnhZNW1jcEN3?=
 =?utf-8?B?ZC95ajRoSURGRVZURndqNjB6YS9WaVYvZ05jNGFKSmM4QmdGNVQ5ODhSZzFa?=
 =?utf-8?B?MTRBOE9ya3k3WlRYd010SzlodVorZ0pjTTNQWlQ0RTZHenpxdXNHV0Fnd2dj?=
 =?utf-8?B?UlQ2NTJOeDJFVzVmdGVRUVEvKzF2MUJJZldTWEw3Zno0Nk0xRUM1YWZXeU43?=
 =?utf-8?B?ZkdySElaOGJmd3hDR3BIM210TjIxeFFyT3RTRHNLU3pxbkpnMjlvRE5wTU00?=
 =?utf-8?B?REVIWURnZmtXMitNL3U2dkNwTkNxMk1BVUhFV3FVcmhoSU1CeHltc0RLU05i?=
 =?utf-8?B?YlJxSXhYbG5FTUI1MG9lRVNBbUorcU4zQ2dlUnVtVnVZaE1weTRYNXNQV1dE?=
 =?utf-8?B?RUtyKzFtVnRPYnRQTUIwbzBXcEMvbU1NeDloMDdtZ2hrcm9Xb1V5cHBIMHlN?=
 =?utf-8?B?VFhwSWt3THNUNFd2NXNVY0lTbVF3cFNlK081YTQ5c1Fhd3B4czFHR0Zzb3RZ?=
 =?utf-8?B?VVI5UldxKzIrK2EyUHp5TEtEWXZjdzM0anY5SjJkZWp1aEJqZlBGS2dZYncw?=
 =?utf-8?B?alNpL05XLzFtM0ZDcEhuNzVzaE41MEhsSWxJOE15dkJHV0tUa1lpTXZYTVYz?=
 =?utf-8?B?WnpvUG03VkNkU3pyTHpzVlBMei91T1lSK0FhU0JBaWE3Z1YwNFMvdkhvT0ZY?=
 =?utf-8?B?eis5VXFGR2RkZmtDZmJYNkFDVklqSWZsbTk2OW5takQveFhxZHpFZ2hDTEI2?=
 =?utf-8?B?Y0FtZjcxK2thRC8zQWZteHpXY3NMbU5jSTYwdUVjQmowZmswUHYrMnpGS0pq?=
 =?utf-8?B?OUc4QUFjR01DUXdXVG9la05IT1NZSXVJNXhSU3BrcjEwanF0V0dCYXdCSHdu?=
 =?utf-8?B?Qnk3cDJyb2o5dUdoNjdkd1dPWkJNWHhMd0g3eG9VbG51Ri8rL0trUDllUmVX?=
 =?utf-8?B?UE9NdjdiOW10UCtzNnh2djR6cUxGY3g3M25JZTRUeWgzOGpTOFcvSmI3QkVk?=
 =?utf-8?B?Mmd0SVVnd2I5VE1WT0doTW5zem55TFd6OFpKQnNLWFp2cE1XaERtVGpqanNW?=
 =?utf-8?B?K0NnRzlZaE9PdXB2ZVBDZ3k2N3ozbDNWL2J5NWxNU2dSYk9SS0cvUlV5eTky?=
 =?utf-8?B?alY3d3crNVMrcEVoa3l0bk00Wk52K0h4b0tGb29UbDFUMzJscWJhTHlUK01v?=
 =?utf-8?B?WVBRVzNCQXR1Z1YzMnN3d0l6dXZiaklWNWZ3MkVuWWhKZGMxMFZsRFp5WnFh?=
 =?utf-8?B?UEdLNXJmVmI3OWN2Wjd1SktJTkw2TWVKRzl2UCt1NFc1M0d2MkhZUzJETWw2?=
 =?utf-8?B?OVdIZHhuT1hlV05TZkJkc2hMUjNhVXBBZlN1LzI2TXJDczNOZFRpb1N2aUla?=
 =?utf-8?B?MTBYUEh0MC85S0NIZVJPUU1CNks1Wld1bDBOLzRzckp1UW5JSlFmN3hlK0hs?=
 =?utf-8?B?V0oxVGxvYWMzOGgzeUZnandvSFRkbGN1bEh2OUh1Y3JscU9oODQ2bFNhdTll?=
 =?utf-8?B?WS9sbnoyQjVlUld1UGxFZ0Zid2w4WFVyWDdhUFoxTktsUEhQeWdKNFNqSEZj?=
 =?utf-8?B?VUdQQWU5clNXOGl3V2ZLMmlnTEJHbmZMZHI4YWtxUGJsbnFpT3F6Y3l3WlBa?=
 =?utf-8?B?OG9BOUZrM3EzSmM3RnIwQ0c4ejkwYjk1eVIwRVdBdVdnYmZrM3prdEFGbWNG?=
 =?utf-8?B?WUZhaUsxcnVJZ1BRblFUNGJNenVoQWVxbHE1NmMvVTVILzhrdmpyYTNvMmlO?=
 =?utf-8?B?U3ljZzJSdmdIMGVWWjIraTBDWU0vVjlJQTA4TUpQUWRtR0tTRWNTYU9tcWMr?=
 =?utf-8?B?OC90cDRMMkxCNCttWmJXRDNCZWtWOCtHeEdRbXU5QWUweEd6MW5jbjZxeWhQ?=
 =?utf-8?Q?MarIxU2A/LzBC8GF5PYiEbKwH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 392522b4-0074-49ce-581b-08daa2fa0e48
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB6000.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 15:40:09.8053
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BEw29m+zPNwTdanwcxy3+Q1XoBaI2jEhOnbYrdbSzQA1tQXA9HklnPAW1Ex4u4SMNwQ5Ly3VG2Dw9N8z5QHREQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5985
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: C2B113F4B3
X-Spamd-Result: default: False [-8.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	FORGED_SENDER(0.30)[arvyadav@amd.com,Arvind.Yadav@amd.com];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_NEQ_ENVFROM(0.00)[arvyadav@amd.com,Arvind.Yadav@amd.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.47:from];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	URIBL_BLOCKED(0.00)[amd.com:email,amd.com:dkim];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.978];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=EKoxHAX9;
	spf=pass (lists.linaro.org: domain of Arvind.Yadav@amd.com designates 40.107.92.47 as permitted sender) smtp.mailfrom=Arvind.Yadav@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XAYF47CLW3CIMKVJHCM4C6IFQHDROF3Q
X-Message-ID-Hash: XAYF47CLW3CIMKVJHCM4C6IFQHDROF3Q
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:32:25 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/sched: Fix kernel NULL pointer dereference error
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XAYF47CLW3CIMKVJHCM4C6IFQHDROF3Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA5LzMwLzIwMjIgNDo1NiBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMzAu
MDkuMjIgdW0gMTA6NDggc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+PiBCVUc6IGtlcm5lbCBOVUxM
IHBvaW50ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwODgNCj4+IMKgICNQ
Rjogc3VwZXJ2aXNvciByZWFkIGFjY2VzcyBpbiBrZXJuZWwgbW9kZQ0KPj4gwqAgI1BGOiBlcnJv
cl9jb2RlKDB4MDAwMCkgLSBub3QtcHJlc2VudCBwYWdlDQo+PiDCoCBQR0QgMCBQNEQgMA0KPj4g
wqAgT29wczogMDAwMCBbIzFdIFBSRUVNUFQgU01QIE5PUFRJDQo+PiDCoCBDUFU6IDIgUElEOiAw
IENvbW06IHN3YXBwZXIvMiBOb3QgdGFpbnRlZCA2LjAuMC1yYzItY3VzdG9tICMxDQo+PiDCoCBB
cnZpbmQgOiBbZG1hX2ZlbmNlX2RlZmF1bHRfd2FpdCBfU1RBUlRdIHRpbWVvdXQgPSAtMQ0KPj4g
wqAgSGFyZHdhcmUgbmFtZTogQU1EIERpYmJsZXIvRGliYmxlciwgQklPUyBSREIxMTA3Q0MgMDkv
MjYvMjAxOA0KPj4gwqAgUklQOiAwMDEwOmRybV9zY2hlZF9qb2JfZG9uZS5pc3JhLjArMHgxMS8w
eDE0MCBbZ3B1X3NjaGVkXQ0KPj4gwqAgQ29kZTogOGIgZmUgZmYgZmYgYmUgMDMgMDAgMDAgMDAg
ZTggN2IgZGEgYjcgZTMgZTkgZDQgZmUgZmYgZmYgNjYgDQo+PiAwZiAxZiA0NCAwMCAwMCAwZiAx
ZiA0NCAwMCAwMCA1NSA0OCA4OSBlNSA0MSA1NSA0MSA1NCA0OSA4OSBmYyA1MyANCj4+IDw0OD4g
OGIgOWYgODggMDAgMDAgMDAgZjAgZmYgOGIgZjAgMDAgMDAgMDAgNDggOGIgODMgODAgMDEgMDAg
MDAgZjANCj4+IMKgIFJTUDogMDAxODpmZmZmYjFiMTgwMWQ0ZDM4IEVGTEFHUzogMDAwMTAwODcN
Cj4+IMKgIFJBWDogZmZmZmZmZmZjMGFhNDhiMCBSQlg6IGZmZmZiMWIxODAxZDRkNzAgUkNYOiAw
MDAwMDAwMDAwMDAwMDE4DQo+PiDCoCBSRFg6IDAwMDAzNmM3MGFmYjdjMWQgUlNJOiBmZmZmOGE0
NWNhNDEzYzYwIFJESTogMDAwMDAwMDAwMDAwMDAwMA0KPj4gwqAgUkJQOiBmZmZmYjFiMTgwMWQ0
ZDUwIFIwODogMDAwMDAwMDAwMDAwMDBiNSBSMDk6IDAwMDAwMDAwMDAwMDAwMDANCj4+IMKgIFIx
MDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiAwMDAwMDAwMDAw
MDAwMDAwDQo+PiDCoCBSMTM6IGZmZmZiMWIxODAxZDRkNzAgUjE0OiBmZmZmOGE0NWM0MTYwMDAw
IFIxNTogZmZmZjhhNDVjNDE2YTcwOA0KPj4gwqAgRlM6wqAgMDAwMDAwMDAwMDAwMDAwMCgwMDAw
KSBHUzpmZmZmOGE0OGEwYTgwMDAwKDAwMDApIA0KPj4ga25sR1M6MDAwMDAwMDAwMDAwMDAwMA0K
Pj4gwqAgQ1M6wqAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMN
Cj4+IMKgIENSMjogMDAwMDAwMDAwMDAwMDA4OCBDUjM6IDAwMDAwMDAxNGFkNTAwMDAgQ1I0OiAw
MDAwMDAwMDAwMzUwNmUwDQo+PiDCoCBDYWxsIFRyYWNlOg0KPj4gwqDCoCA8SVJRPg0KPj4gwqDC
oCBkcm1fc2NoZWRfam9iX2RvbmVfY2IrMHgxMi8weDIwIFtncHVfc2NoZWRdDQo+PiDCoMKgIGRt
YV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZCsweDdlLzB4MTEwDQo+PiDCoMKgIGRtYV9m
ZW5jZV9zaWduYWwrMHgzMS8weDYwDQo+PiDCoMKgIGFtZGdwdV9mZW5jZV9wcm9jZXNzKzB4YzQv
MHgxNDAgW2FtZGdwdV0NCj4+IMKgwqAgZ2Z4X3Y5XzBfZW9wX2lycSsweDlkLzB4ZDAgW2FtZGdw
dV0NCj4+IMKgwqAgYW1kZ3B1X2lycV9kaXNwYXRjaCsweGI3LzB4MjEwIFthbWRncHVdDQo+PiDC
oMKgIGFtZGdwdV9paF9wcm9jZXNzKzB4ODYvMHgxMDAgW2FtZGdwdV0NCj4+IMKgwqAgYW1kZ3B1
X2lycV9oYW5kbGVyKzB4MjQvMHg2MCBbYW1kZ3B1XQ0KPj4gwqDCoCBfX2hhbmRsZV9pcnFfZXZl
bnRfcGVyY3B1KzB4NGIvMHgxOTANCj4+IMKgwqAgaGFuZGxlX2lycV9ldmVudF9wZXJjcHUrMHgx
NS8weDUwDQo+PiDCoMKgIGhhbmRsZV9pcnFfZXZlbnQrMHgzOS8weDYwDQo+PiDCoMKgIGhhbmRs
ZV9lZGdlX2lycSsweGFmLzB4MjEwDQo+PiDCoMKgIF9fY29tbW9uX2ludGVycnVwdCsweDZlLzB4
MTEwDQo+PiDCoMKgIGNvbW1vbl9pbnRlcnJ1cHQrMHhjMS8weGUwDQo+PiDCoMKgIDwvSVJRPg0K
Pj4gwqDCoCA8VEFTSz4NCj4NCj4gSG93IGlzIHRoaXMgdHJpZ2dlcmVkIGFueSB3aHkgaGF2ZW4n
dCB3ZSBzZWVuIGl0IGJlZm9yZT8NCg0KSUdUIGhhcyBmZXcgJ2FtZGdwdScgc3BlY2lmaWMgdGVz
dGNhc2VzIHdoaWNoIGlzIG5vdCByZWxhdGVkwqAgdG8gZmVuY2UuDQoNCndoaWxlIHJ1bm5pbmcg
dGhvc2UgdGVzdCBjYXNlcyBJIGhhdmUgZ290IHRoaXMgY3Jhc2ggYnV0IHRoaXMgY3Jhc2ggaXMg
DQpub3QgYWx3YXlzIHJlcHJvZHVjaWJsZS4NCg0KfkFydmluZA0KDQo+IENocmlzdGlhbg0KPg0K
Pj4gU2lnbmVkLW9mZi1ieTogQXJ2aW5kIFlhZGF2IDxBcnZpbmQuWWFkYXZAYW1kLmNvbT4NCj4+
IC0tLQ0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgfCA3ICsr
KysrKy0NCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9t
YWluLmMgDQo+PiBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+PiBp
bmRleCA2Njg0ZDg4NDYzYjQuLjM5MDI3MmY2YjEyNiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPj4gQEAgLTE3Miw3ICsxNzIsMTIgQEAgZHJtX3NjaGVk
X3JxX3NlbGVjdF9lbnRpdHkoc3RydWN0IGRybV9zY2hlZF9ycSAqcnEpDQo+PiDCoCBzdGF0aWMg
dm9pZCBkcm1fc2NoZWRfam9iX2RvbmUoc3RydWN0IGRybV9zY2hlZF9qb2IgKnNfam9iKQ0KPj4g
wqAgew0KPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpzX2ZlbmNlID0gc19q
b2ItPnNfZmVuY2U7DQo+PiAtwqDCoMKgIHN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQg
PSBzX2ZlbmNlLT5zY2hlZDsNCj4+ICvCoMKgwqAgc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyICpz
Y2hlZDsNCj4+ICsNCj4+ICvCoMKgwqAgaWYgKCFzX2ZlbmNlKQ0KPj4gK8KgwqDCoMKgwqDCoMKg
IHJldHVybjsNCj4+ICsNCj4+ICvCoMKgwqAgc2NoZWQgPSBzX2ZlbmNlLT5zY2hlZDsNCj4+IMKg
IMKgwqDCoMKgwqAgYXRvbWljX2RlYygmc2NoZWQtPmh3X3JxX2NvdW50KTsNCj4+IMKgwqDCoMKg
wqAgYXRvbWljX2RlYyhzY2hlZC0+c2NvcmUpOw0KPg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
