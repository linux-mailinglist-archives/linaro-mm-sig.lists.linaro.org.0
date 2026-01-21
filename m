Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ER0Js6wcGmKZAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 11:56:14 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA6C55959
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 11:56:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21672401BB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:56:13 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013003.outbound.protection.outlook.com [40.93.196.3])
	by lists.linaro.org (Postfix) with ESMTPS id 6FD6F3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 10:56:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=eyVf66sd;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.3 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rbCgdjg3TrjxzzjMR9dLSFuDzC7Lz0oy1vTvup0iigkBWH3eN4QO9EY+4gMpCQttXKgIaVy6CeeBUdRSzYNAaXNkMYsmwo9MaiuNIGnudUSp4bbCFGY2OZy9s/bij8acFpafj37mo9siLKM/EwoOhEbFX3fbQPesSbIuz9Lnzf57SjkOdD1X0N0Iqf/ysk1l8tWkUNMWKQ3L2aa5vgftgOuXxotVUvr7nAhuZRsISYvlcmMMfww9PiWwZ2RXpRaGfnFnfoxKiwr0EQNVV/nH/9hirbDQYboYBXOouJDbgs1Xs1OIlRmFF2HzoezUqv+84oe2BDTTZDwoPrVGw3lwdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aEnz8/ze/UdUk/2Tw8vdu/RVtx3fezY8F3DIGsBauV0=;
 b=nfTeUjEcQPXKh3OxOQM6o9hmPMUMH2cYnRGsR8lKN83bU1LMPlDKCyYeGieLNaYpBbZi/hAJqHUz92IUekda3MY0kiKrI52+ohMkDR+cKLq1DhbQXJqjfCkkGTHUxaMqjSI3OQy2S/Lzy5T+hEGM0GUnSwKxcbJAelMCgj13KCtUlGtNgM1a7oqpluuvhQ+iXnZFmsbMPWfpk264gEWPhlA6gUpBkVlyAh4PrfCnJgy5jwwrYoqMEPXd4fHdrZxTEfELJodhIolqNx0sKx36TXBsKzOeQX4DQ+tMUjsJ+n5UNc6E7TN900MzVgs8+225B+a6xC3kr/MIQz51yJWC/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aEnz8/ze/UdUk/2Tw8vdu/RVtx3fezY8F3DIGsBauV0=;
 b=eyVf66sdlrMSRkXZ2b8CA/2MpRgq7DaBEUeeVmSi8pFY8B9pBBwhisD15EFMEACGDgjpvWlimlnUvp/7tkAL2EdrDwVl3ddTqsGuuIhpjvahqFGFU7cs/hrZqt/JGL4H05TJr2dfAkddKHA4QOXgB1/bO1mo7qzMAQekVDpkpMY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB5736.namprd12.prod.outlook.com (2603:10b6:510:1e3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 10:56:04 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 10:56:04 +0000
Message-ID: <09d2f623-18e7-4fcb-bae4-823c77cc0d5e@amd.com>
Date: Wed, 21 Jan 2026 11:55:46 +0100
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>,
 Ankit Agrawal <ankita@nvidia.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <b129f0c1-b61e-4efb-9e25-d8cdadaca1b3@amd.com>
 <107464758df9444a465a3a9e387f5a42827aff51.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <107464758df9444a465a3a9e387f5a42827aff51.camel@linux.intel.com>
X-ClientProxiedBy: FR4P281CA0258.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e8::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB5736:EE_
X-MS-Office365-Filtering-Correlation-Id: 58050f0f-192d-4ed7-4865-08de58dbac3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|366016|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aDBoMERRT1FUMS9xcjVtc1FzMkRzUk85SE9FTkNGRVpYZjlvZmpqR09zTTk1?=
 =?utf-8?B?dGVYdmVxWmZER3Vua0JvM01NWSs3NnFFWWFYc1kzMXc5dDIvbEIyNlgwN2Fj?=
 =?utf-8?B?bkFWcVlWWnJySllJOGwwa2hVQklpOS92MTVBbDRRcEhuT1h2emttZnNleGZZ?=
 =?utf-8?B?cHNDOWYvcS9WcW93YWxTZWNONUpJak0yb1pHdTdBRnVrMlN0N2p0clltTk5L?=
 =?utf-8?B?dGkvbHJHUlVqYkFjeVF2Wm90Q0lhNVpIWHhscnN1VGovQlJJWXBQOHVnMXQr?=
 =?utf-8?B?Nklud01LaWY5T1JZMEpQZmJYMFVRd3Izd0V0Tk9mVEY3ZU5zR1JGU2xQUzNj?=
 =?utf-8?B?MlJBUnJDYmQvT2RsTGppalVKL1B4WXpkcGVYdnBoQ0JFWWRQQmsrUlNCVFpx?=
 =?utf-8?B?eElmeW5nd2lRVFp3SlBaMU9hb2xlNGlzVmFqT2dubW1neVI2U1lraEJXYWZO?=
 =?utf-8?B?ODBQRndxVTNXc0tOK2tReXhNbjdHWTFKeVg3NVllaERPWWsyTmtITWFSMWJy?=
 =?utf-8?B?azQ0Ry95Q3AreTlzQkg1bTk5ZnBWT1BqSit5dVM1a3RDVk54bFMwSUtyejVC?=
 =?utf-8?B?NDlzTHFYNzJ5VHBwV011VG5SeCtNeFhXd3FmVkxtT1I1Q3R1Ynpud2lZQ2V3?=
 =?utf-8?B?UThEcUNJYXZlWFFwZE5HYnNlMjlrR2VEd1NWRWdQTW85TmFaTnZPL0tleTJ6?=
 =?utf-8?B?Y2lWOUVyeDZMN0loRWVBeVVkWERVRVRWWXhvcThFMU5WUXdiUUhoUlRrMWRx?=
 =?utf-8?B?N1lFb3J3SndrNnE2RE8zdUduTFB4dXRIRS9yNnkxZHhxS0NQV29ORHZ5OWVp?=
 =?utf-8?B?a1ZoUmdHdmF4aTNybWhPalRjQ0RFZlBzNGE3Nmp2Z1RBdi81b2hBRmFPcDFZ?=
 =?utf-8?B?SDN2QWcxMWVIVUZ0bStnM05NUEloY003RDg4M2htVS9BSjRMMmlIZUF1K2ZP?=
 =?utf-8?B?Mmt4OFQzUW8velplbmZhSFVFRDFZYnV1ZmRjTlh2M0dOeWtjUmNzcEs4ckt6?=
 =?utf-8?B?S0FvOERieWlZVFZLMHJnNWptRTlFV05rZ0dWMlkyS0FJRHpXMWkyYUJLV250?=
 =?utf-8?B?ZnBIVXVNK2haS2E3Mlh6ZXlUeVl5NmEvSTdqclVPRUV2SjFacWkwTThHcDJr?=
 =?utf-8?B?RnU1QXlSczYyQXZibjB6Nk1zTG9SdU1XSXJLSE5vUS85RmRxZ3ZBRStvMHhz?=
 =?utf-8?B?UHpaakViSlJFL0RUR04wR2wvNk9CdFBOMUJiZVJPTXBPNVhSNDZVeGp3UHNl?=
 =?utf-8?B?ckx5NDRZSCtuUjJoMSs4c3lzbzNWeUxiY2Y1NlNMYVplWDVPNkg5b1JwM0xM?=
 =?utf-8?B?QW1kdHp2RGVvMWtuaTRvcjdPOGVHSjE3UnhiQWNJQ1Z3UTBQbFN4TlRTK3Yr?=
 =?utf-8?B?dnVsYVViaFBvUWo3a0hIU3VhdVNvd2haYUJIT0xGMGR2dGh1NzBBcTd6cENx?=
 =?utf-8?B?MVpPZXorWlJEeG1DS1A3aURwVzF2YVlCdHE2djZrRUxnSkNOeno5YUZ4RlpD?=
 =?utf-8?B?dDcvMnh6d25pU3ZkOTZFWWJBcUlITGNmWjR5anc5VTdvTm9TNm9NempTL3l3?=
 =?utf-8?B?MHgvOEJDTkxKaGhrVG9zWno0aDBIeXUxR1E5Wk56K28zVTkzUUZTTnlZbVM0?=
 =?utf-8?B?eHMvUXhCZStJQjJMZng3M2xHVGI3SUF3cnJSS3dGcUhxcEd5OHdJVXY0U1FD?=
 =?utf-8?B?TGhZUGlaUkwzcUxNQXJVcFJhdXJPMUtLL1V0V09EK1BMdFpzanZ0MCtjaUIv?=
 =?utf-8?B?V3hoeTZqeUdwa2tuUUdiVWI1YmU1bGtkRFFvWUtka1VZWDhoRFNpZkljUUVt?=
 =?utf-8?B?b2xHM1hiYk1aZTg0cHdHcHNKQnIxM2xmOU9MVWlPcmV0dmV1WmhjczVxRTJJ?=
 =?utf-8?B?by8xSWg3bTY0dldTc0RJNWxXdXpVNDV2V2tIL3lwa1JTS0xUOXBjRU93TzJC?=
 =?utf-8?B?cnMrTTNjeTNVQVRQWFZIclc5WGE0NU5lT3NqRGlaZ3EzWk5ua1dRSXc1M1JS?=
 =?utf-8?B?RlpsZWlNN3hiL2gyaHJYdFBxL2lnYThWb1JRUE5FVE90aTUvL1M1eFpOMXJ6?=
 =?utf-8?B?a0REcmZ6aFNvWWpCZy9pRlpNVmRlMllhOUExY0g3Q0tuRmlHVHlYTmNZeTBP?=
 =?utf-8?B?MC92aWYzcHQ1cmd4MlBWRHp5akMvbUk2WElRWERmZ1FWUW0yUHRTdkFSencw?=
 =?utf-8?B?UUE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T0ZveDFwMU44V0lHVlYvUDFVSDFpQURtOVpmNDE4a3Y1UWhaYktpdXJsVXJC?=
 =?utf-8?B?cWRGZjEzZDNzOU9ZNGxKVlkwYmFKb21rV3FOZDVOYzRXTmpaZm1vbjRySVVh?=
 =?utf-8?B?MCtwQkliZC81TVVTZElNK3FlbXZyZ056U3BIOUJwY0c1MHQyNW12MDdvcnJk?=
 =?utf-8?B?cWVTcWRVSGkyQ2Zvd3A4SzEzMGVVQ1ZBRUN2OUdpckNmUkZRQWNVay9pZ3U5?=
 =?utf-8?B?end2d1MxQTVtN3BxSkNmQTlMdWdiYURpeVdNRzFrMG93REFvRVk1Ymx1RG1v?=
 =?utf-8?B?NjVJMjdlK2R1TDBLd2t3eDJvZmV5MFFwbDhQSmFaSWZNdS9JdXIrUjlLTFdw?=
 =?utf-8?B?SG93S1doMFc5cVkydnJFUC9kaXVqTXFqVVNBRk1lM3o1c1Z5WkVJNjl2SnZE?=
 =?utf-8?B?R1VUUnI4bXNuUVNYNzJXSDh6eENhdlBuV21pb3BzZlc4OEhMTmJJQjNtd0Yy?=
 =?utf-8?B?RUxWcUxXY1E4aDMxM2JGaW4zTVAzTWpwTHBRc0RZNkt4aXNoRnVKM04ya2Fl?=
 =?utf-8?B?RU5WdE4xaTZaWnM1Ky9sVHVSbHJJSk4zcVZaV1FIU084Yk9VRmdTMnl2SHZh?=
 =?utf-8?B?L0N6MEJRN0lIWTh1Uk1Qa2NGSUt2c0g2OEJmMlpFOSt5R2dmbkpqWU9MWk1M?=
 =?utf-8?B?MHBqaUNLYUl0S2lISkh3ekp1YXpDeUtkbm1iYVpCK1IyeVlRSXYzbHBSMUxI?=
 =?utf-8?B?Y2dNNVRLSTVhbXB0Q3VtbWUraUt0Y1ZFYUpGWk9tTDNmK1hLSUlXZU1ySi91?=
 =?utf-8?B?STU4cXJrR0xUdDd5OXhsbnF0SFB1b0t3ZWQzV0dHMkkyVytNdy9UNk44YnQy?=
 =?utf-8?B?NHgwd1FiVWZSalhnQWllaGNrSEhqQ2lhR2FBSERyM1hibU5jOVZzU0NSZTNr?=
 =?utf-8?B?VGxGTSs4WCtZVUZjaUVuSS9MMU5MVlUxZ3lkbnFmcEdLazhvRlZEZEVoZGFj?=
 =?utf-8?B?eEhWVUF5b3dOTUdyM0dlc3kyNVJUQTVFR01oTHpRYmk5WnVmVlVrdEx0VHQw?=
 =?utf-8?B?TU54dDJTemJ3Z2tvajNXYzNuODdraWp3VFhoajBWaUkyd1prU3NRUlR2NDVs?=
 =?utf-8?B?a2JCUWFIcGtoR3BVUWxZVVYwRXNSQTNNOStMYnRUUHBkY2xwd1dSczgxcHFY?=
 =?utf-8?B?emt6ZHdJS1FJR1N5dUFmK1BZdjJqOEFWL1BETjNGbStDcnRBRnpQb1NtWUxh?=
 =?utf-8?B?QmpvTW9wZGpEUDg5cGZyRmtqNko4eW91NlorOXlWeXh3TytIcHFSbVhmNXZK?=
 =?utf-8?B?b2s1bGVXZ1IyVldUR1lQbmQzeVRydWFvanhJY241WFplUjRackdJdmF2SG43?=
 =?utf-8?B?OVFxQy9EZEx2M3dhS01pYXZCODF6MEg2Q3RwaWRNZityM1NRZ2NleGNGQ1Zr?=
 =?utf-8?B?eWl6ZFJCb1FETjlnN0c2YUYvem43cU1JU1FyZVZhSGNUdm5TUG1MRDNGc1ZN?=
 =?utf-8?B?Rk5tR1k2Um1meXVzK1BOMFVoTTM2eGgzTU5EUFZkWlQ4aDJnOUpqS21vYVVT?=
 =?utf-8?B?citWNjhkMzV3THhrNENlY2drMDJscmNuY01iMDE2V0VwL0I5WVNBY1o5SmJV?=
 =?utf-8?B?dEZKU0ZEbTRDcUxnVUVwTmJDTDNHSmFiTU9ia2tKQ21SMjE3d0UwbVFkWFFu?=
 =?utf-8?B?NlRaNUs0SUFSell0MzZTcVBLeXgrK0ZvSm00ZjE0dFN6eDBSMWl6YXl4NGJ1?=
 =?utf-8?B?R2ZWaHc0YldxU0lvRVdML1RPdkZ3Y0JJZXFQbDR5dWYvSy9mUlhSY0FZVmNu?=
 =?utf-8?B?eTlMY0lkN0cyWnBEanoyWUdzTm16WmtnMnM3bnNqN2Y1c0lYRW8zNnhxbGE2?=
 =?utf-8?B?MjNDampOUzBQbkxlelIzS0VpVVdOWXJsQ2tTcGNtSnl6SWZXQWNrT1h5QWRF?=
 =?utf-8?B?YTVocXlkNHNOdk9kQTdvMThpbTBGc05nNlQzVVdrY0xSWVhyZi9sSU5ySmN0?=
 =?utf-8?B?dFh6VUNpUW9qVGdqQ0VoVGRTTk1MYmpZSHlMR1lyRHp1b3NPdmM3N1NrWmx3?=
 =?utf-8?B?eGZhQytzYkN4ZmxZNlZBUUhrdzBmRWJIYi9mMUtsVDJVWXlJRk5kRGhOSTFp?=
 =?utf-8?B?ditmdllUazJ4a2tXbDc1eWFtbGgraElkTjNsbmlEbCtCOW9aamhLMVl2emth?=
 =?utf-8?B?Ri8zRjhzZCtQUCtBUlU2Q2dmaTA2bDFiSXNTVmhML2VtblJRU3BQQzE5SWht?=
 =?utf-8?B?aWFCN0NWdFJORys0RDlTR0N3SEJGa3JRME9LMUpYZGpNUXFtampsMG85bjg1?=
 =?utf-8?B?dXZWcmR3MG12bGJMVXIxNERuVDNzM3BVMUVLSWk0aHNnNkNDZWtXTkFQVzZK?=
 =?utf-8?Q?dhnxv5CeyPw1CXjPPH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58050f0f-192d-4ed7-4865-08de58dbac3c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 10:56:04.5579
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: na44b0LLc2ibn4ZTZiVPxI3CNA+JkkFdqXk8Bfxn7Jw234il+mCW7pO4ESuKyfzS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5736
X-Spamd-Bar: -----
Message-ID-Hash: QBC3M33VR4UWCVHEQAJABFEK2AX2MDJ3
X-Message-ID-Hash: QBC3M33VR4UWCVHEQAJABFEK2AX2MDJ3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QBC3M33VR4UWCVHEQAJABFEK2AX2MDJ3/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,amd.com:email,amd.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 0BA6C55959
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMS8yNiAxMDozNiwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6DQo+IEhpLCBDaHJpc3Rp
YW4sDQo+IA0KPiBPbiBXZWQsIDIwMjYtMDEtMjEgYXQgMTA6MjAgKzAxMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6DQo+PiBPbiAxLzIwLzI2IDE1OjA3LCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6
DQo+Pj4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4+Pg0KPj4+
IGRtYS1idWYgaW52YWxpZGF0aW9uIGlzIHBlcmZvcm1lZCBhc3luY2hyb25vdXNseSBieSBoYXJk
d2FyZSwgc28NCj4+PiBWRklPIG11c3QNCj4+PiB3YWl0IHVudGlsIGFsbCBhZmZlY3RlZCBvYmpl
Y3RzIGhhdmUgYmVlbiBmdWxseSBpbnZhbGlkYXRlZC4NCj4+Pg0KPj4+IEZpeGVzOiA1ZDc0Nzgx
ZWJjODYgKCJ2ZmlvL3BjaTogQWRkIGRtYS1idWYgZXhwb3J0IHN1cHBvcnQgZm9yIE1NSU8NCj4+
PiByZWdpb25zIikNCj4+PiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0Bu
dmlkaWEuY29tPg0KPj4NCj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQo+Pg0KPj4gUGxlYXNlIGFsc28ga2VlcCBpbiBtaW5kIHRoYXQg
dGhlIHdoaWxlIHRoaXMgd2FpdCBmb3IgYWxsIGZlbmNlcyBmb3INCj4+IGNvcnJlY3RuZXNzIHlv
dSBhbHNvIG5lZWQgdG8ga2VlcCB0aGUgbWFwcGluZyB2YWxpZCB1bnRpbA0KPj4gZG1hX2J1Zl91
bm1hcF9hdHRhY2htZW50KCkgd2FzIGNhbGxlZC4NCj4gDQo+IEknbSB3b25kZXJpbmcgc2hvdWxk
bid0IHdlIHJlcXVpcmUgRE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVAgaGVyZSwgYXMNCj4gKmFueSog
dW5zaWduYWxlZCBmZW5jZSBjb3VsZCBpbmRpY2F0ZSBhY2Nlc3MgdGhyb3VnaCB0aGUgbWFwPw0K
DQpZZXMsIGV4YWN0bHkgdGhhdC4gSSB0b3RhbGx5IG1pc3NlZCB0aGlzIGRldGFpbC4NCg0KVGhh
bmtzIGEgbG90IHRvIE1hdHRoZXcgYW5kIHlvdSB0byBwb2ludGluZyB0aGlzIG91dC4NCg0KUmVn
YXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gL1Rob21hcw0KPiANCj4+DQo+PiBJbiBvdGhlciB3
b3JkcyB5b3UgY2FuIG9ubHkgcmVkaXJlY3QgdGhlIERNQS1hZGRyZXNzZXMgcHJldmlvdXNseQ0K
Pj4gZ2l2ZW4gb3V0IGludG8gbmlydmFuYSAob3IgYSBkdW1teSBtZW1vcnkgb3Igc2ltaWxhciks
IGJ1dCB5b3Ugc3RpbGwNCj4+IG5lZWQgdG8gYXZvaWQgcmUtdXNpbmcgdGhlbSBmb3Igc29tZXRo
aW5nIGVsc2UuDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4gLS0tDQo+
Pj4gwqBkcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIHwgNSArKysrKw0KPj4+IMKg
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCj4+PiBiL2RyaXZlcnMvdmZpby9wY2kv
dmZpb19wY2lfZG1hYnVmLmMNCj4+PiBpbmRleCBkNGQwZjdkMDhjNTMuLjMzYmM2YTE5MDlkZCAx
MDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+Pj4g
KysrIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPj4+IEBAIC0zMjEsNiAr
MzIxLDkgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX21vdmUoc3RydWN0DQo+Pj4gdmZpb19wY2lf
Y29yZV9kZXZpY2UgKnZkZXYsIGJvb2wgcmV2b2tlZCkNCj4+PiDCoAkJCWRtYV9yZXN2X2xvY2so
cHJpdi0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4+PiDCoAkJCXByaXYtPnJldm9rZWQgPSByZXZv
a2VkOw0KPj4+IMKgCQkJZG1hX2J1Zl9tb3ZlX25vdGlmeShwcml2LT5kbWFidWYpOw0KPj4+ICsJ
CQlkbWFfcmVzdl93YWl0X3RpbWVvdXQocHJpdi0+ZG1hYnVmLT5yZXN2LA0KPj4+ICsJCQkJCcKg
wqDCoMKgwqANCj4+PiBETUFfUkVTVl9VU0FHRV9LRVJORUwsIGZhbHNlLA0KPj4+ICsJCQkJCcKg
wqDCoMKgwqANCj4+PiBNQVhfU0NIRURVTEVfVElNRU9VVCk7DQo+Pj4gwqAJCQlkbWFfcmVzdl91
bmxvY2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4+PiDCoAkJfQ0KPj4+IMKgCQlmcHV0KHByaXYt
PmRtYWJ1Zi0+ZmlsZSk7DQo+Pj4gQEAgLTM0Miw2ICszNDUsOCBAQCB2b2lkIHZmaW9fcGNpX2Rt
YV9idWZfY2xlYW51cChzdHJ1Y3QNCj4+PiB2ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldikNCj4+
PiDCoAkJcHJpdi0+dmRldiA9IE5VTEw7DQo+Pj4gwqAJCXByaXYtPnJldm9rZWQgPSB0cnVlOw0K
Pj4+IMKgCQlkbWFfYnVmX21vdmVfbm90aWZ5KHByaXYtPmRtYWJ1Zik7DQo+Pj4gKwkJZG1hX3Jl
c3Zfd2FpdF90aW1lb3V0KHByaXYtPmRtYWJ1Zi0+cmVzdiwNCj4+PiBETUFfUkVTVl9VU0FHRV9L
RVJORUwsDQo+Pj4gKwkJCQnCoMKgwqDCoMKgIGZhbHNlLA0KPj4+IE1BWF9TQ0hFRFVMRV9USU1F
T1VUKTsNCj4+PiDCoAkJZG1hX3Jlc3ZfdW5sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdik7DQo+Pj4g
wqAJCXZmaW9fZGV2aWNlX3B1dF9yZWdpc3RyYXRpb24oJnZkZXYtPnZkZXYpOw0KPj4+IMKgCQlm
cHV0KHByaXYtPmRtYWJ1Zi0+ZmlsZSk7DQo+Pj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
