Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA98ACCAA9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 17:55:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BCCF1450AB
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 15:55:42 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2074.outbound.protection.outlook.com [40.107.101.74])
	by lists.linaro.org (Postfix) with ESMTPS id 091F7443E4
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Jun 2025 15:55:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=BOgOnPjd;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.101.74 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AFLd7ZpknsVQOYfl4tX+ognWG51EIh6WJ7KD2Adp3NIq2DaSj7z/giN3bU1DfuqPskOrxATRdtbgz7GwRheoTislh7KhQGQk/A8Y41JiUnNGwnhaPbgeu4kuCapq/UDpGVFbwJ0DX/Oe9eK89uQw8RqntHKcQBoR1/esf0vVUvYlYcx7oOiEkyxP3Ie8kmSYMSrW7sU5k2aBsVkmMw4601cl7GLhjMVkni+rbK172OZvaJsI3ZjSwzmp1TiL8SPStrXj2EW9x27oI1JnUUBcTvykOOmK1L3cua0BLbQBYbTQUkTKdFeQD6HktrlK9wSuXjHGRli89W9wjciORyfBmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NhN6OtR2DNkChZ4eUPzc0cWptaMdyaPqDpYFDNhkZY8=;
 b=zN52+M/cWcw/LBYM/h46RxkHiA1z3W6wSkMm8HqqoW9AnfygEVhp8pF9EcEbAshISLObDxBcZUXCtJun+L98A8Jv8LKiozyLM94Fy0uXDWOqJpoHNdFd2Z4pylAn/BpIVPBHoLCSxmlAr+LNvQauFzZXLetH/SzdnHoiEvGXXY5BsosnqtSQtcqU6lRXPYZc6/uurMfRmQLq9Ds20gIxu8ppYEF/geOcLgez3vPP03JVBeWDTUjXR+Gr84wc97lo6UrVSsEEBHNHCfk3puT99NGv8yLOfIGv83FWWcT1UbtZVuH7w+2PPZtZVby/4WcwqCXXxmvHUWnOlYpKtmBupg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhN6OtR2DNkChZ4eUPzc0cWptaMdyaPqDpYFDNhkZY8=;
 b=BOgOnPjdUZbB5N/isifqnNUJqdKCH3ymyewceKt+fG8ycdfANF6UKOd6u8c0n7GFtjqKpbbjMVvD1a1Lr1qIf4KMXSsh7MobeXFO/caUnWtL1MRnVT0FpPqYxvj7eXldXLDUN2ZdbD9fvS9VTKlNpK1KuoxsrvTH//EkKUszrRk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4406.namprd12.prod.outlook.com (2603:10b6:208:268::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.33; Tue, 3 Jun
 2025 15:55:26 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.031; Tue, 3 Jun 2025
 15:55:26 +0000
Message-ID: <d1937343-5fc3-4450-b31a-d45b6f5cfc16@amd.com>
Date: Tue, 3 Jun 2025 17:55:18 +0200
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
 <aD72alIxu718uri4@infradead.org>
 <924ac01f-b86b-4a03-b563-878fa7736712@amd.com>
 <aD8Gi9ShWDEYqWjB@infradead.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aD8Gi9ShWDEYqWjB@infradead.org>
X-ClientProxiedBy: BL1P223CA0008.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4406:EE_
X-MS-Office365-Filtering-Correlation-Id: b9f79322-bfe4-4a53-e8b6-08dda2b70e6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aW9lUmpWMk9LQWVqZVdpK0QzSWFPQ1BXNGJVN0hERWo2NkRES3R5TUJFRnFs?=
 =?utf-8?B?NXhJK2VHWHlOY1R3M0FkMStLVVgrZjJjU3E5bmJJZ3hmNnBhZ3N0ZGIxZWxN?=
 =?utf-8?B?WGpqRnZTVDROaXBLUVphZFBEMkRQSUR3YTVKRWMzbWdKUW5oR3MvMDBHdktD?=
 =?utf-8?B?M1ArcVBQUCtRSktFL05FdlFLbjhJZWdHSVZDa3dETFVjb3l3WkYyVFZrZ0JU?=
 =?utf-8?B?dXpRWGhtYVBNdTJFMTZrYTQvWlpidGNEMTBGYXB2SmsrUGtyVm9TZUQwZ1Z0?=
 =?utf-8?B?bUFiMmhLaklLUWh1YUg0MjdGM0R2azdDeld3bEtWcld4dWRFNGIwM292c0Mr?=
 =?utf-8?B?WjFsZWxUdHMxZWhJZDZKekp3RHhJVVc3aUFpdTlWYjd6aHBJLzhNc2Z4Qzgr?=
 =?utf-8?B?S1RtRzExRjFoak90K0hEN0FHNXJzbTEzRWhId29qNnVRU09nNFo0MGlETFYw?=
 =?utf-8?B?R2NCM05CZHdIVnFvVEI1alFKdWZ0WDBPUkVKZEdrMm5mU3IzMmFLQTdVOGVI?=
 =?utf-8?B?OU5XbXVRYjJrMFd1a3ZHeVBrMnBydys0cjRCNmd3ekhNdWJLQ2F6eW1GSHp0?=
 =?utf-8?B?VTVHWXRjQ1AvMCtWUy9SWElDYmkrVE0wUW5FUzl5Ly9LenRoTG1WV0tRclo4?=
 =?utf-8?B?VkY0MElxSHNjK0xha2ZsSmdUNGdyWHI2UDFHOFR2em5uMmxTL0E5dmVJR01U?=
 =?utf-8?B?RVZZRTBybFZYZ0FSVG1ueWVLTDBOUGpLZ3BQQXNVOUI5WkY1akJPTVNnUncx?=
 =?utf-8?B?WUdQRzIvSXdpaTlIdWNCM3o5S2N3ZFlUdGMxRjk3WTZReStWMTBveGR2aE11?=
 =?utf-8?B?ZCswdTdBWFU3elZ2UERFVjlnOUtsR1FLVkNFa3F4dyswK0JjMDdGcWYzY0JT?=
 =?utf-8?B?L0trdmtQNWdtYlg2V3c0VVRlMWpnRmJnbk0zY1hyL3BhUTd3K0pXY21JSDJJ?=
 =?utf-8?B?MDhTS3RucHl1S2l1YW1UNFUxOHptd0o5YzlyVTZsSkJlWW9pbmtMcTl5QTRw?=
 =?utf-8?B?b3RNYkgvTlhCdmlSRzVGS0tmMzZzWklDQTVyclF5Mjl4ZnJhaE4ybklveHRS?=
 =?utf-8?B?cmhFeCtob213ZmhXcFFaaDFHN2ZrWFIvakNwRkVKcU1VLzl5T3g0dHBkNHJl?=
 =?utf-8?B?aERFT0Y4VU1EODlRVlBjeEpMaEdhdzdjQml1WW9PckZwYjNYWUlWblc1MFhH?=
 =?utf-8?B?dzBvaE50bkZPMnpXT2UyM0RUK0NXY055TEFnQzM1QzhVTXlHSjN4dFphOXNH?=
 =?utf-8?B?b2s3bmxyRERmamV2TGsxVE1ITE9raXBUQmpvbCs4WjRMc2dQUUJqWUhUNnll?=
 =?utf-8?B?aG5TOWtEYzBoTTNFeXYyUmRpUWlRbTQrVjFhQjFBZlRXNlhybHcybENSUXVL?=
 =?utf-8?B?T2xuL1JDZmJqeW5zTjN2V0QxQnlmNkZjNUNnbnRwZk90b3RNWVBOR0J5Q3VB?=
 =?utf-8?B?aG9NR084S1ByVU5rbEsvNDRXY0c4TzVKTkMyMHh1ZVhLUVZsdkpZREJXeVhY?=
 =?utf-8?B?amM5N3F3a29xY2xhRzJ0UlIxL25MamVDTFJ1V1djNWIvaGl1Q0F5OU4yVjRw?=
 =?utf-8?B?QzNqVDlONWhrRHJ1eS9GRGlqenRJbEJ6RnJ0SkJ3TWVCMkxHUkZjZkRadTk5?=
 =?utf-8?B?NHMyNlpUQUNWL3ZQOFFhYmtYU3Qydk5xa3JkcWRIWDhxYXlzNStFekk4YXFs?=
 =?utf-8?B?eU13SFNCaXZqZy9tZlJlSHk1RjNJaDFSM2ZwUWtHcWpWbDRpaVhCbi9VNUhm?=
 =?utf-8?B?TjNYQlM5SStGcVhDNFlzWU9ROGorSGtNc0VaSGc4VVhxUGx1TExqUWhnMlpk?=
 =?utf-8?B?TUhiRUJ3WEQ4K1V3V1Fya0RPcU13MmJHZGljRmVySGw4RXBCMVNxTEJUMUdj?=
 =?utf-8?B?K0ZKRXBlbkpuSmU2eHo0cFoySTNjY2V3WGNMbkNxZENDUG5XZENndWh1ZE11?=
 =?utf-8?Q?XE3tZgrUPL8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dnZjdzdCVmdwSTRYNkg4emVRTFJQYkM3SE03emJMVkdocElxSlZzTjVnU2lv?=
 =?utf-8?B?Szh4dlFyRURMbGRvZnZHOTN2S1V3NVBZd29EcVFpYkRVWFRRNk5LampQTDM5?=
 =?utf-8?B?WE5RaWxVS0NNM3NMWWRVRFFoU004aHl0VzdNdm9CKzlKNUh1VEwybWtmdU1q?=
 =?utf-8?B?SlZ6L2tuZ2I0SGdqSTJUYVpYbGlEd0ZGSHlQMTJTanlsTWhVM1NpTHA5TGVa?=
 =?utf-8?B?UWY2cXJyUHRzQkpJeWNrRU5RMzJIV1pBR0o4MXhGRHdvZXVyRmc2SHY1anFk?=
 =?utf-8?B?SnRpOXpOclRueHUxTExndTNZNEN2c2FnRXFXVHcvWlBUeFhMR21XMnkzbk45?=
 =?utf-8?B?VXhpU0d5YVI0NUFXd0YrMU9UTXlXVmhYUUxOQkRIeCs5WkUzVllyTUltMjQ2?=
 =?utf-8?B?bVhxb2VpRUx2MUZNZTBjWEFkUmE3Z1o3d0J3cm9TeE5XUG9JNWZqTHV5MEtk?=
 =?utf-8?B?MkpWSnBxRVJ6L1cxKzM5SzR1dHlPNWcyczZuM2VzdTFIWHR5UmpJS1U1Q0hL?=
 =?utf-8?B?b08wMUMxZFRic083NnlPU0xkZHJrRy90cGtlcHBXQXBzcVUyRVl1MTRnNkdi?=
 =?utf-8?B?VlRyYWwxMHJKVUV5bkdZV05EcE9xbUxKTlNUL3k3OHNNV3hGUDVrcGtMeDE5?=
 =?utf-8?B?TWxVU2ZlWFVoc2YxSEpuWkZEZUx4U0MzQVRLTTRpckJ6cmdsUWV3RGJMNVZl?=
 =?utf-8?B?UldQTVRXTGJzUDd5R1BybTducW1EMVU4SUxSL2kyK0Vqc0xnSmlSc3FEeklJ?=
 =?utf-8?B?OENBalBySHF6Wk9NWUgrbENmZ3JEOTBPZFhZejBrLzFMWFFyUU8xOWxxMERv?=
 =?utf-8?B?VVFHZ0RGYTlJMXhLdG9Jb2xra2ZWQWhKUHRvT0JtRUd4VzgvOXI0N01YZzBI?=
 =?utf-8?B?aVQxSU04Mi9heEFyeE1sdTVQbVZ0d1lWVHJqWmZxUG1Dd0JmNVhRMlZ2eitx?=
 =?utf-8?B?eUZ0b2ZJWGJOOFh2Y09rUHE3Mk9uWUttNW1qWDBTMzdZeEhyRzJydnE5WUFB?=
 =?utf-8?B?TVNpRGFtalJXQkx1ZmR0TkM3TjhGcjN6d29ubmgyNzRPam55RFZlTjNYQnAy?=
 =?utf-8?B?amlxajV6YTRvTDIwMG1vV25LUVRFOVBwTExkN0pQRHQ5Y3pKWmRhcEZ4VExp?=
 =?utf-8?B?ekFqd3VoNmZTWVVOblZ6ZEVOVkNTcFFWazV3V05jSm5FVDhBVW9TRmkwSFNL?=
 =?utf-8?B?bUt4aUUxNDlRWG9WNllNclBLNFBSNVl5RE1lWjBZSXl2Q3haT0tvTW5RWDls?=
 =?utf-8?B?cHJ5c1gxamJEQk40THFYSC9JeGtYeTRyWkZRdlFscWJzUlk4UWFENUJWZEZx?=
 =?utf-8?B?czZWQ3lZdm5RazFReThtL1g2OWlROGp2aFJyNnR1cnVSRm1qUkU3MzBBTmt0?=
 =?utf-8?B?b1dEbUxUL21zSGxsN2ZtNnBNWGNwd2V4dXhlK1ArYTh5dEoxY29wdy8xcWpo?=
 =?utf-8?B?T0dhZGxRUWJkUXE4WVhyakhNQS9OeE13VkNOa1A4Z0g3V0p1OGNEVG5TU084?=
 =?utf-8?B?cFVMM0sxUTM1YWE1VnZCTVhBcDVmMklxZHpJZ1RnODhoYjM0VzBKdFBWb0x4?=
 =?utf-8?B?ZjlRUEU5VEMzMWtIQ2VUUDltVXhmM1dDcExSR3NxaUFWWi9TWnk0eHpUeEZv?=
 =?utf-8?B?b015aGhDRk8zdUZQbk5UVG5USVgzSDBLWlBtODcwYnowTHRPMmZKcEtBTGtp?=
 =?utf-8?B?R2hxRmNwWVN5cjZ5QTA1eFFpTElMcVJZWlZkMTJGL3FwUmEzK1VPZWdwZ0xo?=
 =?utf-8?B?c0d3Qm9jc3dxWTNmclZQRFZIV0xLb0ZxalNYL3BabURKcGpwVW9mUWV2SUwr?=
 =?utf-8?B?bGZpaXc2dWlMY1FJNDJNejJOcnpBdEVpaVIwcFFQRUt1eGFwMjdaSUY3Ni9K?=
 =?utf-8?B?SThUeFBBNjcrMUl5ZUR1REVZUDFvWHlnN2xEZmdEWDJXcVhBOXZsVEJiOFdV?=
 =?utf-8?B?aXRmeCtpbm9YNFZpVjVqZjRTWkJ3dDRaWE9BVDQvR09rN0JJMm80VW5LNy9E?=
 =?utf-8?B?TDAxUVNHdXQ0ZlQ3cWtvdk9YV2pQUDd5Y0VtVEphK0dWV3hyS1p4VjE5VDly?=
 =?utf-8?B?V01zUENhd1UweU9uemxCTXA1bWdEQVdMbGQyUnhJVUZuREpYVmdmbmtrcFZ1?=
 =?utf-8?Q?x7stdCFXvanN8Nj27UMyNFubU?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9f79322-bfe4-4a53-e8b6-08dda2b70e6e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 15:55:26.2941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 03/WtGQEDuoBjhlEc7sz18vTVCp82IvYY4QrdQrBjk657IEKpTT6ef2pcW5kstwp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4406
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.101.74:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[honor.com,linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[40.107.101.74:from,2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 091F7443E4
X-Spamd-Bar: --------
Message-ID-Hash: 4RDZQZAWCI4RNRDLDS6DPJJEV2GXTFQK
X-Message-ID-Hash: 4RDZQZAWCI4RNRDLDS6DPJJEV2GXTFQK
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: wangtao <tao.wangtao@honor.com>, sumit.semwal@linaro.org, kraxel@redhat.com, vivek.kasireddy@intel.com, viro@zeniv.linux.org.uk, brauner@kernel.org, hughd@google.com, akpm@linux-foundation.org, amir73il@gmail.com, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, jack@suse.cz, baolin.wang@linux.alibaba.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, bintian.wang@honor.com, yipengxiang@honor.com, liulu.liu@honor.com, feng.han@honor.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4RDZQZAWCI4RNRDLDS6DPJJEV2GXTFQK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi8zLzI1IDE2OjI4LCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToNCj4gT24gVHVlLCBKdW4g
MDMsIDIwMjUgYXQgMDQ6MTg6MjJQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+
PiBEb2VzIGl0IG1hdHRlciBjb21wYXJlZCB0byB0aGUgSS9PIGluIHRoaXMgY2FzZT8NCj4+DQo+
PiBJdCB1bmZvcnR1bmF0ZWx5IGRvZXMsIHNlZSB0aGUgbnVtYmVycyBvbiBwYXRjaCAzIGFuZCA0
Lg0KPiANCj4gVGhhdCdzIGtpbmRhIHdlaXJkLiAgV2h5IGRvZXMgdGhlIHBhZ2UgdGFibGUgbG9v
a3VwIHRhZ2Ugc28gbXVjaA0KPiB0aW1lIGNvbXBhcmVkIHRvIG5vcm1hbCBJL08/DQoNCkkgaGF2
ZSBhYnNvbHV0ZWx5IG5vIGlkZWEuIEl0J3MgcmF0aGVyIHN1cnByaXNpbmcgZm9yIG1lIGFzIHdl
bGwuDQoNClRoZSB1c2VyIHNlZW1zIHRvIGhhdmUgYSByYXRoZXIgc2xvdyBDUFUgcGFpcmVkIHdp
dGggZmFzdCBJL08sIGJ1dCBpdCBzdGlsbCBsb29rcyByYXRoZXIgZmlzaHkgdG8gbWUuDQoNCkFk
ZGl0aW9uYWwgdG8gdGhhdCBhbGxvY2F0aW5nIG1lbW9yeSB0aHJvdWdoIG1lbWZkX2NyZWF0ZSgp
IGlzICptdWNoKiBzbG93ZXIgb24gdGhhdCBib3ggdGhhbiB0aHJvdWdoIGRtYS1idWYtaGVhcHMg
KHdoaWNoIGJhc2ljYWxseSBqdXN0IHVzZXMgR0ZQIGFuZCBhbiBhcnJheSkuDQoNCldlIGhhdmUg
c2VlbiBzb21ldGhpbmcgc2ltaWxhciB3aXRoIGN1c3RvbWVycyBzeXN0ZW1zIHdoaWNoIHdlIGNv
dWxkbid0IGV4cGxhaW4gc28gZmFyLg0KDQo+PiBNeSBxdWVzdGlvbiBpcyByYXRoZXIgaWYgaXQn
cyBvayB0byBjYWxsIGZfb3AtPndyaXRlX2l0ZXIoKSBhbmQgDQo+PiBmX29wLT5yZWFkX2l0ZXIo
KSB3aXRoIHBhZ2VzIGFsbG9jYXRlZCBieSBhbGxvY19wYWdlcygpLCBlLmcuDQo+PiB3aGVyZSBk
cml2ZXJzIHBvdGVudGlhbGx5IGlnbm9yZSB0aGUgcGFnZSBjb3VudCBhbmQganVzdCByZS11c2Ug
cGFnZXMNCj4+IGFzIHRoZXkgbGlrZT8NCj4gDQo+IHJlYWRfaXRlciBhbmQgd3JpdGVfaXRlciB3
aXRoIElURVJfQlZFQyBqdXN0IHVzZSB0aGUgcGFnZXMgYXMgc291cmNlDQo+IGFuZCBkZXN0aW5h
dGlvbiBvZiB0aGUgSS9PLiAgVGhleSBtdXN0IG5vdCB0b3VjaCB0aGUgcmVmY291bnRzIG9yDQo+
IGRvIGFueXRoaW5nIGZhbmN5IHdpdGggdGhlbS4gIFZhcmlvdXMgcGxhY2VzIGluIHRoZSBrZXJu
ZWwgcmVseSBvbg0KPiB0aGF0Lg0KDQpQZXJmZWN0LCB0aGFua3MgZm9yIHRoYXQgaW5mby4NCg0K
UmVnYXJkcywNCkNocmlzdGlhbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
