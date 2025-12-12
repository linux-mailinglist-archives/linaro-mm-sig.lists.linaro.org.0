Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CE1CB92FD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 16:49:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B4443F9B6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 15:49:43 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010048.outbound.protection.outlook.com [52.101.193.48])
	by lists.linaro.org (Postfix) with ESMTPS id 823DE3F8F3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 15:49:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=BBoBbRlp;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.193.48 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GdVnGvan2Ge933MERg6prWK0jlr9X/xvUQh5DnhTSmNYEJQTKhGshFkB4MZOo+dmH0+0ICzi91azwgZq9wzUIp44Bt4qVzqneTK32W91T28EFiZplRLe08HeTgWp6ha++HpiPZm4cYLREztbESY2D16Lnxox4KcbXMOBDJdmP0ZoyVBA1s9uZUwKD+EAWsEVVhMyrbNobn5mckSIlNQDgRGmKae+cPd542iNPlKBAwHzfCU4Joamesa5N+Bm1Kgt69jzLRNsHocxyQ0syddUaMTmm6HTuWoIv5eLaYa24ZofFzuaEf8JBpOvQH9WAlPXvIQETAORiA5TatOzQZ8NNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WK6tzHUzieEP3OLoDFiDvpborYR+ZhSnHoBORuGQ0eI=;
 b=T8JyKzCBy/KoXUYf+w4il4iVexxAhJnsRw7WyZ5u1MpoRw5D6WvJl/eVrlZcygJRojvKk2/dWeelLcCZ/vM0RgiVJLNnLAOYCV5Y+D/QM+c02BQsyLopy4kVw1Uh6KGQ2q6C458/DlJVSs8IRSBhV2pNnSe2dBE2R2E7O+cFm+K35BpWrsiaX1Wuuquua22aqveJCzxaKGHFlJyT3phd0lzg4M5akBhEm+CSn8iux3ZZ4siTi9jlsfK/j5j2zTQ3T6m6OFEFiLJCe8Ng/h8NpCoKhbBpabFJw/JVaWlwAkR7pAtD5cBCJ+xmN1hlKxmoEgWVZ982PxaIeIxzlc6XBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WK6tzHUzieEP3OLoDFiDvpborYR+ZhSnHoBORuGQ0eI=;
 b=BBoBbRlpe9E2aEuUnjElXzNCgBdV+SEz+S58YAo14Yw+6239yVCIA25ePXI5clzNkU2MLWdX3Ax+DuPeuqH6K13VLghkrs6PAy/KVQyCP6LBDLb0dhFhmwbEWO8XRQt5kud1O4Q5VWY53aIk0krKwy8OmRqVnQFiqvAjwHW3Ij0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB8221.namprd12.prod.outlook.com (2603:10b6:208:3f0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 15:49:20 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:49:20 +0000
Message-ID: <792385a7-ac0f-4e39-a6e7-3b09bfe0b4e7@amd.com>
Date: Fri, 12 Dec 2025 16:49:16 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-12-christian.koenig@amd.com>
 <e426d618-3d6e-4d93-b6fd-4c5e1b11d9f2@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <e426d618-3d6e-4d93-b6fd-4c5e1b11d9f2@ursulin.net>
X-ClientProxiedBy: BN0PR04CA0013.namprd04.prod.outlook.com
 (2603:10b6:408:ee::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB8221:EE_
X-MS-Office365-Filtering-Correlation-Id: b6c61a9a-c959-47e5-fece-08de399603af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZkxRMnJMaktTZmhCTDUxd0k4UThtT1J5Mkl3S0c4UkhhSStMVVlaVDZOVWs0?=
 =?utf-8?B?ZXczakd0OFZaSVhWeG8rUWJyWXkrQ2N6bXowVHU4U2lCVmJBUGZOUDVXUUhq?=
 =?utf-8?B?QmRJQUZrZ1FQSkNtT0c5Q1RUeVoxMzlpUG9DVldaMFhmU1R6ZmFia200Y25U?=
 =?utf-8?B?c3JxQTFjWFdJTndTMlhSK3RmM1BYVzBBSjB6YVd6N1pxR0N2czF1MEYwQWRH?=
 =?utf-8?B?QmNaRHk2NStsb2xCU0VSZ3NHZHJhV1hiK25SR2tINURacTBWS2J5ODFncTY0?=
 =?utf-8?B?NnlPS0UrV2FnUStRMjErOXlSenhoZFY0ZlFZMU5oSW05V29FL1dHZUdsbjVJ?=
 =?utf-8?B?bStUdlhES1NuOUlEeFQ3bTNXeXdFZkN6aTRJOEVQYjZNWlgrVEIwR1RNcWZt?=
 =?utf-8?B?MVNScGFFS0I0aEF0QW5QdmVRSTc2VmRsOXI2TFFYOWlNNncvc0pNbG5jZksz?=
 =?utf-8?B?cmVrd2hlbWx5K080c0VMMnFXOFZ1Wi84QXFWai9oN3VOeG4wMEtNQTNtQklK?=
 =?utf-8?B?MXFSQ3NWNndVck5NamNWTlZYSmNtaU5YQ3g4ZExJVHBXK2NMU3NFY09OdDNR?=
 =?utf-8?B?TlRXeCtKYjQvaERJSXdDeXNXNUJEUUJqRW5STFNvTUpmeHpiNzJkQk1BZEJk?=
 =?utf-8?B?QWNKNEVzWHJzWU5QQ1NWRDN2SkY1NDlGMWZkVUlaUElESWo2Qk9scHJYczEz?=
 =?utf-8?B?bzJoR0ZRbW5wZGRGbndYV0F2UUxBd2ZrOEVqek5Uay9sbzFVbTlKQ2lITS94?=
 =?utf-8?B?ZDZVamdicHQvSktZMzZiTmdzbUZnRmdzUlNMNXNWRW5ZdHh5c1pVZ0dlM1dn?=
 =?utf-8?B?RUx0bExtSms3bzdEN0djUTcyeUFaYXBGN2YwZ09GV01GeXhIYVAyU3BuYVhH?=
 =?utf-8?B?cy8zTzZYd2NMSDlBUkxoRWpGMUU3UWdKRk1hSW56eHR5dFZBOWFuclBaS3Ri?=
 =?utf-8?B?TnZsZ3BCdzVlcng2dytFVlJPek5yKzhyL1kyaG5KSnRBRFdyMkR4My9xNFIv?=
 =?utf-8?B?MkE3RjhUdWVaczdqYmtYcVV4UjFOZ2czVGtZa2RzU0l6R0x3Q09ZSkt2NSta?=
 =?utf-8?B?Zi9EMVplcGUvbmNMeWR0alRveCtWeVV3SUVvZHZuRWtDeEFsRERPZ2lrZFZ5?=
 =?utf-8?B?dXlWbGY1ZmtsRTNNaWkrbER3ZVR5WEtuNGFEWVB6KzdabXUyS2pIVmNnb0pN?=
 =?utf-8?B?YSszak1WYzJ0K2VDZW41SUpxTzkyVjBoWEw1MGJCM1hiY29mSVRJOC80elBa?=
 =?utf-8?B?MEN5cDF6eVNKdGthcXM1VHc1UVdDYmZYRWYrUkZjTXlSOUZHL25GQklzcFBy?=
 =?utf-8?B?LzZsVWd1TXpPSWh1YmlvdlhSZFhXdEp0TUhXU3lnV3JOWnRianV4dUgzdU1v?=
 =?utf-8?B?N2VLZkIrd2t6cHhldTFkTURxTDR5NWFDM1NaelBUOW1nZnZvNjh2c2l6WmtQ?=
 =?utf-8?B?d3FHRlh0Rzc0RzVvRHd3VEVlL0dTS0NXVW1TQTJYZnVIbEgzalZibE1CMmZP?=
 =?utf-8?B?UW9VT0lFT2JKV3NtcUd1L01hUloveUdYSGhoMTQ5M202OTU4MGdlOUtnWC9P?=
 =?utf-8?B?TGVYZmNyOUF1ZjIrazZrY1prMTFjYjlrMXh3YlhvUVFLNVdOd3hyZThIaDJL?=
 =?utf-8?B?NzdVT0xaTkVZa2Vraityb2NpY0VWeTJ5M2tmc2RlL3IydXpXS0JGdjV4TUFu?=
 =?utf-8?B?cDdtOUlPSllIRGxKQ2lIMUt4bG45ejM0UDlKOHpseXUrUVFvQ2xsUlE5Y1NK?=
 =?utf-8?B?Z0MzTU1IdVY5akpNZ2pVcEZhRlV1aTBTbTBYZWd0Uk43UHFSVjdpTEgyS1c1?=
 =?utf-8?B?VXUyc28xV3pPZU02L1FpNGsrSW9jVzNnb05LSUNHb3VGa2h5VW45d0R0VVYx?=
 =?utf-8?B?UTJtRVhLNXZlTzU1Tk9UWDFuTGtEMW5pOUppMlZweXZJaFFVUHBIcVk2UVll?=
 =?utf-8?Q?CrOiGVzMxHFgVXPoWayhdYqflDra59D0?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TnQ3WEtQSmxDeTEzSk91a0NSdTVTUnlWTzkrK2JWNEs1ajh4YXdpYUlJcERh?=
 =?utf-8?B?U2ZWRW9ZWFA0TXNmWGw0UWIxMnFwNnVubmZTTlM3azUzTUp5bGQvM1R5bnRK?=
 =?utf-8?B?eURjUm04Q1gwSkZJS2pWVXZCclovZThGUHh2ajhUcTNmTVRYOGFrNUJCU1Ax?=
 =?utf-8?B?SnMyYUQwK0pSelRZZFNEY2xCd1BnTS9XWmZqY3RKVStrVFBTRnJzUDA5a1lw?=
 =?utf-8?B?MkNXTkxEQkg2UzhqMjJNMGFCa1dpRGhBcmRTbkx1SHNmbnFwcXJVNTVRTVNC?=
 =?utf-8?B?ZHNmbkc4L3B2RG5Kb0VmVG8yUFI4c0lPQmkvayswTVRXWnhOeXpjeDFqSkdL?=
 =?utf-8?B?d1FIMmdTUDE1WkRBTEQwNHlPYXIzbXpIUDNVb2Y5SldvbkxJeHlVYldOOG9E?=
 =?utf-8?B?VVptTWVQelBVWjVmcGFqcWhnMW1SRVVpdGVuT2FjQWRsTlQxdU91ZWlsUXIv?=
 =?utf-8?B?bTNqSUN3V0VCdmFXOEpoWTdLWDNKQVYxMmNLa3RCYXExK21QYStlTGFqTklG?=
 =?utf-8?B?SUVlMGRGdmM3bEZlUSszL2pFcGdXLzR2bllCY3BCcE5FR1Nua1g5MURnZ1F5?=
 =?utf-8?B?QWc2VjFHNjhaWE1RazM0eTArTC9EdkpTT0kxZWFSYS93dDJJamlUbkxiODdF?=
 =?utf-8?B?MGhGS3Fua1BDWURhaXpwZXVES3lvNVNXYUFVeWxFaFlPdmlIem5tbDlzYzI2?=
 =?utf-8?B?b3Y0T2RkTzd3WVpUSWtRT1kwSktVVTRpNVdneGZuWFdxY091L0V3SnZHMnNH?=
 =?utf-8?B?TU5oT0dJQ0VOT3loRHg4b3BXMktwS056cVJRSzhlRDNVQndJdk1uNk9FQ2Y3?=
 =?utf-8?B?b3lnMmt2QlVkRkJSb2NoVE5MUlU3d09ZVVo5My8wZklwWVpMWTVkUkRWZDNB?=
 =?utf-8?B?ZXpvTUNlM1FBK3NiZ2xjcXBnNzZicUtGQnZ3SFlKTGxIM3RPVUhwclozYUlS?=
 =?utf-8?B?MytLVFRYeEUwM1IvTFB0anVrUExFODhOcjZJbnF5S2RVUTNFYVRkOXkzU2RO?=
 =?utf-8?B?RXdGS1Z5ZTVoUFdObXF6RkZieWxIQm1XQzJKaGFTbXRGS0VuN3NnT0krbUJW?=
 =?utf-8?B?TnlJNC9PTWtYazU2QXNOVGV5Z25RL1NBNkxuWUQ1cm9NYS9ma0NWYjUzWm5x?=
 =?utf-8?B?TlBkbXJZSTNVblExRlF5TzF4L2dPV1hhVVN1bmNtMENtVVp0MTJkaG1nbmQ1?=
 =?utf-8?B?cy9ZeG9SeFBPNEdHZCtvaFJTQlltVWhXRUhxZXByZVB4OUkwL25KQjRFZGFj?=
 =?utf-8?B?VTBUYXRmb2kyTE5XL3d1Qyt4QVJDS0Y5ZzQyMU1OeEc0N3BCaU5tOFl3dDJ4?=
 =?utf-8?B?UDU5VmRicGttNnNLN0tNZWNGeFhRNDRDdWVHdS9HL1V5V2RJdzVCV1VKQmdk?=
 =?utf-8?B?TStpR0tUZ2Z4d0FjTERFSzBWeVpGYVFudU5MVlJZY2lRd2YxSllXNzllVUJR?=
 =?utf-8?B?Nkl3MnNKWFNvdnpoVSsycGx1RnN1eU1OK1h4M1BHd0h0SHo3c29zVjlHaDVZ?=
 =?utf-8?B?MTFOeVhhTlZsRlVOWFc0eGhHeENSakhCb0x0TGI5MzZEakRpVTlwRXY1dEdr?=
 =?utf-8?B?Rk9uZUhXcXc4cmxBV0xNNDJUK1B3UHRSZHp0OGVYN3JzNEdDRzVPRHFJZE4r?=
 =?utf-8?B?ajFKRll2cDcrMVZ1ZFZ5Tm1ZcjF3THVKN3c5aFNNcjVvY0V5bFpsLzh0dzF1?=
 =?utf-8?B?ODZadHBaNytWajNuN3VaSmRLcTJaeTg4bU0rOE84RWg3c1JlSGhqNFFMc2NT?=
 =?utf-8?B?a09kQ3NNWktQZTlEa29LSS9kYTZSTEEzZEVjMUtDR0VqSkFxd3B1RGkyUTZX?=
 =?utf-8?B?SkVZUW8weFNQVGhrSGZPeVpOdk9qRUNJdlZKcUxURktZamVmNlFFa2FEZ01V?=
 =?utf-8?B?ZWtKQXZGRlN3My9JQ3QzdWVOcUlmZmorOFVEaE1wczRyalo0SnlCUnUrMmtj?=
 =?utf-8?B?UmdqRzh5UEVjMjZyZ252a1YxVWlhcmljTWVrVlh1aW8zdHRHL1VQZW02d0Jn?=
 =?utf-8?B?MUpjZkFMemlENnJpdzVkLzU3NVVhOHR5ck83ZllkUE1FM21ycm4wbSt6M1BO?=
 =?utf-8?B?dW1vRFZnS0NIazVocURkTjdxMndYOXc2SGdmT1lIRHFmUnJjVzBSVXFkODh5?=
 =?utf-8?Q?954jVct5zoA7wDLjNnGR35eoW?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6c61a9a-c959-47e5-fece-08de399603af
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 15:49:20.6749
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GWyMXhHq337Jxz6/5EsfUKoHXj56kVyliaER7OCRjD/bku9Kjr3wsA81z3Ge3rJO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB8221
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[52.101.193.48:server fail,2603:10b6:510:13c::22:server fail];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[52.101.193.48:from];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.193.48:from];
	MID_RHS_MATCH_FROM(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	URIBL_BLOCKED(0.00)[amd.com:mid,amd.com:email,amd.com:dkim,amd.com:from_smtp,amd.com:from_mime,mail-northcentralusazon11010048.outbound.protection.outlook.com:rdns,CH1PR05CU001.outbound.protection.outlook.com:helo];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 823DE3F8F3
X-Spamd-Bar: -----
Message-ID-Hash: CTSMCSKKSHVGTFLEUYTVHAH4R5O3QHLT
X-Message-ID-Hash: CTSMCSKKSHVGTFLEUYTVHAH4R5O3QHLT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/19] drm/amdgpu: independence for the amdgpu_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CTSMCSKKSHVGTFLEUYTVHAH4R5O3QHLT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTEvMjUgMTY6NTMsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiANCj4gT24gMTEvMTIv
MjAyNSAxMzoxNiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IFRoaXMgYWxsb3dzIGFtZGdw
dV9mZW5jZXMgdG8gb3V0bGl2ZSB0aGUgYW1kZ3B1IG1vZHVsZS4NCj4+DQo+PiB2MjogdXNlIGRt
YV9mZW5jZV9nZXRfcmN1X3NhZmUgdG8gYmUgTlVMTCBzYWZlIGhlcmUuDQo+Pg0KPj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4g
LS0tDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYyB8IDYz
ICsrKysrKystLS0tLS0tLS0tLS0tLS0tDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfcmluZy5owqAgfMKgIDEgLQ0KPj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNl
cnRpb25zKCspLCA0NCBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZmVuY2UuYw0KPj4gaW5kZXggYzc4NDNlMzM2MzEwLi5jNjM2MzQ3ODAxYzEg
MTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2Uu
Yw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMNCj4+
IEBAIC0xMTIsOCArMTEyLDcgQEAgaW50IGFtZGdwdV9mZW5jZV9lbWl0KHN0cnVjdCBhbWRncHVf
cmluZyAqcmluZywgc3RydWN0IGFtZGdwdV9mZW5jZSAqYWYsDQo+PiDCoMKgwqDCoMKgIGFmLT5y
aW5nID0gcmluZzsNCj4+IMKgIMKgwqDCoMKgwqAgc2VxID0gKytyaW5nLT5mZW5jZV9kcnYuc3lu
Y19zZXE7DQo+PiAtwqDCoMKgIGRtYV9mZW5jZV9pbml0KGZlbmNlLCAmYW1kZ3B1X2ZlbmNlX29w
cywNCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZyaW5nLT5mZW5jZV9kcnYubG9j
aywNCj4+ICvCoMKgwqAgZG1hX2ZlbmNlX2luaXQoZmVuY2UsICZhbWRncHVfZmVuY2Vfb3BzLCBO
VUxMLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYWRldi0+ZmVuY2VfY29u
dGV4dCArIHJpbmctPmlkeCwgc2VxKTsNCj4+IMKgIMKgwqDCoMKgwqAgYW1kZ3B1X3JpbmdfZW1p
dF9mZW5jZShyaW5nLCByaW5nLT5mZW5jZV9kcnYuZ3B1X2FkZHIsDQo+PiBAQCAtNDY3LDcgKzQ2
Niw2IEBAIGludCBhbWRncHVfZmVuY2VfZHJpdmVyX2luaXRfcmluZyhzdHJ1Y3QgYW1kZ3B1X3Jp
bmcgKnJpbmcpDQo+PiDCoMKgwqDCoMKgIHRpbWVyX3NldHVwKCZyaW5nLT5mZW5jZV9kcnYuZmFs
bGJhY2tfdGltZXIsIGFtZGdwdV9mZW5jZV9mYWxsYmFjaywgMCk7DQo+PiDCoCDCoMKgwqDCoMKg
IHJpbmctPmZlbmNlX2Rydi5udW1fZmVuY2VzX21hc2sgPSByaW5nLT5udW1faHdfc3VibWlzc2lv
biAqIDIgLSAxOw0KPj4gLcKgwqDCoCBzcGluX2xvY2tfaW5pdCgmcmluZy0+ZmVuY2VfZHJ2Lmxv
Y2spOw0KPj4gwqDCoMKgwqDCoCByaW5nLT5mZW5jZV9kcnYuZmVuY2VzID0ga2NhbGxvYyhyaW5n
LT5udW1faHdfc3VibWlzc2lvbiAqIDIsIHNpemVvZih2b2lkICopLA0KPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgR0ZQX0tFUk5FTCk7DQo+PiDCoCBAQCAt
NjU0LDE2ICs2NTIsMjAgQEAgdm9pZCBhbWRncHVfZmVuY2VfZHJpdmVyX3NldF9lcnJvcihzdHJ1
Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIGludCBlcnJvcikNCj4+IMKgwqDCoMKgwqAgc3RydWN0IGFt
ZGdwdV9mZW5jZV9kcml2ZXIgKmRydiA9ICZyaW5nLT5mZW5jZV9kcnY7DQo+PiDCoMKgwqDCoMKg
IHVuc2lnbmVkIGxvbmcgZmxhZ3M7DQo+PiDCoCAtwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKCZk
cnYtPmxvY2ssIGZsYWdzKTsNCj4+ICvCoMKgwqAgcmN1X3JlYWRfbG9jaygpOw0KPj4gwqDCoMKg
wqDCoCBmb3IgKHVuc2lnbmVkIGludCBpID0gMDsgaSA8PSBkcnYtPm51bV9mZW5jZXNfbWFzazsg
KytpKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQo+
PiDCoCAtwqDCoMKgwqDCoMKgwqAgZmVuY2UgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGRy
di0+ZmVuY2VzW2ldLA0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGxvY2tkZXBfaXNfaGVsZCgmZHJ2LT5sb2NrKSk7DQo+PiAtwqDCoMKgwqDC
oMKgwqAgaWYgKGZlbmNlICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKGZlbmNlKSkN
Cj4+ICvCoMKgwqDCoMKgwqDCoCBmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1KGRydi0+ZmVuY2Vz
W2ldKTsNCj4gDQo+IGRtYV9mZW5jZV9nZXRfcmN1IGlzIG5vdCBzYWZlIGFnYWluc3QgcGFzc2lu
ZyBhIE5VTEwgZmVuY2UgaW4sIHdoaWxlIHRoZSBleGlzdGluZyBjb2RlIG1ha2VzIGl0IGxvb2sg
bGlrZSBkcnYtPmZlbmNlW10gc2xvdCBjYW4gY29udGFpbiBOVUxMIGF0IHRoaXMgcG9pbnQ/DQo+
IA0KPiBhbWRncHVfZmVuY2VfcHJvY2VzcygpIGlzIHRoZSBwbGFjZSB3aGljaCBjYW4gTlVMTCB0
aGUgc2xvdHM/IElycSBjb250ZXh0PyBXaHkgaXMgdGhhdCBzYWZlIHdpdGggbm8gcmVmZXJlbmNl
IGhlbGQgZnJvbSBjbGVhcmluZyB0aGUgc2xvdCB0byBvcGVyYXRpbmcgb24gdGhlIGZlbmNlPw0K
DQpUaGUgc2xvdHMgYXJlIG5ldmVyIGNsZWFyZWQuIEl0IGNhbiBvbmx5IGJlIHRoYXQgdGhleSBh
cmUgTlVMTCB3aGVuIHRoZSBkcml2ZXIgaXMgbG9hZGVkLg0KDQpJJ3ZlIHN3aXRjaGVkIG92ZXIg
dG8gZG1hX2ZlbmNlX2dldF9yY3Vfc2FmZSgpIHdoZXJlIGFwcHJvcHJpYXRlZC4NCg0KUmVnYXJk
cywNCkNocmlzdGlhbi4NCg0KPiANCj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIWZlbmNlKQ0KPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7DQo+PiArDQo+PiArwqDCoMKgwqDCoMKg
wqAgZG1hX2ZlbmNlX2xvY2tfaXJxc2F2ZShmZW5jZSwgZmxhZ3MpOw0KPj4gK8KgwqDCoMKgwqDC
oMKgIGlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChmZW5jZSkpDQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2Vfc2V0X2Vycm9yKGZlbmNlLCBlcnJvcik7DQo+
PiArwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLCBmbGFn
cyk7DQo+PiDCoMKgwqDCoMKgIH0NCj4+IC3CoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgm
ZHJ2LT5sb2NrLCBmbGFncyk7DQo+PiArwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOw0KPj4gwqAg
fQ0KPj4gwqAgwqAgLyoqDQo+PiBAQCAtNzE0LDE2ICs3MTYsMTkgQEAgdm9pZCBhbWRncHVfZmVu
Y2VfZHJpdmVyX2d1aWx0eV9mb3JjZV9jb21wbGV0aW9uKHN0cnVjdCBhbWRncHVfZmVuY2UgKmFm
KQ0KPj4gwqDCoMKgwqDCoCBzZXEgPSByaW5nLT5mZW5jZV9kcnYuc3luY19zZXEgJiByaW5nLT5m
ZW5jZV9kcnYubnVtX2ZlbmNlc19tYXNrOw0KPj4gwqAgwqDCoMKgwqDCoCAvKiBtYXJrIGFsbCBm
ZW5jZXMgZnJvbSB0aGUgZ3VpbHR5IGNvbnRleHQgd2l0aCBhbiBlcnJvciAqLw0KPj4gLcKgwqDC
oCBzcGluX2xvY2tfaXJxc2F2ZSgmcmluZy0+ZmVuY2VfZHJ2LmxvY2ssIGZsYWdzKTsNCj4+ICvC
oMKgwqAgcmN1X3JlYWRfbG9jaygpOw0KPj4gwqDCoMKgwqDCoCBkbyB7DQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgbGFzdF9zZXErKzsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBsYXN0X3NlcSAmPSBy
aW5nLT5mZW5jZV9kcnYubnVtX2ZlbmNlc19tYXNrOw0KPj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKg
IHB0ciA9ICZyaW5nLT5mZW5jZV9kcnYuZmVuY2VzW2xhc3Rfc2VxXTsNCj4+IC3CoMKgwqDCoMKg
wqDCoCByY3VfcmVhZF9sb2NrKCk7DQo+PiAtwqDCoMKgwqDCoMKgwqAgdW5wcm9jZXNzZWQgPSBy
Y3VfZGVyZWZlcmVuY2UoKnB0cik7DQo+PiArwqDCoMKgwqDCoMKgwqAgdW5wcm9jZXNzZWQgPSBk
bWFfZmVuY2VfZ2V0X3JjdV9zYWZlKHB0cik7DQo+IA0KPiBTaW1pbGFyIGNvbmNlcm4gbGlrZSB0
aGUgYWJvdmUuDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZydGtvDQo+PiArDQo+PiArwqDCoMKg
wqDCoMKgwqAgaWYgKCF1bnByb2Nlc3NlZCkNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNv
bnRpbnVlOw0KPj4gwqAgLcKgwqDCoMKgwqDCoMKgIGlmICh1bnByb2Nlc3NlZCAmJiAhZG1hX2Zl
bmNlX2lzX3NpZ25hbGVkX2xvY2tlZCh1bnByb2Nlc3NlZCkpIHsNCj4+ICvCoMKgwqDCoMKgwqDC
oCBkbWFfZmVuY2VfbG9ja19pcnFzYXZlKHVucHJvY2Vzc2VkLCBmbGFncyk7DQo+PiArwqDCoMKg
wqDCoMKgwqAgaWYgKGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQodW5wcm9jZXNzZWQpKSB7
DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmZW5jZSA9IGNvbnRhaW5lcl9vZih1bnBy
b2Nlc3NlZCwgc3RydWN0IGFtZGdwdV9mZW5jZSwgYmFzZSk7DQo+PiDCoCDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAoZmVuY2UgPT0gYWYpDQo+PiBAQCAtNzMxLDkgKzczNiwxMCBAQCB2
b2lkIGFtZGdwdV9mZW5jZV9kcml2ZXJfZ3VpbHR5X2ZvcmNlX2NvbXBsZXRpb24oc3RydWN0IGFt
ZGdwdV9mZW5jZSAqYWYpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlIGlmIChm
ZW5jZS0+Y29udGV4dCA9PSBhZi0+Y29udGV4dCkNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3NldF9lcnJvcigmZmVuY2UtPmJhc2UsIC1FQ0FOQ0VMRUQp
Ow0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0NCj4+IC3CoMKgwqDCoMKgwqDCoCByY3VfcmVhZF91
bmxvY2soKTsNCj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUo
dW5wcm9jZXNzZWQsIGZsYWdzKTsNCj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KHVu
cHJvY2Vzc2VkKTsNCj4+IMKgwqDCoMKgwqAgfSB3aGlsZSAobGFzdF9zZXEgIT0gc2VxKTsNCj4+
IC3CoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcmluZy0+ZmVuY2VfZHJ2LmxvY2ssIGZs
YWdzKTsNCj4+ICvCoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7DQo+PiDCoMKgwqDCoMKgIC8qIHNp
Z25hbCB0aGUgZ3VpbHR5IGZlbmNlICovDQo+PiDCoMKgwqDCoMKgIGFtZGdwdV9mZW5jZV93cml0
ZShyaW5nLCAodTMyKWFmLT5iYXNlLnNlcW5vKTsNCj4+IMKgwqDCoMKgwqAgYW1kZ3B1X2ZlbmNl
X3Byb2Nlc3MocmluZyk7DQo+PiBAQCAtODIzLDM5ICs4MjksMTAgQEAgc3RhdGljIGJvb2wgYW1k
Z3B1X2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZikNCj4+IMKgwqDC
oMKgwqAgcmV0dXJuIHRydWU7DQo+PiDCoCB9DQo+PiDCoCAtLyoqDQo+PiAtICogYW1kZ3B1X2Zl
bmNlX2ZyZWUgLSBmcmVlIHVwIHRoZSBmZW5jZSBtZW1vcnkNCj4+IC0gKg0KPj4gLSAqIEByY3U6
IFJDVSBjYWxsYmFjayBoZWFkDQo+PiAtICoNCj4+IC0gKiBGcmVlIHVwIHRoZSBmZW5jZSBtZW1v
cnkgYWZ0ZXIgdGhlIFJDVSBncmFjZSBwZXJpb2QuDQo+PiAtICovDQo+PiAtc3RhdGljIHZvaWQg
YW1kZ3B1X2ZlbmNlX2ZyZWUoc3RydWN0IHJjdV9oZWFkICpyY3UpDQo+PiAtew0KPj4gLcKgwqDC
oCBzdHJ1Y3QgZG1hX2ZlbmNlICpmID0gY29udGFpbmVyX29mKHJjdSwgc3RydWN0IGRtYV9mZW5j
ZSwgcmN1KTsNCj4+IC0NCj4+IC3CoMKgwqAgLyogZnJlZSBmZW5jZV9zbGFiIGlmIGl0J3Mgc2Vw
YXJhdGVkIGZlbmNlKi8NCj4+IC3CoMKgwqAga2ZyZWUodG9fYW1kZ3B1X2ZlbmNlKGYpKTsNCj4+
IC19DQo+PiAtDQo+PiAtLyoqDQo+PiAtICogYW1kZ3B1X2ZlbmNlX3JlbGVhc2UgLSBjYWxsYmFj
ayB0aGF0IGZlbmNlIGNhbiBiZSBmcmVlZA0KPj4gLSAqDQo+PiAtICogQGY6IGZlbmNlDQo+PiAt
ICoNCj4+IC0gKiBUaGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCB3aGVuIHRoZSByZWZlcmVuY2UgY291
bnQgYmVjb21lcyB6ZXJvLg0KPj4gLSAqIEl0IGp1c3QgUkNVIHNjaGVkdWxlcyBmcmVlaW5nIHVw
IHRoZSBmZW5jZS4NCj4+IC0gKi8NCj4+IC1zdGF0aWMgdm9pZCBhbWRncHVfZmVuY2VfcmVsZWFz
ZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPj4gLXsNCj4+IC3CoMKgwqAgY2FsbF9yY3UoJmYtPnJj
dSwgYW1kZ3B1X2ZlbmNlX2ZyZWUpOw0KPj4gLX0NCj4+IC0NCj4+IMKgIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZG1hX2ZlbmNlX29wcyBhbWRncHVfZmVuY2Vfb3BzID0gew0KPj4gwqDCoMKgwqDCoCAu
Z2V0X2RyaXZlcl9uYW1lID0gYW1kZ3B1X2ZlbmNlX2dldF9kcml2ZXJfbmFtZSwNCj4+IMKgwqDC
oMKgwqAgLmdldF90aW1lbGluZV9uYW1lID0gYW1kZ3B1X2ZlbmNlX2dldF90aW1lbGluZV9uYW1l
LA0KPj4gwqDCoMKgwqDCoCAuZW5hYmxlX3NpZ25hbGluZyA9IGFtZGdwdV9mZW5jZV9lbmFibGVf
c2lnbmFsaW5nLA0KPj4gLcKgwqDCoCAucmVsZWFzZSA9IGFtZGdwdV9mZW5jZV9yZWxlYXNlLA0K
Pj4gwqAgfTsNCj4+IMKgIMKgIC8qDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3JpbmcuaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9yaW5nLmgNCj4+IGluZGV4IDdhMjdjNmM0YmI0NC4uOWNiZjYzNDU0MDA0IDEwMDY0NA0KPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuaA0KPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuaA0KPj4gQEAgLTEyNSw3ICsx
MjUsNiBAQCBzdHJ1Y3QgYW1kZ3B1X2ZlbmNlX2RyaXZlciB7DQo+PiDCoMKgwqDCoMKgIHVuc2ln
bmVkwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpcnFfdHlwZTsNCj4+IMKgwqDCoMKgwqAgc3RydWN0
IHRpbWVyX2xpc3TCoMKgwqDCoMKgwqDCoCBmYWxsYmFja190aW1lcjsNCj4+IMKgwqDCoMKgwqAg
dW5zaWduZWTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG51bV9mZW5jZXNfbWFzazsNCj4+IC3CoMKg
wqAgc3BpbmxvY2tfdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9jazsNCj4+IMKgwqDCoMKgwqAg
c3RydWN0IGRtYV9mZW5jZcKgwqDCoMKgwqDCoMKgICoqZmVuY2VzOw0KPj4gwqAgfTsNCj4+IMKg
IA0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
