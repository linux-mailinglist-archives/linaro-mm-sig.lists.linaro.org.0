Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A79A1252E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 14:46:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB26A44126
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 13:46:15 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2080.outbound.protection.outlook.com [40.107.93.80])
	by lists.linaro.org (Postfix) with ESMTPS id 012384413A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 13:45:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=aqyuT2iY;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.80 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fv9YDJs3imkBrjqXv4Pxb0FbYqYrKoWyqlqVnerTo2If9NTnKulwpvuv0or7p9GSLtMytod5jg/JfK6C4j5xJkc9+6JE4687EinvrxhL8cQvZ/emAuNTyc7VKz2jRehplhtjUb1Th7Dy0SiH5S/bIoHzUBKBb1fpq0Ga5QG8SO1bYoYRUjLvZjQFt+ElCiI2OAjyNzXrWn91etyrmZJiDXl7fxUCEU5kWf/wvSqJ3bZUX4IntRovhU4/swFAVueluN91kxzl0DhV3cXcXo01Nyn+yxsrSQ0LCpnNsukLgC69sX/w+niQVPyeO/alXHfbJvnmEUwPpinKOEdPifVNew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DxAwCZ87IOnmEZornajrcjbam0tMX8Ku6ZkisETplbk=;
 b=cPtJ6216i83shk2KYoG7k3oSMVQh4JI0rg7ZJ5QnHr5fb1Plon5acbK15cFNqMZN5LbT6Nvgjxm6gIqpih7YxVyZyQ9FDG+OiFjmGU64/lAbwocb0Rwk1JvDHMzkEEEF21u/x2qBZLhNNKZsPRf9HwrjE7PFBjrzbh6e+oeVS1yqy/p0up6x7owCtjW04KXQVT3uG2gS0Gb+8bvIq/rkuP7C/lH/nL/HdHUGSX3Fb1PZR3GXPkf4S2fBTBPi/IPKglw1rsPs0gAkn6OaYkn3IgNnWkvyyR6qCjtu7dkarx+2oC7aolIL1eEp+KYbs1J8LtQuq5IlbpEkmi+gm5Uukg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DxAwCZ87IOnmEZornajrcjbam0tMX8Ku6ZkisETplbk=;
 b=aqyuT2iYGMwehv1C8GKEwRJYE/bzary9EYVFzXduhqe8i3nyQ/jtqNQ29qHYXu5rbwLVeXgmYDjHdVBAzm72Q1d5Vj5ett28t5NEftnyiTc3zRQC58x+FPlF4F9AppMpH8i3r7PTY34aqpsLc3yIvGc4x4AyScmKNNNya7EnzaA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN0PR12MB5740.namprd12.prod.outlook.com (2603:10b6:208:373::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 13:45:24 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 13:45:24 +0000
Message-ID: <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
Date: Wed, 15 Jan 2025 14:45:16 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>
References: <f3748173-2bbc-43fa-b62e-72e778999764@amd.com>
 <20250108145843.GR5556@nvidia.com>
 <5a858e00-6fea-4a7a-93be-f23b66e00835@amd.com>
 <20250108162227.GT5556@nvidia.com> <Z37HpvHAfB0g9OQ-@phenom.ffwll.local>
 <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050>
 <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
 <c823f70c-9b70-441c-b046-71058c315857@amd.com>
 <20250110205454.GM5556@nvidia.com>
 <d213eee7-0501-4a63-9dfe-b431408c4c37@amd.com>
 <20250115133821.GO5556@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250115133821.GO5556@nvidia.com>
X-ClientProxiedBy: FR5P281CA0049.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f0::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN0PR12MB5740:EE_
X-MS-Office365-Filtering-Correlation-Id: 764cc6d2-1224-4f84-f74b-08dd356adcab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|366016|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?L01vQ1poNUJLc3BRcTNUMVhwbVA0T1oxNlBqTnRqMm9rb2tJSFVoUGcwOWJk?=
 =?utf-8?B?ZEVyRWEya051RXpKWkFYUmhOWEkwaVI5L0hwRHFFZUV1NERtNzRvVkZaQTZU?=
 =?utf-8?B?czlPRTBFTGxoclRCTGZ3NS93ZEZBNjZxOG9YM09YYld4dFU4ZTRZbWFMMWd1?=
 =?utf-8?B?UlFvU0syWG1majdNQ0NIK1Y4Vm1BU1NlYlBBYjJOdnJyenFwYm84dTUybm5Q?=
 =?utf-8?B?SjdiSUhQaS91d0QvTThtTFJrUVhjQmhJOW95MDNuWjlKS095a1hTTmZRUTJz?=
 =?utf-8?B?SitYLzhuTGxGekJ6NERtQTYrWklJM0EzaC9hQVlYbUd1VHkrL0hMVGZDb3ZG?=
 =?utf-8?B?eVZWTFp2RE5NRTNsUThVWnZxVU1rQURkbzZvMU01UmtraFRJekdKWEJ2eGhQ?=
 =?utf-8?B?ZkFqSnE0TjVBOXphdkFXeThZM0NxZllXTThWQWF0VHBPTFRvWU9JdTBpVlRh?=
 =?utf-8?B?VVVmeGVjUXNLQm05R2VIeUlBbk5YVWI4QXU5RHZ4RDB3eFhlY1RsOGJtMjlu?=
 =?utf-8?B?K3BoMnJqVnQvdW9vSE9RSStka2RVTVFYd1NGRE1CY1BuemFLM25zMG8wQitC?=
 =?utf-8?B?QitvVHBMeHFCZlArWTBCS3Y2MlFrK2JtU1Jva3V1c1NZcmU0WUR1Qi9XZzFw?=
 =?utf-8?B?dmdEVHZxVkVTRjNOcDVzZG1qRnl5ZVdIQXR6VmJxeGFWWEtjSGNGYlIzYjY1?=
 =?utf-8?B?bTNDTkNTTzBKNVdVSExCVjRqQVVyb25MUUs5bm16YkNrbnhlOStzU0o2ZmVD?=
 =?utf-8?B?cU1Tb2N3cFVub2YrNEZnaEROdit3ckJwRTBRdCsyd0dIbng0N2VQNUdJMVBi?=
 =?utf-8?B?dVZuVHVLNWtUSm5Od0IyMlNQa0hqU0lkMkZRa1hDZThBMmFpZWUxcUV0OFpJ?=
 =?utf-8?B?a0VsLy9qV2cwRVRNd1RHSWplSngyVGZ5MWhoVUNLZ1hQMktVYjlNWXZKWVVt?=
 =?utf-8?B?cURqeTBVanQvZ3FiUmRoOGhSOHZGRm1nVWI1TnVWNk5HZDR5azcvTm96bEF5?=
 =?utf-8?B?ampXQklTK0NiOHMydEw5VUFLK0Rpc3pZRk1uOVMyK2tQdGpaWXcxYUlSTDcx?=
 =?utf-8?B?TUoycWtGVkl0bC9rYnVpVUdzdGJFcUNPdml0UGdteW5hcm1HeG4rYjZ4WStP?=
 =?utf-8?B?aS9Kckd5b3FWeSs1bXVLVTZPY2NiM1pybWFzRmZTdmdCRHlrZkZrbHpHL1Q4?=
 =?utf-8?B?Sll2VmExUVpQbmFhRlBDSW5OSVkyL0JsQjV0dWs5czd2eEdTZHAxM0g3WGVT?=
 =?utf-8?B?N0ZrZ29LeVovWmt0NnBoU1IwTVYwaVZ6RXU5QStSc0hycTZpQVNxVzdPelRQ?=
 =?utf-8?B?ZW5pTStwdUpxa2pXcy9nTXRqaG9WNHZWaWk0NDZ1NGVQV3Azd1o5UUlpMTlK?=
 =?utf-8?B?WUlkMUxUUWNiUHlqekRMY1NLaTJtSlhramlkRXZUaEV3bmIvSk9jRVZyaUpn?=
 =?utf-8?B?MUl2TzN1ZFptV1RWRTJOVjNxbFRHeDUzaWp0RW5Ba1hZenVlWHZsWWJoRmlY?=
 =?utf-8?B?ZTU4dlpaczI0NFN5ZTg5TTJoUElDNEcyWjl6ZDdCSVJJQmt6dTRtQ2xTOVBh?=
 =?utf-8?B?YnNSUjh4QmhoK3dnQ0V2d0syQWxuUlpxKzRXZnhVMmhWQmxoZXJQaVJhWDVE?=
 =?utf-8?B?QXVZRWRDckRkQzl4T001dFl4Q2tMckdWb3BSL3RBNDlQL0dVNWFLUFVGRTJN?=
 =?utf-8?B?UktJaEpEckhud1hKRENmeTRLTVJJd3lHclladmJsbmJoSlFTZkJmak8vakpM?=
 =?utf-8?B?WCtmWWxzTE1MY2kweWlLeGRiRHI1T2Rjc3JxVytGT2c1d3cyR2ZhQ2ZEZHJC?=
 =?utf-8?B?WDVXUEs1cVFqM2xwRDBUQzhzbjc5ZkFGM1RWTjRhSEtHV2RVL0RtenRIWDBR?=
 =?utf-8?Q?CJIuA5O3rfxVE?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eU5YU1E0S2xqMHpEdnM4akppWm9RckpsdCs0cEVqSklaQ2cyYUE1RngvL3dH?=
 =?utf-8?B?RlVsbllsTW1LSitlSmMvNEZPemlBTUVDS2RHbzRIOEJkaStwclB1QlVKOTcv?=
 =?utf-8?B?U3VlbEZPQjNvaDJucEFkRGtPd1VyaUFBRHZSR2NiTzFpVjlMSVBaOEJIcG94?=
 =?utf-8?B?QWcwOVcvUUpxUi9UY0krWFB5bGdSMitvWVlJT01OMC9SZUVTUjJpaS9Gb0gy?=
 =?utf-8?B?b0dKS25iay8yOWQramdOUFhRTUtydW4wYVdFVC9JQUpLdUxlaHFaaDdlUGRD?=
 =?utf-8?B?VzlIU3FhQ2owZnBQaElKaDJwNzVLM2xsZTd3cEFmNXVLTFlGTzliRTV0Nm44?=
 =?utf-8?B?Wk1vekZUc0NwZ2JZUGl3Y3lKRnZsSldFN1pKRUxiMW9iazBMTWo5UThBbXl0?=
 =?utf-8?B?Ynd5dHNlKzZtK25WM0U5N0Q2bGo3eVhYTW4rRnVORWhGZ3JUQXBQSWQ4aExC?=
 =?utf-8?B?dldPS3VLWjFxTm5SRitoM3owNTFwQmluOWRaczRQTWtGVXRiNGJCV3c0aVh5?=
 =?utf-8?B?MFNZKzBLSHIwVmRER3hCUk9kU2NlcTJIMy9TYXZZVGRZcHhUZkd4NnpPTnRO?=
 =?utf-8?B?ZVR4WG01NzRJZ3RITmxQNVcwWVkwcUlwYXptK3pra0R5MVRwK0t5Nm0rbCtJ?=
 =?utf-8?B?U0xrUU1ldVhWV1JQYXI3OUZPbTlPT0dIcTJVTWNKSWlUYXVDMStiRDQvbkhD?=
 =?utf-8?B?ZVlFSmZ6c3UvdmMvZ255VmZidWkxbjFKOER4Zm1lMFFqcDZ2cFZpajdGdWRV?=
 =?utf-8?B?cGlxeVE3bVU2NTJpdUhQVTlRMWFXNkx6czgxSEVrYlNDN05QWkNraWZ3eHFQ?=
 =?utf-8?B?WTA5T3Z3aWNXZk15OE4zMWw3WXZnenJCbUNuZktEMHloam5sL1VFUGgrMFE2?=
 =?utf-8?B?SDhJZDMwek9TRlM4eGF6Wkt4SEtwRDh4RHlnOWJrSlNYSVBtYk4rTitCWVp0?=
 =?utf-8?B?K0Y5cnJVRm5wTnoxcEJ6WXpHMkphZXM0QnorUEwyTkcwclJSUEdnZ0E0MDE5?=
 =?utf-8?B?RjAwUkFsWS9uNGZlZEU5d0ZSUEMrYmNhRjFyK0xFcEV6dEtoRVVEa3RFR0hE?=
 =?utf-8?B?c0xxUldNMWVKSmthSStYaVZDRStWNDZLZHpMWTRETkpIblU5T2ZzYWMrb0Vv?=
 =?utf-8?B?RGM5TnhPOENxMDRwaDNLRy9PeXRnc2xzUXk3R0dWM1ZhNCt6bytlZnJ0a1Ru?=
 =?utf-8?B?THcrM3FUMkl0U1lJcGMxK0t0WlBJcy9SRDhHS0JTcjM0VE1mb1JwVW56bnFG?=
 =?utf-8?B?aEgzcldSRzN6a2U2eGx0Q0gwQ214cUUyWnJrdllWY0dHaW9haXhmMW5mWDRE?=
 =?utf-8?B?Mi9UT0prMkJrTzRxSGwzVFRvL2Z0WmtvNURPNWZsNll1R2wzbk5rekRWTkEx?=
 =?utf-8?B?TE1EQzZ4OHJ4ZFkxMDV6R3dHcCtJcWloS3dFK0RDaVV5dk82Q2ZDOE5PK1JX?=
 =?utf-8?B?Tm0yK0NQYXlsOWt5eVJLZVJRbXBLeStkM2Fjd0JjOXQ0VXA4bHVCcEFuZ0RO?=
 =?utf-8?B?UTc4Y01RTkpDS0RKK2RkVHFUTjRPN1hRYXhHQlJteWFOL3M1dVladU9GN05R?=
 =?utf-8?B?V2hHKzVkMkE0Z2g3YTdxQkdNeS9rc0g2YlYwMTdoeFNXNU5xRExjcGluNXhX?=
 =?utf-8?B?RGZ0MVU3OUl1SnovN0o1eTVINjVYa2lSK1ZmNkFTU0lsSXlqRFZISmxJak9C?=
 =?utf-8?B?SWR4REk3Smp2cWRUZUNxZzBacmJ6bDFmaHh1M3JlNG1PSmd5NE9qWXc3TXNz?=
 =?utf-8?B?dGtIQU80UlBiMExVL042RWZUMzB3eERXbGFtaUhVKzZnZHgvZzhybHVWN3Rn?=
 =?utf-8?B?SThhYk9lRHMwYThDaVpaaEdyNUIxTDJTNEJMZU5CZXlQNGs3MDB6ZEVyTmZv?=
 =?utf-8?B?TVRxNDQzak4ya2h5UE5md3crZzJqRkFOQkpLN1ZJckJKSFVzYW9sa1gzdjFi?=
 =?utf-8?B?RElYZTRHbUp0aElsL0UzVUNsMkN5eFE1ekZ1WDNOR3psNllZaUZabGMrdFNy?=
 =?utf-8?B?WFJLMExZM2N5bFlnMVFYR21tVmNnUmVkbnNUWkZxWVJORGphODFrSy9EakYw?=
 =?utf-8?B?bys3b0lyWXBWMC9mQ0lJdGF6eG9LWTllU0djSUVNMklPdmlyMXdyaWRMRVV1?=
 =?utf-8?Q?CgreerbU2vFy0InoKCEfkZcnD?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 764cc6d2-1224-4f84-f74b-08dd356adcab
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 13:45:24.3081
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W30Z/SLH4cJOkkLLdNu6ED9ZLBgwmzp7V9oFTrAf2C1mApjT2zFUTTOm+RsrBq+B
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5740
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 012384413A
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.93.80:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.80:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: REFREC6VAYXMLGJAHR5FCLRM2WC6CLWP
X-Message-ID-Hash: REFREC6VAYXMLGJAHR5FCLRM2WC6CLWP
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/REFREC6VAYXMLGJAHR5FCLRM2WC6CLWP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1829378639680595744=="

--===============1829378639680595744==
Content-Type: multipart/alternative;
 boundary="------------Avi86ny3nb5z5eKoNn0oqdnl"
Content-Language: en-US

--------------Avi86ny3nb5z5eKoNn0oqdnl
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTUuMDEuMjUgdW0gMTQ6Mzggc2NocmllYiBKYXNvbiBHdW50aG9ycGU6DQo+IE9uIFdlZCwg
SmFuIDE1LCAyMDI1IGF0IDEwOjM4OjAwQU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBbSAxMC4wMS4yNSB1bSAyMTo1NCBzY2hyaWViIEphc29uIEd1bnRob3JwZToNCj4+PiBb
U05JUF0NCj4+Pj4+IEkgZG9uJ3QgZnVsbHkgdW5kZXJzdGFuZCB5b3VyIHVzZSBjYXNlLCBidXQg
SSB0aGluayBpdCdzIHF1aXRlIGxpa2VseQ0KPj4+Pj4gdGhhdCB3ZSBhbHJlYWR5IGhhdmUgdGhh
dCB3b3JraW5nLg0KPj4+IEluIEludGVsIENDIHN5c3RlbXMgeW91IGNhbm5vdCBtbWFwIHNlY3Vy
ZSBtZW1vcnkgb3IgdGhlIHN5c3RlbSB3aWxsDQo+Pj4gdGFrZSBhIG1hY2hpbmUgY2hlY2suDQo+
Pj4NCj4+PiBZb3UgaGF2ZSB0byBjb252ZXkgc2VjdXJlIG1lbW9yeSBpbnNpZGUgYSBGRCBlbnRp
cmVseSB3aXRoaW4gdGhlDQo+Pj4ga2VybmVsIHNvIHRoYXQgb25seSBhbiBpbXBvcnRlciB0aGF0
IHVuZGVyc3RhbmRzIGhvdyB0byBoYW5kbGUgc2VjdXJlDQo+Pj4gbWVtb3J5IChzdWNoIGFzIEtW
TSkgaXMgdXNpbmcgaXQgdG8gYXZvaWQgbWFjaGluZSBjaGVja2luZy4NCj4+Pg0KPj4+IFRoZSBw
YXRjaCBzZXJpZXMgaGVyZSBzaG91bGQgYmUgdGhvdWdodCBvZiBhcyB0aGUgZmlyc3QgcGFydCBv
ZiB0aGlzLA0KPj4+IGFsbG93aW5nIFBGTnMgdG8gZmxvdyB3aXRob3V0IFZNQXMuIElNSE8gdGhl
IHNlY29uZCBwYXJ0IG9mIHByZXZlbnRpbmcNCj4+PiBtYWNoaW5lIGNoZWNrcyBpcyBub3QgY29t
cGxldGUuDQo+Pj4NCj4+PiBJbiB0aGUgYXBwcm9hY2ggSSBoYXZlIGJlZW4gdGFsa2luZyBhYm91
dCB0aGUgc2VjdXJlIG1lbW9yeSB3b3VsZCBiZQ0KPj4+IHJlcHJlc2VudGVkIGJ5IGEgcDJwX3By
b3ZpZGVyIHN0cnVjdHVyZSB0aGF0IGlzIGluY29tcGF0aWJsZSB3aXRoDQo+Pj4gZXZlcnl0aGlu
ZyBlbHNlLiBGb3IgaW5zdGFuY2UgaW1wb3J0ZXJzIHRoYXQgY2FuIG9ubHkgZG8gRE1BIHdvdWxk
DQo+Pj4gc2ltcGx5IGNsZWFubHkgZmFpbCB3aGVuIHByZXNlbnRlZCB3aXRoIHRoaXMgbWVtb3J5
Lg0KPj4gVGhhdCdzIGEgcmF0aGVyIGludGVyZXN0aW5nIHVzZSBjYXNlLCBidXQgbm90IHNvbWV0
aGluZyBJIGNvbnNpZGVyIGZpdHRpbmcNCj4+IGZvciB0aGUgRE1BLWJ1ZiBpbnRlcmZhY2UuDQo+
IFRvIHJlY2FzdCB0aGUgcHJvYmxlbSBzdGF0ZW1lbnQsIGl0IGlzIGJhc2ljYWxseSB0aGUgc2Ft
ZSBhcyB5b3VyDQo+IGRldmljZSBwcml2YXRlIGludGVyY29ubmVjdHMuIFRoZXJlIGFyZSBjZXJ0
YWluIGRldmljZXMgdGhhdA0KPiB1bmRlcnN0YW5kIGhvdyB0byB1c2UgdGhpcyBtZW1vcnksIGFu
ZCBpZiB0aGV5IHdvcmsgdG9nZXRoZXIgdGhleSBjYW4NCj4gYWNjZXNzIGl0Lg0KPiAgIA0KPj4g
U2VlIERNQS1idWYgaW4gbWVhbnQgdG8gYmUgdXNlZCBiZXR3ZWVuIGRyaXZlcnMgdG8gYWxsb3cg
RE1BIGFjY2VzcyBvbg0KPj4gc2hhcmVkIGJ1ZmZlcnMuDQo+IFRoZXkgYXJlIHNoYXJlZCwganVz
dCBub3Qgd2l0aCBldmVyeW9uZSA6KQ0KPiAgIA0KPj4gV2hhdCB5b3UgdHJ5IHRvIGRvIGhlcmUg
aW5zdGVhZCBpcyB0byBnaXZlIG1lbW9yeSBpbiB0aGUgZm9ybSBvZiBhIGZpbGUNCj4+IGRlc2Ny
aXB0b3IgdG8gYSBjbGllbnQgVk0gdG8gZG8gdGhpbmdzIGxpa2UgQ1BVIG1hcHBpbmcgYW5kIGdp
dmluZyBpdCB0bw0KPj4gZHJpdmVycyB0byBkbyBETUEgZXRjLi4uDQo+IEhvdyBpcyB0aGlzIHBh
cmFncmFwaCBkaWZmZXJlbnQgZnJvbSB0aGUgZmlyc3Q/IEl0IGlzIGEgc2hhcmVkIGJ1ZmZlcg0K
PiB0aGF0IHdlIHdhbnQgcmVhbCBETUEgYW5kIENQVSAiRE1BIiBhY2Nlc3MgdG8uIEl0IGlzICJw
cml2YXRlIiBzbw0KPiB0aGluZ3MgdGhhdCBkb24ndCB1bmRlcnN0YW5kIHRoZSBpbnRlcmNvbm5l
Y3QgcnVsZXMgY2Fubm90IGFjY2VzcyBpdC4NCg0KWWVhaCwgYnV0IGl0J3MgcHJpdmF0ZSB0byB0
aGUgZXhwb3J0ZXIuIEFuZCBhIHZlcnkgZnVuZGFtZW50YWwgcnVsZSBvZiANCkRNQS1idWYgaXMg
dGhhdCB0aGUgZXhwb3J0ZXIgaXMgdGhlIG9uZSBpbiBjb250cm9sIG9mIHRoaW5ncy4NCg0KU28g
Zm9yIGV4YW1wbGUgaXQgaXMgaWxsZWdhbCBmb3IgYW4gaW1wb3J0ZXIgdG8gc2V0dXAgQ1BVIG1h
cHBpbmdzIHRvIGEgDQpidWZmZXIuIFRoYXQncyB3aHkgd2UgaGF2ZSBkbWFfYnVmX21tYXAoKSB3
aGljaCByZWRpcmVjdHMgbW1hcCgpIA0KcmVxdWVzdHMgZnJvbSB0aGUgaW1wb3J0ZXIgdG8gdGhl
IGV4cG9ydGVyLg0KDQpJbiB5b3VyIHVzZSBjYXNlIGhlcmUgdGhlIGltcG9ydGVyIHdhbnRzIHRv
IGJlIGluIGNvbnRyb2wgYW5kIGRvIHRoaW5ncyANCmxpa2UgYm90aCBDUFUgYXMgd2VsbCBhcyBE
TUEgbWFwcGluZ3MuDQoNCkFzIGZhciBhcyBJIGNhbiBzZWUgdGhhdCBpcyByZWFsbHkgbm90IGFu
IHVzZSBjYXNlIHdoaWNoIGZpdHMgRE1BLWJ1ZiBpbiANCmFueSB3YXkuDQoNCj4+IFRoYXQgc291
bmRzIG1vcmUgc29tZXRoaW5nIGZvciB0aGUgVEVFIGRyaXZlciBpbnN0ZWFkIG9mIGFueXRoaW5n
IERNQS1idWYNCj4+IHNob3VsZCBiZSBkZWFsaW5nIHdpdGguDQo+IEhhcyBub3RoaW5nIHRvIGRv
IHdpdGggVEVFLg0KDQpXaHk/DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gSmFzb24N
Cg==

--------------Avi86ny3nb5z5eKoNn0oqdnl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIGh0bWw+PGh0bWw+PGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5
cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQogIDwvaGVhZD4NCiAgPGJv
ZHk+DQogICAgQW0gMTUuMDEuMjUgdW0gMTQ6Mzggc2NocmllYiBKYXNvbiBHdW50aG9ycGU6PGJy
Pg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDoyMDI1MDExNTEzMzgyMS5H
TzU1NTZAbnZpZGlhLmNvbSI+DQogICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFw
PSIiPk9uIFdlZCwgSmFuIDE1LCAyMDI1IGF0IDEwOjM4OjAwQU0gKzAxMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6DQo8L3ByZT4NCiAgICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAg
ICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPkFtIDEwLjAxLjI1IHVtIDIx
OjU0IHNjaHJpZWIgSmFzb24gR3VudGhvcnBlOg0KPC9wcmU+DQogICAgICAgIDxibG9ja3F1b3Rl
IHR5cGU9ImNpdGUiPg0KICAgICAgICAgIDxwcmUgY2xhc3M9Im1vei1xdW90ZS1wcmUiIHdyYXA9
IiI+W1NOSVBdDQo8L3ByZT4NCiAgICAgICAgICA8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj4NCiAg
ICAgICAgICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAgICAgICAgICAgICA8cHJlIGNs
YXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPkkgZG9uJ3QgZnVsbHkgdW5kZXJzdGFuZCB5b3Vy
IHVzZSBjYXNlLCBidXQgSSB0aGluayBpdCdzIHF1aXRlIGxpa2VseQ0KdGhhdCB3ZSBhbHJlYWR5
IGhhdmUgdGhhdCB3b3JraW5nLg0KPC9wcmU+DQogICAgICAgICAgICA8L2Jsb2NrcXVvdGU+DQog
ICAgICAgICAgPC9ibG9ja3F1b3RlPg0KICAgICAgICAgIDxwcmUgY2xhc3M9Im1vei1xdW90ZS1w
cmUiIHdyYXA9IiI+SW4gSW50ZWwgQ0Mgc3lzdGVtcyB5b3UgY2Fubm90IG1tYXAgc2VjdXJlIG1l
bW9yeSBvciB0aGUgc3lzdGVtIHdpbGwNCnRha2UgYSBtYWNoaW5lIGNoZWNrLg0KDQpZb3UgaGF2
ZSB0byBjb252ZXkgc2VjdXJlIG1lbW9yeSBpbnNpZGUgYSBGRCBlbnRpcmVseSB3aXRoaW4gdGhl
DQprZXJuZWwgc28gdGhhdCBvbmx5IGFuIGltcG9ydGVyIHRoYXQgdW5kZXJzdGFuZHMgaG93IHRv
IGhhbmRsZSBzZWN1cmUNCm1lbW9yeSAoc3VjaCBhcyBLVk0pIGlzIHVzaW5nIGl0IHRvIGF2b2lk
IG1hY2hpbmUgY2hlY2tpbmcuDQoNClRoZSBwYXRjaCBzZXJpZXMgaGVyZSBzaG91bGQgYmUgdGhv
dWdodCBvZiBhcyB0aGUgZmlyc3QgcGFydCBvZiB0aGlzLA0KYWxsb3dpbmcgUEZOcyB0byBmbG93
IHdpdGhvdXQgVk1Bcy4gSU1ITyB0aGUgc2Vjb25kIHBhcnQgb2YgcHJldmVudGluZw0KbWFjaGlu
ZSBjaGVja3MgaXMgbm90IGNvbXBsZXRlLg0KDQpJbiB0aGUgYXBwcm9hY2ggSSBoYXZlIGJlZW4g
dGFsa2luZyBhYm91dCB0aGUgc2VjdXJlIG1lbW9yeSB3b3VsZCBiZQ0KcmVwcmVzZW50ZWQgYnkg
YSBwMnBfcHJvdmlkZXIgc3RydWN0dXJlIHRoYXQgaXMgaW5jb21wYXRpYmxlIHdpdGgNCmV2ZXJ5
dGhpbmcgZWxzZS4gRm9yIGluc3RhbmNlIGltcG9ydGVycyB0aGF0IGNhbiBvbmx5IGRvIERNQSB3
b3VsZA0Kc2ltcGx5IGNsZWFubHkgZmFpbCB3aGVuIHByZXNlbnRlZCB3aXRoIHRoaXMgbWVtb3J5
Lg0KPC9wcmU+DQogICAgICAgIDwvYmxvY2txdW90ZT4NCiAgICAgICAgPHByZSBjbGFzcz0ibW96
LXF1b3RlLXByZSIgd3JhcD0iIj4NClRoYXQncyBhIHJhdGhlciBpbnRlcmVzdGluZyB1c2UgY2Fz
ZSwgYnV0IG5vdCBzb21ldGhpbmcgSSBjb25zaWRlciBmaXR0aW5nDQpmb3IgdGhlIERNQS1idWYg
aW50ZXJmYWNlLg0KPC9wcmU+DQogICAgICA8L2Jsb2NrcXVvdGU+DQogICAgICA8cHJlIGNsYXNz
PSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPg0KVG8gcmVjYXN0IHRoZSBwcm9ibGVtIHN0YXRlbWVu
dCwgaXQgaXMgYmFzaWNhbGx5IHRoZSBzYW1lIGFzIHlvdXINCmRldmljZSBwcml2YXRlIGludGVy
Y29ubmVjdHMuIFRoZXJlIGFyZSBjZXJ0YWluIGRldmljZXMgdGhhdA0KdW5kZXJzdGFuZCBob3cg
dG8gdXNlIHRoaXMgbWVtb3J5LCBhbmQgaWYgdGhleSB3b3JrIHRvZ2V0aGVyIHRoZXkgY2FuDQph
Y2Nlc3MgaXQuDQogDQo8L3ByZT4NCiAgICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAg
ICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPlNlZSBETUEtYnVmIGluIG1l
YW50IHRvIGJlIHVzZWQgYmV0d2VlbiBkcml2ZXJzIHRvIGFsbG93IERNQSBhY2Nlc3Mgb24NCnNo
YXJlZCBidWZmZXJzLg0KPC9wcmU+DQogICAgICA8L2Jsb2NrcXVvdGU+DQogICAgICA8cHJlIGNs
YXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPg0KVGhleSBhcmUgc2hhcmVkLCBqdXN0IG5vdCB3
aXRoIGV2ZXJ5b25lIDopDQogDQo8L3ByZT4NCiAgICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUi
Pg0KICAgICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPldoYXQgeW91IHRy
eSB0byBkbyBoZXJlIGluc3RlYWQgaXMgdG8gZ2l2ZSBtZW1vcnkgaW4gdGhlIGZvcm0gb2YgYSBm
aWxlDQpkZXNjcmlwdG9yIHRvIGEgY2xpZW50IFZNIHRvIGRvIHRoaW5ncyBsaWtlIENQVSBtYXBw
aW5nIGFuZCBnaXZpbmcgaXQgdG8NCmRyaXZlcnMgdG8gZG8gRE1BIGV0Yy4uLg0KPC9wcmU+DQog
ICAgICA8L2Jsb2NrcXVvdGU+DQogICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFw
PSIiPg0KSG93IGlzIHRoaXMgcGFyYWdyYXBoIGRpZmZlcmVudCBmcm9tIHRoZSBmaXJzdD8gSXQg
aXMgYSBzaGFyZWQgYnVmZmVyDQp0aGF0IHdlIHdhbnQgcmVhbCBETUEgYW5kIENQVSAmcXVvdDtE
TUEmcXVvdDsgYWNjZXNzIHRvLiBJdCBpcyAmcXVvdDtwcml2YXRlJnF1b3Q7IHNvDQp0aGluZ3Mg
dGhhdCBkb24ndCB1bmRlcnN0YW5kIHRoZSBpbnRlcmNvbm5lY3QgcnVsZXMgY2Fubm90IGFjY2Vz
cyBpdC48L3ByZT4NCiAgICA8L2Jsb2NrcXVvdGU+DQogICAgPGJyPg0KICAgIFllYWgsIGJ1dCBp
dCdzIHByaXZhdGUgdG8gdGhlIGV4cG9ydGVyLiBBbmQgYSB2ZXJ5IGZ1bmRhbWVudGFsIHJ1bGUN
CiAgICBvZiBETUEtYnVmIGlzIHRoYXQgdGhlIGV4cG9ydGVyIGlzIHRoZSBvbmUgaW4gY29udHJv
bCBvZiB0aGluZ3MuPGJyPg0KICAgIDxicj4NCiAgICBTbyBmb3IgZXhhbXBsZSBpdCBpcyBpbGxl
Z2FsIGZvciBhbiBpbXBvcnRlciB0byBzZXR1cCBDUFUgbWFwcGluZ3MNCiAgICB0byBhIGJ1ZmZl
ci4gVGhhdCdzIHdoeSB3ZSBoYXZlIGRtYV9idWZfbW1hcCgpIHdoaWNoIHJlZGlyZWN0cw0KICAg
IG1tYXAoKSByZXF1ZXN0cyBmcm9tIHRoZSBpbXBvcnRlciB0byB0aGUgZXhwb3J0ZXIuPGJyPg0K
ICAgIDxicj4NCiAgICBJbiB5b3VyIHVzZSBjYXNlIGhlcmUgdGhlIGltcG9ydGVyIHdhbnRzIHRv
IGJlIGluIGNvbnRyb2wgYW5kIGRvDQogICAgdGhpbmdzIGxpa2UgYm90aCBDUFUgYXMgd2VsbCBh
cyBETUEgbWFwcGluZ3MuPGJyPg0KICAgIDxicj4NCiAgICBBcyBmYXIgYXMgSSBjYW4gc2VlIHRo
YXQgaXMgcmVhbGx5IG5vdCBhbiB1c2UgY2FzZSB3aGljaCBmaXRzDQogICAgRE1BLWJ1ZiBpbiBh
bnkgd2F5Ljxicj4NCiAgICA8YnI+DQogICAgPHNwYW4gc3R5bGU9IndoaXRlLXNwYWNlOiBwcmUt
d3JhcCI+DQo8L3NwYW4+DQogICAgPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgY2l0ZT0ibWlkOjIw
MjUwMTE1MTMzODIxLkdPNTU1NkBudmlkaWEuY29tIj4NCiAgICAgIDxibG9ja3F1b3RlIHR5cGU9
ImNpdGUiPg0KICAgICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPlRoYXQg
c291bmRzIG1vcmUgc29tZXRoaW5nIGZvciB0aGUgVEVFIGRyaXZlciBpbnN0ZWFkIG9mIGFueXRo
aW5nIERNQS1idWYNCnNob3VsZCBiZSBkZWFsaW5nIHdpdGguDQo8L3ByZT4NCiAgICAgIDwvYmxv
Y2txdW90ZT4NCiAgICAgIDxwcmUgY2xhc3M9Im1vei1xdW90ZS1wcmUiIHdyYXA9IiI+DQpIYXMg
bm90aGluZyB0byBkbyB3aXRoIFRFRS48L3ByZT4NCiAgICA8L2Jsb2NrcXVvdGU+DQogICAgPGJy
Pg0KICAgIFdoeT88YnI+DQogICAgPGJyPg0KICAgIFJlZ2FyZHMsPGJyPg0KICAgIENocmlzdGlh
bi48YnI+DQogICAgPGJyPg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDoy
MDI1MDExNTEzMzgyMS5HTzU1NTZAbnZpZGlhLmNvbSI+DQogICAgICA8cHJlIGNsYXNzPSJtb3ot
cXVvdGUtcHJlIiB3cmFwPSIiPg0KDQpKYXNvbg0KPC9wcmU+DQogICAgPC9ibG9ja3F1b3RlPg0K
ICAgIDxicj4NCiAgPC9ib2R5Pg0KPC9odG1sPg0K

--------------Avi86ny3nb5z5eKoNn0oqdnl--

--===============1829378639680595744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1829378639680595744==--
