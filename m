Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C13CBE69E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 15:53:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18946400CE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 14:53:38 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010065.outbound.protection.outlook.com [52.101.56.65])
	by lists.linaro.org (Postfix) with ESMTPS id 96D8F3F828
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 14:53:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="4H6uAf/k";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.56.65 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LgA8R3w/CvYNRqqKje1YEFtCj0YkKNeoiDtH1NS15Qiw5BBpGrViT8aqrcIrYMvL9VoCqKkOQfx+uXt75Wm1EIYQCNik7nNcFxAWsDMf2CmJ2tA11SXPglt4THjctrxJ4miqQQ5MsgrpehH7dOzPY6qa/HVrbqNkgEAyHdXA0EAgVOuo0onmeRwjl54PnLRa0pKvYV9BtFn3V7ucLCZIx9R9fcf60eThCSbIvyy1AYFPLlvNbtP0y8jrJ5XJD5N2VB0ZBaxQkyZ3Zn9uUwxok/5ohiUpCk3VD4AEYC+Has4GoHTcZKA79cSjnDkh+hLBPD6ciyxVQWHwiQumu53LlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RdB52pyoPq/3Wb+HhU53o5j1Jn0YeXrhx9opuyMe7Jk=;
 b=VV7w6IRql6RHrxJrP+1iY1VVGsCubszt1L1fD+LXg4e6UsS7KDEyYKlnl650j3ZXOd5d8AX5u8JXrRIc2x3pU/ivHyktw/b7dBvOx8HHEk7V2VhldSTjtjxsX2QhQUoOPCovZVtlJL0l2JFPdXk6H69OWfr6ozOq9H87sPCeN2LH99U/UbSJh+fytoBtJxNUrDp7aW3UxysPGWoT3qI/qLy2pYH/4bIa4/pEIbpB0M1v66Ms27+7qzLi7tJWvtL+YI8UQwfEMICXCNYQnZ6wHRAiaylg57SnqArhAyB7vKfpbUznA+D1tnqjPXDkTy0I55ot5TPQOrLFmB5Hnzu69A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdB52pyoPq/3Wb+HhU53o5j1Jn0YeXrhx9opuyMe7Jk=;
 b=4H6uAf/kKP9sLeFJT4mgPbI1vfOHg+TniO2tRKbkzxcNN4+wZSo7pwyCZqff0KZYVX0dDUnaYa3vpCm6J4Uc7sdchfcvgpyrby3g2hQwV4rI2GPIak+Ao/JhoeSa5iIso5Xg6WHb8nOL8X5J1Noh1f2ScLe7prxUYWeaVYjlKU4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN0PR12MB6053.namprd12.prod.outlook.com (2603:10b6:208:3cf::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 14:53:27 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 14:53:27 +0000
Message-ID: <ef52d9e9-6abe-421a-98f8-f96353652e1e@amd.com>
Date: Mon, 15 Dec 2025 15:53:22 +0100
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@redhat.com>
References: <20251211193106.755485-2-echanude@redhat.com>
 <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
 <07cdcce2-7724-4fe9-8032-258f6161e71d@amd.com>
 <20251215-garnet-cheetah-of-adventure-ca6fdc@penduick>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251215-garnet-cheetah-of-adventure-ca6fdc@penduick>
X-ClientProxiedBy: YT4PR01CA0236.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:eb::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN0PR12MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: 2739a10d-c8bb-41dd-87d0-08de3be9b44e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bGdlY2lpRHdSRndqRGQwajBBZmFFZkg4UHZKajRDSnRTZ21xMmhUR2MvMzhV?=
 =?utf-8?B?OVNoWXRRTEdXNXUvOXcvaU9RMDlnaTU5RVMyZ0pPTklsSnFMSWIzaG5VZy90?=
 =?utf-8?B?RDlUakNvV2djWEJpRnJqRmwwc1FTNkw5RVpZMHhPK0xrZzNsUWZaWlg5ZEFX?=
 =?utf-8?B?MkJ5cWZuallyR05HbmhKY2RtV1ZtYVYyMzJvTUNXSzVQYTFvVWIrVEprUHA2?=
 =?utf-8?B?MUI4VjdlM3cvUG9ySzg0WVRCWmtyZHR4NFF2QlV6cFdBUlJjWXY2QnlUOFRi?=
 =?utf-8?B?SXlpb3VwaDZOenU4eFRpZnRQTVQyU0RoVVVTM3piYXN1YlB2aFZ0N20xeFM1?=
 =?utf-8?B?L3NhMDlkZWFGdWNFZHpITG5mUTBlR0dkQXNEb1cxS1J5bml0Y2QzV1U2cVJt?=
 =?utf-8?B?WkNOTWxUSVhIYW9mdUsvazAzbTZaOHU3UUpPdjRub2Y3bENrMk9abktvOVRm?=
 =?utf-8?B?VE16YWRiaWNWeS9NSUp3R2dNYTlCVFlENlI4c2xYSHBKdkxVYTBDODdHWGYv?=
 =?utf-8?B?NyttTG1LK0JaTG8wYmliQzZvTWh3YmNjQ21JbEtsMVd6ZXJsR1ptSzNBdjU1?=
 =?utf-8?B?bVhSUmg5UGNHU2Z2WEFXdFA2Q25ERi9iSnE5YUpnNjRIOFR6cG9TWk5rNGdC?=
 =?utf-8?B?ZVJjYUhpUzV2eW5tN0FVNXp4Y3o1aFR3dW0ycWJEZGtKRDRhU1dzSkl3Q0U4?=
 =?utf-8?B?RmhpWWFUOCs5QWNtZXBFS1dNNi9TOTRqRkduNnRXdUwzQzUvMlFqT1dpQ1ZG?=
 =?utf-8?B?SlB5WmcvdklHcWMweFdmUmlBRW9yK0dpL080b08rWndGd3laTWkxYU42QUxj?=
 =?utf-8?B?S25McXAra0oyRHloOWhXREwwRFA1YXhobi9OUVQ4MHhuVHIrOUNFMmwxZmNx?=
 =?utf-8?B?NmdmQzBwanhSN1BmV2Evdlo5VEhMcTl0U09odE84RXljT25wL1lJdlZFVElG?=
 =?utf-8?B?U1lxM0Mwa3k2VHNsVm5jQklzMkYzb3kydlM3MUEvOXcvNFRnZVhRUnV6bEdm?=
 =?utf-8?B?alRicU9ENURWdmJON0NHeVNNeElRSlc4V1E4WUlwdXAyWnFYdW13K1F6b00w?=
 =?utf-8?B?dHlIL3BsblZ5NitxcEUvOGV2eTVxTGxndWxFZkphQ29oVkdxbGJscDlDbVA1?=
 =?utf-8?B?Y3d0Smo4VWdOYVdibVFFSGtMdSsrVFRYMVFkaEp6SXJNSzN0bG5WUEExQ1Rr?=
 =?utf-8?B?MG5FOVVjcXRTaUgxQjF3aE55emRXRHVkaW0vdFo3aEJGUWhENG5ianJ2ZHhx?=
 =?utf-8?B?R1FDMld2cmJzd29aRVlHbXplRTJEalp0UENOZmlIR2VlN3lCdkFxb045eFBo?=
 =?utf-8?B?Y3J1ZjA5OWRPOTNVQm4wbmlWcitzWnZyeEFQSWsyejQ1RFp1dUdPUEtWQjhR?=
 =?utf-8?B?ZDVPcHo4VVRrRXVLcEZNLytScU1pMUJhZkhKbW9sV2NoM3BrcnlvUEdXN1JZ?=
 =?utf-8?B?VFF3cjlRMGg1UlhBUGM1OUZGUzJKOXQwMkk1d1VpV3JhbTNrV1p4a1BwMDJP?=
 =?utf-8?B?K1VPWTUzZENPbmNPTlpJdVc2YWVyTlZJTmZ2VTBVVUI3eWgrdGx2bkxNMGVX?=
 =?utf-8?B?MHNrdUdBUlZoOEhuckhISU13WDcrN3lrR0QrWGhTa1pRVVRoRXUyTUg3UG0y?=
 =?utf-8?B?UEQza3g3Zm44dGI3YXE2NDdOL2FkbE1hYjlINkI3RzU4U2tBSi9WMmZ5Wm9h?=
 =?utf-8?B?VlhYdC9iczRKcGVBTkhVTFA0NE1Pbk5FQnJIZEpnSm5IdDhabzczZ25mVWRV?=
 =?utf-8?B?MTZuQWp3TVhFV0hWV1dVeTdQYjRkOTVNSzE2MGhGQzhvaisvZ3lXQ28rOTZi?=
 =?utf-8?B?Z3VIZzVPVUZWNUZPa3BxMGE4SjAzRnRKaXo0U3o1aTkvNmZrZFVqaW1IU1hK?=
 =?utf-8?B?aEFzRHJkeEJ4SDErdENCcXZxazlxWXZHVXFrK1pXN0Vrdjdxakt0Vk5LWTNu?=
 =?utf-8?Q?hLhhrYqe0XymonzaEE/sXQhYpCimrp2j?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a1lJQlFrN2t5a2JRQkErRks2NW4wZHdwM1diajZHQmxscVlJNXMzVVJjNUg4?=
 =?utf-8?B?SFlwNlhhUkpYaDBTOVZLb1VSZG5ERkMvcWpRN1hONExBdWFNNUdnb0dJSk9R?=
 =?utf-8?B?VWUvWk9BYUY1MXpKakx0NkdpcTQ4c08wTjNpTzBtVWFSdzI4QTUzVHhobWhC?=
 =?utf-8?B?cVpEUTF4eTh2U3lpd1F0VndhOFVjRmlQYXFmOXROYzJLSzdvZjd1RHdoOE9W?=
 =?utf-8?B?UndXeWdGRjlveWNOVjF3WmhXVWRKR1ZxcnUzSXI4N3RCMXFhWk1QV09objVC?=
 =?utf-8?B?VXV6UzVHaXI4QklaamduWVdhaDdKNEd3aC9Za0NMTEZWWVI3cVFSQWlYWnFr?=
 =?utf-8?B?V0FzNTArM2dkM21zckN2U1N6eW5FZjhRNG9Wbmh4R1RnbjhaQUk1WGFQWmk4?=
 =?utf-8?B?VDg2Q2JvWEQ2WXZBSDRMdTQ5TkJoMDhhYTV1Q2tBcDVKVzV1Njg3QXg5YWdr?=
 =?utf-8?B?QmRDcXZTZ0IrMjJ6Um5EZ25RTlU0dEdkbTRjRjdaQ0xPcHBUMWFucWo1ZDZn?=
 =?utf-8?B?d0dyajd5YzJrVjJJRDRlenRiUnFlV09DelpGT1JEaEZEYXdzbU50MThiRWw5?=
 =?utf-8?B?WjFFOUpXQmo4N2Q4QUZoWS9hbnFUVEd6Rmg4N2pSNldyY08ya1BuODJOczdK?=
 =?utf-8?B?Y1lrYjJnZlZYYXdXamFidTdlRHRqWjA5VUFlN08yNE5qUllTNUM1enBTS2xI?=
 =?utf-8?B?SUdEZFBJcTZBRDJpNEo3YmhXaWY4ZnQ4UmJDeWlLTzNjSnFKVTN5d0FrS2dO?=
 =?utf-8?B?WEdJRzRKTmVXWW43ODNPNWdYdkV5TmJCendTS3lweGx6NUxydjAvUkkyRGhr?=
 =?utf-8?B?UndQamQ3dWZQQ3RKR2NENUJIcXM3K2ZoMFVRRWlNbk1tcnhDSnpTUmh1TEpr?=
 =?utf-8?B?MjF5T3BBdXhXVE5rbkN2ZFc0SkRIb3lxTFJTSjh1WnRJaHlZZFVpYVBMay9w?=
 =?utf-8?B?bkx0NFNUMmJlY1JSZ0pWQnBScjdWYndRS1RpZkJUK0JuODhGL0F2K3Fid1FL?=
 =?utf-8?B?bHRiQWUyT1p2NmJYR2JpaWhHRDJ3amNTQ0t2VVk3S3YyOERLbHlrVUhzdGNm?=
 =?utf-8?B?eGZMeW1XTTIrVUM2aXk1QlQ3L25RSmsvekF5NGZWcWNsdHZCMzdjbFdKeTJ4?=
 =?utf-8?B?MGVxZXN1dFUzeUpETmdTUEVHVDBmR1AvOUdUVjlIZmx6aWp3WGErMlNtRTJ0?=
 =?utf-8?B?Kyt2Nlk5WGNyM2huenJ2ekNYby8wN3VBbm83MERCK3dUNUoybTY0TUtWdE1y?=
 =?utf-8?B?Wnd5T0tpN2R1UElQaC9XcVFxcHFZZzBZY0VqL04rZDBJSWwyOUNVOW9WRU13?=
 =?utf-8?B?M2ExVW1xd2pqN2NicDBrMGtIekdGWlIza2I1NCtJNlFqdmEwSmkybit1VDNG?=
 =?utf-8?B?TEdleWdaTG5RZ3hzL1dEYk5tNVl3LzZOUVFkSktNOFcxaHplcjM0R0lBZlZT?=
 =?utf-8?B?eVBjbHBPRFl5R0JWNXJTVGp1c3FxdENEckVMS2RMS0lXTUdkczJZOGtISXIz?=
 =?utf-8?B?QkNNYWlHWkhRTGdNOVoxY1ZML2VITWtDSHBrZ0s3bGFudS92amVPbjU1VGxq?=
 =?utf-8?B?dTZyY0VsNmFmMkN3L1MwbmhLYXhEQkZuQllTR1g4QzFXS1FFK0pBUGRTUjEy?=
 =?utf-8?B?NzByNjRXSnZNWkhZZzdneVBRWEtucTVlL2JtcUVlN3dxd0RWVVFYMFpDK09Z?=
 =?utf-8?B?bkZaSTAxR2E4cGVDLzl4eXQ5Qld6ZjdOVzNSYWJZVWU4L2xPdzZrcUdDc3Rq?=
 =?utf-8?B?Q0xJcUtRUlJyRkU4bk41azNoSXVWdGlPbTFxZ1AyWjdYeXpLWDRaekpRTkhj?=
 =?utf-8?B?M2NkNGtma0hoam9mZmhnd3pvNjJscjZmRGgycGxtOVlYbDBQZkk1N2dld3JR?=
 =?utf-8?B?N2tFMlhaZUxic1l1Vm9KeEMzWVhrZHJSMjVldFlVc3ZuVFBmZTMybVRlZExQ?=
 =?utf-8?B?WVR5U3NHRTZ4dWVqcHd5TW5qdUd4anVtSmc5NjVmVUNocERtU01sWUdLbFNk?=
 =?utf-8?B?YzFPRlZQRzBzdjNhYnBqR2JwSUc0ZFNuVDNjdGxieGVYa2ZpVTNXMWxZOVdJ?=
 =?utf-8?B?M242NEl3bjdTSTNjTFhZcXByYkNSNWE3QkdwVi9Lb1FhZU1SZCtkV2xxNkdM?=
 =?utf-8?Q?U9sMRF6dkTHeSKXrTfGrBKl7o?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2739a10d-c8bb-41dd-87d0-08de3be9b44e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 14:53:27.2942
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a9J6nbpwEgJ3XhPONgv8Bt1bRJ5U2MmXoBVYogt7ug4qYXzD+9/ECqORRHRRCBNV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6053
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.56.65:from];
	RCPT_COUNT_TWELVE(0.00)[12];
	BLOCKLISTDE_FAIL(0.00)[52.101.56.65:server fail,2603:10b6:510:13c::22:server fail];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[BN1PR04CU002.outbound.protection.outlook.com:helo];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 96D8F3F828
X-Spamd-Bar: ----
Message-ID-Hash: DYVJCJ34BAFNFDBC2J3IZNEJGN66NE2F
X-Message-ID-Hash: DYVJCJ34BAFNFDBC2J3IZNEJGN66NE2F
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DYVJCJ34BAFNFDBC2J3IZNEJGN66NE2F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTUvMjUgMTQ6NTksIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IE9uIE1vbiwgRGVjIDE1
LCAyMDI1IGF0IDAyOjMwOjQ3UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBP
biAxMi8xNS8yNSAxMTo1MSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4+PiBIaSBUSiwNCj4+Pg0K
Pj4+IE9uIEZyaSwgRGVjIDEyLCAyMDI1IGF0IDA4OjI1OjE5QU0gKzA5MDAsIFQuSi4gTWVyY2ll
ciB3cm90ZToNCj4+Pj4gT24gRnJpLCBEZWMgMTIsIDIwMjUgYXQgNDozMeKAr0FNIEVyaWMgQ2hh
bnVkZXQgPGVjaGFudWRlQHJlZGhhdC5jb20+IHdyb3RlOg0KPj4+Pj4NCj4+Pj4+IFRoZSBzeXN0
ZW0gZG1hLWJ1ZiBoZWFwIGxldHMgdXNlcnNwYWNlIGFsbG9jYXRlIGJ1ZmZlcnMgZnJvbSB0aGUg
cGFnZQ0KPj4+Pj4gYWxsb2NhdG9yLiBIb3dldmVyLCB0aGVzZSBhbGxvY2F0aW9ucyBhcmUgbm90
IGFjY291bnRlZCBmb3IgaW4gbWVtY2csDQo+Pj4+PiBhbGxvd2luZyBwcm9jZXNzZXMgdG8gZXNj
YXBlIGxpbWl0cyB0aGF0IG1heSBiZSBjb25maWd1cmVkLg0KPj4+Pj4NCj4+Pj4+IFBhc3MgdGhl
IF9fR0ZQX0FDQ09VTlQgZm9yIG91ciBhbGxvY2F0aW9ucyB0byBhY2NvdW50IHRoZW0gaW50byBt
ZW1jZy4NCj4+Pj4NCj4+Pj4gV2UgaGFkIGEgZGlzY3Vzc2lvbiBqdXN0IGxhc3QgbmlnaHQgaW4g
dGhlIE1NIHRyYWNrIGF0IExQQyBhYm91dCBob3cNCj4+Pj4gc2hhcmVkIG1lbW9yeSBhY2NvdW50
ZWQgaW4gbWVtY2cgaXMgcHJldHR5IGJyb2tlbi4gV2l0aG91dCBhIHdheSB0bw0KPj4+PiBpZGVu
dGlmeSAoYW5kIHBvc3NpYmx5IHRyYW5zZmVyKSBvd25lcnNoaXAgb2YgYSBzaGFyZWQgYnVmZmVy
LCB0aGlzDQo+Pj4+IG1ha2VzIHRoZSBhY2NvdW50aW5nIG9mIHNoYXJlZCBtZW1vcnksIGFuZCB6
b21iaWUgbWVtY2cgcHJvYmxlbXMNCj4+Pj4gd29yc2UuIDpcDQo+Pj4NCj4+PiBBcmUgdGhlcmUg
bm90ZXMgb3IgYSByZXBvcnQgZnJvbSB0aGF0IGRpc2N1c3Npb24gYW55d2hlcmU/DQo+Pj4NCj4+
PiBUaGUgd2F5IEkgc2VlIGl0LCB0aGUgZG1hLWJ1ZiBoZWFwcyAqdHJpdmlhbCogY2FzZSBpcyBu
b24tZXhpc3RlbnQgYXQNCj4+PiB0aGUgbW9tZW50IGFuZCB0aGF0J3MgZGVmaW5pdGVseSBicm9r
ZW4uIEFueSBhcHBsaWNhdGlvbiBjYW4gYnlwYXNzIGl0cw0KPj4+IGNncm91cHMgbGltaXRzIHRy
aXZpYWxseSwgYW5kIHRoYXQncyBhIHByZXR0eSBiaWcgaG9sZSBpbiB0aGUgc3lzdGVtLg0KPj4N
Cj4+IFdlbGwsIHRoYXQgaXMganVzdCB0aGUgdGlwIG9mIHRoZSBpY2ViZXJnLg0KPj4NCj4+IFBy
ZXR0eSBtdWNoIGFsbCBkcml2ZXIgaW50ZXJmYWNlcyBkb2Vzbid0IGFjY291bnQgdG8gbWVtY2cg
YXQgdGhlDQo+PiBtb21lbnQsIGFsbCB0aGUgd2F5IGZyb20gYWxzYSwgb3ZlciBHUFVzIChib3Ro
IFRUTSBhbmQgU0hNLUdFTSkgdG8NCj4+IFY0TDIuDQo+IA0KPiBZZXMsIEkga25vdywgYW5kIHN0
ZXAgMSBvZiB0aGUgcGxhbiB3ZSBkaXNjdXNzZWQgZWFybGllciB0aGlzIHllYXIgaXMgdG8NCj4g
Zml4IHRoZSBoZWFwcy4NCj4gDQo+Pj4gVGhlIHNoYXJlZCBvd25lcnNoaXAgaXMgaW5kZWVkIGJy
b2tlbiwgYnV0IGl0J3Mgbm90IG1vcmUgb3IgbGVzcyBicm9rZW4NCj4+PiB0aGFuLCBzYXksIG1l
bWZkICsgdWRtYWJ1ZiwgYW5kIEknbSBzdXJlIHBsZW50eSBvZiBvdGhlcnMuDQo+Pj4NCj4+PiBT
byB3ZSByZWFsbHkgaW1wcm92ZSB0aGUgY29tbW9uIGNhc2UsIGJ1dCBvbmx5IG1ha2UgdGhlICJh
ZHZhbmNlZCINCj4+PiBzbGlnaHRseSBtb3JlIGJyb2tlbiB0aGFuIGl0IGFscmVhZHkgaXMuDQo+
Pj4NCj4+PiBXb3VsZCB5b3UgZGlzYWdyZWU/DQo+Pg0KPj4gSSBzdHJvbmdseSBkaXNhZ3JlZS4g
QXMgZmFyIGFzIEkgY2FuIHNlZSB0aGVyZSBpcyBhIGh1Z2UgY2hhbmNlIHdlDQo+PiBicmVhayBl
eGlzdGluZyB1c2UgY2FzZXMgd2l0aCB0aGF0Lg0KPiANCj4gV2hpY2ggb25lcz8gQW5kIHdoYXQg
YWJvdXQgdGhlIG9uZXMgdGhhdCBhcmUgYWxyZWFkeSBicm9rZW4/DQoNCldlbGwgZXZlcnlib2R5
IHRoYXQgZXhwZWN0cyB0aGF0IGRyaXZlciByZXNvdXJjZXMgYXJlICpub3QqIGFjY291bnRlZCB0
byBtZW1jZy4NCg0KPj4gVGhlcmUgaGFzIGJlZW4gc29tZSB3b3JrIG9uIFRUTSBieSBEYXZlIGJ1
dCBJIHN0aWxsIGhhdmVuJ3QgZm91bmQgdGltZQ0KPj4gdG8gd3JhcCBteSBoZWFkIGFyb3VuZCBh
bGwgcG9zc2libGUgc2lkZSBlZmZlY3RzIHN1Y2ggYSBjaGFuZ2UgY2FuDQo+PiBoYXZlLg0KPj4N
Cj4+IFRoZSBmdW5kYW1lbnRhbCBwcm9ibGVtIGlzIHRoYXQgbmVpdGhlciBtZW1jZyBub3IgdGhl
IGNsYXNzaWMgcmVzb3VyY2UNCj4+IHRyYWNraW5nIChlLmcuIHRoZSBPT00ga2lsbGVyKSBoYXMg
YSBnb29kIHVuZGVyc3RhbmRpbmcgb2Ygc2hhcmVkDQo+PiByZXNvdXJjZXMuDQo+IA0KPiBBbmQg
eWV0IGhlYXAgYWxsb2NhdGlvbnMgZG9uJ3QgbmVjZXNzYXJpbHkgaGF2ZSB0byBiZSBzaGFyZWQu
IEJ1dCB0aGV5DQo+IGFsbCBoYXZlIHRvIGJlIGFsbG9jYXRlZC4NCj4gDQo+PiBGb3IgZXhhbXBs
ZSB5b3UgY2FuIHVzZSBtZW1mZCB0byBiYXNpY2FsbHkga2lsbCBhbnkgcHJvY2VzcyBpbiB0aGUN
Cj4+IHN5c3RlbSBiZWNhdXNlIHRoZSBPT00ga2lsbGVyIGNhbid0IGlkZW50aWZ5IHRoZSBwcm9j
ZXNzIHdoaWNoIGhvbGRzDQo+PiB0aGUgcmVmZXJlbmNlIHRvIHRoZSBtZW1vcnkgaW4gcXVlc3Rp
b24uIEFuZCB0aGF0IGlzIGEgKk1VQ0gqIGJpZ2dlcg0KPj4gcHJvYmxlbSB0aGFuIGp1c3QgaW5h
Y2N1cmF0ZSBtZW1jZyBhY2NvdW50aW5nLg0KPiANCj4gV2hlbiB5b3UgZnJhbWUgaXQgbGlrZSB0
aGF0LCBzdXJlLiBBbHNvLCB5b3UgY2FuIHVzZSB0aGUgc3lzdGVtIGhlYXAgdG8NCj4gRG9TIGFu
eSBwcm9jZXNzIGluIHRoZSBzeXN0ZW0uIEknbSBub3Qgc2F5aW5nIHRoYXQgd2hhdCB5b3UncmUg
Y29uY2VybmVkDQo+IGFib3V0IGlzbid0IGFuIGlzc3VlLCBidXQgbGV0J3Mgbm90IGJydXNoIG9m
ZiBvdGhlciBwZW9wbGUgbGVnaXRpbWF0ZQ0KPiBpc3N1ZXMgYXMgd2VsbC4NCg0KQ29tcGxldGVs
eSBhZ3JlZSwgYnV0IHdlIHNob3VsZCBwcmlvcml0aXplLg0KDQpUaGF0IGRyaXZlciBhbGxvY2F0
ZWQgbWVtb3J5IGlzIG5vdCBtZW1jZyBhY2NvdW50ZWQgaXMgYWN0dWFsbHkgdUFQSSwgZS5nLiB0
aGF0IGlzIG5vdCBzb21ldGhpbmcgd2hpY2ggY2FuIGVhc2lseSBjaGFuZ2UuDQoNCldoaWxlIGZp
eGluZyB0aGUgT09NIGtpbGxlciBsb29rcyBwZXJmZWN0bHkgZG9hYmxlIGFuZCB3aWxsIHRoZW4g
bW9zdCBsaWtlbHkgYWxzbyBzaG93IGEgYmV0dGVyIHBhdGggaG93IHRvIGZpeCB0aGUgbWVtY2cg
YWNjb3VudGluZy4NCg0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBNYXhpbWUNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
