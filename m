Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B626EA1A55F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 15:00:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFFAD44205
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 14:00:41 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2064.outbound.protection.outlook.com [40.107.101.64])
	by lists.linaro.org (Postfix) with ESMTPS id 93A4C3F57D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jan 2025 13:59:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=MpHsAt+0;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.101.64 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pFxorwBgRhVzChBLbmdWHODzUaDDSogEVwaLcJX4XNkvBqy0SZAYdVrGK7UqghgESAMPR9dCAUVOnkQRJCYQbb8ClTG7eryeU+JLYo4KFJCLYv3bA0F+x/1Dqq9CItljsJ+7juHqOg3na154EQQ9Q3V3tqSX4187DScJn6WLB0BpThq0yh9mx9LFO+Og2KEC4AGcrHlyHfQGip6SfOC+n2mklXZAU4FKDwwrZ1t5kZa72EnIlUqLEQ05LyqHHfDKsr8n50Frcaen0AzWj/9bDltIh2gSBfACn3Sqiwa868ZkorXDcu2iqQbl+yeaBxmjE3WYsoqHZb9MmVme1K6MXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZqVhw3daTuRJ2XfVebw0ULNxkFfGJ6G9Xt8ufuSNsZU=;
 b=uGLLZKgW55OtMSIfRsssYv34Y+0mWDlQmXD61K5e7ecfTdtJ2pII+El6T/sV5OWL+aqo7OpZlLPAzqI+y4MXO+h8D95VOK/ciSnqlAU47MuMWaE7Tmv63IVfXOYkqPRU4NLQ0Bbfr1yzPSLbkMOaiHhKtu/w8p0bHiQCTvZrIvpsRC1tIxbbN4//q00GLGFXsfj02kv1S7aA4TCmvCNHu6V1om94ZE4T7JPQzWpR681nfxYxhnn+rZwnUD+vque4bd2fg4Y6i6lq8ujNK78H550OoDmDugGcQloJq5pg2L/TYjhJz6QO8JjsSHfuMonBSPyaKJiWIum0YdJF846bPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZqVhw3daTuRJ2XfVebw0ULNxkFfGJ6G9Xt8ufuSNsZU=;
 b=MpHsAt+0zjMMUedRiROU31MJF8fSkDkWeibVzkabmWcXPTz7RcfYgSUXB9okN1wYbFZfpacgp7ypKgCH+ExFDpGXlN5Golic6GpCGVDrnhhR14jqJyucwE0H7HoEcrqmlRqWiQ2sW3Yrx8eciDUhe0kJshO+O8ffB2F6KEultSIItVF4rtqt6RJLO31TdPRizszP90vplaF7MCQkaDXdOuV9CM3bjxYQqygHqqn199VLSoMeEOPeiXaRFpc94jilANHJvq6oScLkr8BdF2ONoGAHGxBtwY0Nr/sVjuVRxWMtmVPx9xDkRtTyXFrWE8VakuOy77qW35IMi7CxEYwpYw==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by CH3PR12MB8307.namprd12.prod.outlook.com (2603:10b6:610:12f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Thu, 23 Jan
 2025 13:59:47 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8356.010; Thu, 23 Jan 2025
 13:59:47 +0000
Date: Thu, 23 Jan 2025 09:59:46 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250123135946.GQ5556@nvidia.com>
References: <c10ae58f-280c-4131-802f-d7f62595d013@amd.com>
 <20250120175901.GP5556@nvidia.com>
 <Z46a7y02ONFZrS8Y@phenom.ffwll.local>
 <20250120194804.GT5556@nvidia.com>
 <Z4_HNA4QQbIsK8D9@phenom.ffwll.local>
 <20250121173633.GU5556@nvidia.com>
 <Z5DQsyV0vwX3Iabu@phenom.ffwll.local>
 <6612c40d-4999-41a1-a4a5-74d3ff5875c3@amd.com>
 <20250122143744.GF5556@nvidia.com>
 <827315b0-23b6-4a39-88eb-34e756298d67@amd.com>
Content-Disposition: inline
In-Reply-To: <827315b0-23b6-4a39-88eb-34e756298d67@amd.com>
X-ClientProxiedBy: BL0PR0102CA0005.prod.exchangelabs.com
 (2603:10b6:207:18::18) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|CH3PR12MB8307:EE_
X-MS-Office365-Filtering-Correlation-Id: fa50b0a5-7126-44bb-b514-08dd3bb6324b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?U1VPempic2pxaHpWamtNdHVpUWVYWlNDREJYS3FHVFlPNS8yTHp5VVdVV1Ir?=
 =?utf-8?B?TGNlM2Z5Nzl4RzdaaHJEQjRlbzZPclNYblFnUGI4bE5OeXk3VUxDa1J0R0N5?=
 =?utf-8?B?bjBOMWRpdm5icVMyeVQ2cnFpK0hRa21oK1piaGpMbGxvdzFkdFBta3ZDcDBO?=
 =?utf-8?B?RG16eVdVMlMyNGpOeEJqYmV1MXVwOFhKOTZwYmFZcEdjZS9VakM1aDFMbG91?=
 =?utf-8?B?eWFCSGJ4djNCZWhYSksyK0pWb1Q3NHF4V2RIRnZOSk1mOEhMZ25GMnRiS2xz?=
 =?utf-8?B?TUQwTy9zcUdSS1RFVjZ4bE1kVFVCSXFsNDVxRU11WUQyNlljWGdsRzJCdDVy?=
 =?utf-8?B?SGlBakQvUEtuWjM2LzRXMXN6QmlYNzErU3EzaHBDMWIzTDhJLzMxdm1kaWRT?=
 =?utf-8?B?QkdOTWFYYTJTNjR1Sm5DNzF2em1GTkJoZXlQSnZNbVlUeVFsMkhoTzY4YlRr?=
 =?utf-8?B?ZldLVFNhZlRDTGYzaEdKb2xZRG5LdXZlb3NrNmRKSUhtRlRub3Z5VlRJZjBL?=
 =?utf-8?B?NVVzVFVjSjZkeXRGTFJhaFZ0cmtZUUFpT1R1S0tLNFp1bnJHemVXVXpTTEhE?=
 =?utf-8?B?bkszZUt1UHpncFVieTI1dFNUNHJ6UWhiWE1zZ2Z5d2sxK3pScnQ3M2pPc2V2?=
 =?utf-8?B?cUhwZlNlazBYT0xvYjVPRmVHTWY5VTg0aCtaNTFMd2lIeVZ5dHVyaU1qSWpS?=
 =?utf-8?B?bDA1dHlnTUloWVNlNXZYWWV6Skt5NitrRElLZ3MzRzljalEyUjlGWjlOYy8x?=
 =?utf-8?B?ODdrZGl4NXNVZGR2dEFGaDRWMElBS053SjRDRTcybThDdzkyb2lOaXF3VWpL?=
 =?utf-8?B?dTMvSnpGaVNMaGp0MmIxN3ZaQ1BOQzZUOHNTNzNWeHF1eEFmTkxWenBFck1z?=
 =?utf-8?B?OGd6ZG9GbTMyaXpIbzhvR1VKS0NzOVE1UDNwbStTek1xUkJLSmJxbGxyd1ZM?=
 =?utf-8?B?bUV3NTVVVEtLVlBXUEJpZDRjTEh1dFVKWjdDSTE2bk5LV3RmSGtrU2J2S1RU?=
 =?utf-8?B?Y0M0NVJtNjRrTnZTZnZuMTByVXNPLzd5RUw5OUlLcDZsNVRzOUlMWEtNNXBs?=
 =?utf-8?B?cCtoSk9iUWh6eDJrTXVSUnZkbEpDY0NOeUNHZ0M3UUdyNFhoSVBZSjluQmxW?=
 =?utf-8?B?RTZtc2tvTjBVWEJpK2oyMkM3TXgwVGhadUo3WllibXFHSWdQbzFCY2tpN0xF?=
 =?utf-8?B?eTJzYmZnM24xbWdSbTh3VHZCSzNpdlJWU21uWCszSXplYk5uakVlRk5IcmE1?=
 =?utf-8?B?bFQ3b0h5bFd3d3o5c0Zsb1JIWVoxejhka3NaSWs1UVRwNDZXdnpjUDFlU3Jw?=
 =?utf-8?B?dXo0MWI2a3lRRENia0hRZDg3UktoNWZ0RnZwcGJTZTF0cU9lckh4RnRuTGVa?=
 =?utf-8?B?QnIrWGVkMjJPV1l5c2szbk5YbXN0YSs3UzV1NjFkbkxyTFlUTnJNSzUyejI0?=
 =?utf-8?B?amk5NXQ5cndFT0VTSlJ5anR0WDdOMXFFMDd5bnczWE5rb1hyT3FzYTJpU3N5?=
 =?utf-8?B?czRJeXViZms2NjJBSjlkcVd4ZlN1TW93MWFNa3lNSkVCRlEwVUYvUitRNFVi?=
 =?utf-8?B?WmMvZTdlMDdoN1VPaEZYYm91aDBScDB5TUtjd1hYMXNjM3hkWlRxZUJhdFJY?=
 =?utf-8?B?N0ZFZURmQW1yNWJzTHZxTVdxb1U5UUVpNnJwdDdRVEhqTzcxVmtQRWVBNEpX?=
 =?utf-8?B?WDR5aFlGN3EyTHYwblJ3RVVZNGRZa01Feml0MHc3d3hKOTJIdFJkTURDek12?=
 =?utf-8?B?cThmNHNWZGlhZmFUYUNvVHh4dUtRMERzVjAxb2d0bm9hQ08rN0UrSkd5T0s1?=
 =?utf-8?B?VVZ2eHBmdTdyNlVxUlFlZ2hCRmM2OWtyOFZSQ2ZvNVUxZ3NtNHNUSFBVM1dz?=
 =?utf-8?Q?RYVE2hZwDXY7K?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?KzdtSzRBRXpCc3Y5TTlKL0FWM2dGZXVzWDRRSXZ6dXJHZXczQWlTTk0xR3ZC?=
 =?utf-8?B?NnRMZmlnRXkxR1J1WXRnVy9FU29rYWlSVU5JSDdSVUc4WFZwcS9kWVcyVTNH?=
 =?utf-8?B?cEQwUUxhOXVwOGVvU3c0SDlwb09sUWczVlRKcUc5M3lYSGNtK1haQlhnZGQy?=
 =?utf-8?B?a0hZWndVZnJHQ3puQWc5Ymt0UDhqaHUvZ3VEZ0hMZFl1cmlFSHlQRVM1U0Q0?=
 =?utf-8?B?dHRPKzdrM0k0WEhLZFpZL2YzYTN3OE10QWdBbFpxQWRmalJ4emtweUh2YXJx?=
 =?utf-8?B?ajlYZFlBbnU4WkhQaThSWmtsSjdqYU9RV21CL2I5ZW55S2UrSER4aWxYSVFH?=
 =?utf-8?B?YTJ3OXcvVzJ2STl0Wm1BajBkVE5RVWdINTJzK3JSR3krcVFyM3FKQkJIVEtm?=
 =?utf-8?B?N1VOQWc1d0ZyUXlGbFZlL2ExaWh1Y2hmZ3hrMVBQemhZVTlOWVJDanU1Qmc5?=
 =?utf-8?B?MXpiN2M2YnQxaEtLN2VrTHJNdDFob2J6TUpwNW0zbklYTCtUUmh1Z1Z1enNt?=
 =?utf-8?B?QXZ5NkkvUk5pb1RIclBaK0pYbStZNHBXbmhYMUFsbnE2Q3g3L3JwYzZ4TlJT?=
 =?utf-8?B?d0hmL2dNczhhblF5eEhPT1owTEZSS1RxWEFHTnhEN1Q4UE00MnZucEFFR0Fk?=
 =?utf-8?B?UG9CQTNhV2JNUTZNU0NqZWF3RHI2YmFmejJzTjJjcWlnSnZSVU11NHAyaFgv?=
 =?utf-8?B?QnM1UUh6Z0MwQ1lOTEdsenVZWUF2Qkc1eE9YSUxDUlBlOUFxZWprSzJ5cmY1?=
 =?utf-8?B?V3V6empIUk8wdlRrNjZPQndVNldjSDhZZCsveGtJWktnKzhwWXNYWHphZ3Vi?=
 =?utf-8?B?NEFwaEw3bU1Gay9ZWGNodE1hRVRsNVFScytFN2pxSmU1UTFMUXlBRFF6QVlH?=
 =?utf-8?B?cjVKMFFNZm1nSG5QOU1xRy9nWVl6TmFaelAxdlJEVVhjYmg5MzZPV0V5N2VL?=
 =?utf-8?B?dy9iQnd1UU1iRUVleXZxV05oRElsZXRpSVZaTy9NOGl4U0pZTDRYQnl4S2I1?=
 =?utf-8?B?V0FSY0pMTHczSG81ZjFjaXVoZUwwUWRwSWRadkJtNDB2TlI4UFJNdklra3h5?=
 =?utf-8?B?dXlHdHg1M3JZV1V1L1orVVhxOUJsMTJpY1lkR3Awc2JCSkxLb05CV1MxSndI?=
 =?utf-8?B?aUJFK3lWbmdiOUs0cXl6bkwwYmNpTkdDWHBxZ0k2eTVEYURlWHJyejNLbEtt?=
 =?utf-8?B?ZytkM3NwQWRsckxHTUtzb0tYUDZBL1BWWnNLZWc3a0JTK2dOQ0l2ZHBlekhW?=
 =?utf-8?B?dmVaUHRJMU1FTTlhSENKUGJmRWp2OHVmOEVMRndZblpMbEdaQi9qZ2FabFFE?=
 =?utf-8?B?SkJHa01PM1A5Wmg1ajNpaERvc29HaEJuZmhNd0xGWVlIMk9LSzJnL3N6NzZL?=
 =?utf-8?B?dEtsZ3FrVWFhZGMrcjBDdDJvL3E4Q3dEMXBjVGdaL0ZDQTdOOS8yVkcxNVg2?=
 =?utf-8?B?WDJSMy9GbUg0M1BGTmRXTXZFQXdJdStRMnFDUDYzeTdWUUVtYWhaUEl5Uzk4?=
 =?utf-8?B?dnJyV0hMblJHS3Zia2JUNmloVDc4aTB3Um1lUnVES0VuTk5Xb2JtcGtlYml1?=
 =?utf-8?B?NUJ6dCt5bGxoZEc3TkJjSUtKYWpGOUdWTEdGcEVlRndIb2VEMDdSd25VUlU2?=
 =?utf-8?B?bUJ6Q1NhbXZXS2kyUVVhMVMwYVhqMDlWYnNiL1QxMGhTSGsyVDYxRnFsQmpv?=
 =?utf-8?B?NnJKTi9WZS9HcGxCM29QdE9oSTJ4eVJ3KzIxZGpTakp1U1lwVEZjMCszWHN5?=
 =?utf-8?B?bjQzd0EyV28rdHcxbDVRVnYyNFFaN3cweGZDamVTZEJnOTZBZHo0N2pQMVdE?=
 =?utf-8?B?ZW1lYkZqSnNDWUxKcGVRZmpUZFpORzlHMy9CSzk1dmg3Snl5OWtZMUtnWlBs?=
 =?utf-8?B?Ylk4RGJFYUlYR3RKakkxNHFwdjdncDVFLzhDcEF5UDVEaWF1ZU1PL3FBSjh0?=
 =?utf-8?B?QTF4SjBvZkdSTld5dmVYdXBIWTZpYm41ektpV0dLZmxJQ1U4WXhodVU3dTlV?=
 =?utf-8?B?d05PT3k3dUZhU3dxbHhIS0tBMk1kUnNiTWlSMHdWdE5pK2V4R1g1cFdnV0hG?=
 =?utf-8?B?YTNLS3pqalY1K3lPdk9WL3IrTWk4L0J0eEovbHdpMGtKa0ZKR1VuSWo3bVll?=
 =?utf-8?Q?mXaQ=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa50b0a5-7126-44bb-b514-08dd3bb6324b
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 13:59:47.2669
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EIqI9zR186QqvO9kj8v6YW0mVVuCFAT3msm6yxCvPydBeiL0zx7syOxk6mmdBAw/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8307
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 93A4C3F57D
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_8(0.00)[40.107.101.64:from];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.101.64:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: 5CSCED5NPRJW4LIMQZBA7ZE5X3EAYRHB
X-Message-ID-Hash: 5CSCED5NPRJW4LIMQZBA7ZE5X3EAYRHB
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5CSCED5NPRJW4LIMQZBA7ZE5X3EAYRHB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMjIsIDIwMjUgYXQgMDM6NTk6MTFQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiA+IEZvciBleGFtcGxlIHdlIGhhdmUgY2FzZXMgd2l0aCBtdWx0aXBsZSBk
ZXZpY2VzIGFyZSBpbiB0aGUgc2FtZSBJT01NVSBkb21haW4NCj4gPiA+IGFuZCByZS11c2luZyB0
aGVpciBETUEgYWRkcmVzcyBtYXBwaW5ncy4NCj4gPiBJTUhPIHRoaXMgaXMganVzdCBhbm90aGVy
IGZsYXZvdXIgb2YgInByaXZhdGUiIGFkZHJlc3MgZmxvdyBiZXR3ZWVuDQo+ID4gdHdvIGNvb3Bl
cmF0aW5nIGRyaXZlcnMuDQo+IA0KPiBXZWxsIHRoYXQncyB0aGUgcG9pbnQuIFRoZSBpbnBvcnRl
ciBpcyBub3QgY29vcGVyYXRpbmcgaGVyZS4NCg0KSWYgdGhlIHByaXZhdGUgYWRkcmVzcyByZWxp
ZXMgb24gYSBzaGFyZWQgaW9tbXVfZG9tYWluIGNvbnRyb2xsZWQgYnkNCnRoZSBkcml2ZXIsIHRo
ZW4geWVzLCB0aGUgaW1wb3J0ZXIgTVVTVCBiZSBjb29wZXJhdGluZy4gRm9yIGluc3RhbmNlLA0K
aWYgeW91IHNlbmQgdGhlIHNhbWUgcHJpdmF0ZSBhZGRyZXNzIGludG8gUkRNQSBpdCB3aWxsIGV4
cGxvZGUgYmVjYXVzZQ0KaXQgZG9lc24ndCBoYXZlIGFueSBub3Rpb24gb2Ygc2hhcmVkIGlvbW11
X2RvbWFpbiBtYXBwaW5ncywgYW5kIGl0DQpjZXJ0YWlubHkgZG9lc24ndCBzZXR1cCBhbnkgc3Vj
aCBzaGFyZWQgZG9tYWlucy4NCg0KPiBUaGUgaW1wb3J0ZXIgZG9lc24ndCBoYXZlIHRoZSBzbGln
aHRlc3QgaWRlYSB0aGF0IGhlIGlzIHNoYXJpbmcgaXQncyBETUENCj4gYWRkcmVzc2VzIHdpdGgg
dGhlIGV4cG9ydGVyLg0KDQpPZiBjb3Vyc2UgaXQgZG9lcy4gVGhlIGltcG9ydGVyIGRyaXZlciB3
b3VsZCBoYXZlIGhhZCB0byBleHBsaWNpdGx5DQpzZXQgdGhpcyB1cCEgVGhlIG5vcm1hbCBrZXJu
ZWwgYmVoYXZpb3IgaXMgdGhhdCBhbGwgZHJpdmVycyBnZXQNCnByaXZhdGUgaW9tbXVfZG9tYWlu
cyBjb250cm9sZWQgYnkgdGhlIERNQSBBUEkuIElmIHlvdXIgZHJpdmVyIGlzDQpkb2luZyBzb21l
dGhpbmcgZWxzZSAqaXQgZGlkIGl0IGRlbGliZXJhdGVseSouDQoNClNvbWUgb2YgdGhhdCBtZXNz
IGluIHRlZ3JhIGhvc3QxeCBhcm91bmQgdGhpcyBhcmVhIGlzIG5vdCB3ZWxsDQpzdHJ1Y3R1cmVk
LCBpdCBzaG91bGQgbm90IGJlIGltcGxpY2l0bHkgc2V0dGluZyB1cCBkb21haW5zIGZvcg0KZHJp
dmVycy4gSXQgaXMgb2xkIGNvZGUgdGhhdCBoYXNuJ3QgYmVlbiB1cGRhdGVkIHRvIHVzZSB0aGUg
bmV3IGlvbW11DQpzdWJzeXN0ZW0gYXBwcm9hY2ggZm9yIGRyaXZlciBjb250cm9sZWQgbm9uLURN
QSBBUEkgZG9tYWlucy4NCg0KVGhlIG5ldyBpb21tdSBhcmNoaXRlY3R1cmUgaGFzIHRoZSBwcm9i
aW5nIGRyaXZlciBkaXNhYmxlIHRoZSBETUEgQVBJDQphbmQgY2FuIHRoZW4gbWFuaXB1bGF0ZSBp
dHMgaW9tbXUgZG9tYWluIGhvd2V2ZXIgaXQgbGlrZXMsIHNhZmVseS4gSWUNCnRoZSBwcm9iaW5n
IGRyaXZlciBpcyBhd2FyZSBhbmQgcGFydGljaWFwdGluZyBpbiBkaXNhYmxpbmcgdGhlIERNQQ0K
QVBJLg0KDQpBZ2FpbiwgZWl0aGVyIHlvdSBhcmUgdXNpbmcgdGhlIERNQSBBUEkgYW5kIHlvdSB3
b3JrIGluIGdlbmVyaWMgd2F5cw0Kd2l0aCBnZW5lcmljIGRldmljZXMgb3IgaXQgaXMgInByaXZh
dGUiIGFuZCBvbmx5IGNvLW9wZXJhdGluZyBkcml2ZXJzDQpjYW4gaW50ZXJ3b3JrIHdpdGggcHJp
dmF0ZSBhZGRyZXNzZXMuIEEgcHJpdmF0ZSBhZGRyZXNzIG11c3Qgbm90IGV2ZXINCmJlIHNlbnQg
dG8gYSBETUEgQVBJIHVzaW5nIGRyaXZlciBhbmQgdmljZSB2ZXJzYS4NCg0KSU1ITyB0aGlzIGlz
IGFuIGltcG9ydGFudCBhcmNoaXRlY3R1cmUgcG9pbnQgYW5kIHdoeSBDaHJpc3RvcGggd2FzDQpm
cm93bmluZyBvbiBhYnVzaW5nIGRtYV9hZGRyX3QgdG8gcmVwcmVzZW50IHRoaW5ncyB0aGF0IGRp
ZCBOT1QgY29tZQ0Kb3V0IG9mIHRoZSBETUEgQVBJLg0KDQo+IFdlIGhhdmUgYSB2ZXJ5IGxpbWl0
ZWQgbnVtYmVyIG9mIGV4cG9ydGVycyBhbmQgYSBsb3Qgb2YgZGlmZmVyZW50IGltcG9ydGVycy4N
Cj4gU28gaGF2aW5nIGNvbXBsZXhpdHkgaW4gdGhlIGV4cG9ydGVyIGluc3RlYWQgb2YgdGhlIGlt
cG9ydGVyIGlzIGFic29sdXRlbHkNCj4gYmVuZWZpY2lhbC4NCg0KSXNuJ3QgZXZlcnkgRFJNIGRy
aXZlciBib3RoIGFuIGltcG9ydGVyIGFuZCBleHBvcnRlcj8gVGhhdCBpcyB3aGF0IEkNCndhcyBl
eHBlY3RpbmcgYXQgbGVhc3QuLg0KDQo+IEkgc3RpbGwgc3Ryb25nbHkgdGhpbmsgdGhhdCB0aGUg
ZXhwb3J0ZXIgc2hvdWxkIHRhbGsgd2l0aCB0aGUgRE1BIEFQSSB0bw0KPiBzZXR1cCB0aGUgYWNj
ZXNzIHBhdGggZm9yIHRoZSBpbXBvcnRlciBhbmQgKm5vdCogdGhlIGltcG9ydGVyIGRpcmVjdGx5
Lg0KDQpJdCBpcyBjb250cmFyeSB0byB0aGUgZGVzaWduIG9mIHRoZSBuZXcgQVBJIHdoaWNoIHdh
bnRzIHRvIGNvLW9wdGltaXplDQptYXBwaW5nIGFuZCBIVyBzZXR1cCB0b2dldGhlciBhcyBvbmUg
dW5pdC4NCg0KRm9yIGluc3RhbmNlIGluIFJETUEgd2Ugd2FudCB0byBoaW50IGFuZCBjb250cm9s
IHRoZSB3YXkgdGhlIElPTU1VDQptYXBwaW5nIHdvcmtzIGluIHRoZSBETUEgQVBJIHRvIG9wdGlt
aXplIHRoZSBSRE1BIEhXIHNpZGUuIEkgY2FuJ3QgZG8NCnRob3NlIG9wdGltaXphdGlvbnMgaWYg
SSdtIG5vdCBpbiBjb250cm9sIG9mIHRoZSBtYXBwaW5nLg0KDQpUaGUgc2FtZSBpcyBwcm9iYWJs
eSB0cnVlIG9uIHRoZSBHUFUgc2lkZSB0b28sIHlvdSB3YW50IElPVkFzIHRoYXQNCmhhdmUgdGlk
eSBhbGlnbm1lbnQgd2l0aCB5b3VyIFBURSBzdHJ1Y3R1cmUsIGJ1dCBvbmx5IHRoZSBpbXBvcnRl
cg0KdW5kZXJzdGFuZHMgaXRzIG93biBIVyB0byBtYWtlIHRoZSBjb3JyZWN0IGhpbnRzIHRvIHRo
ZSBETUEgQVBJLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
