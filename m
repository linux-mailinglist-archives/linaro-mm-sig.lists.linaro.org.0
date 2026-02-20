Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALTJGDMtmGmzCAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Feb 2026 10:45:23 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BD807166636
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Feb 2026 10:45:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C16F9401B1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Feb 2026 09:45:21 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011009.outbound.protection.outlook.com [40.107.208.9])
	by lists.linaro.org (Postfix) with ESMTPS id CB3A03F8EE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Feb 2026 09:45:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=irKOSzft;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.208.9 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XVFVKICShWesKy15mlKsFLZklCAllM7tGpZmeN+Fjzu/4/rFBrZ+3IRtAdB4PzU+9919bnmANPaQIFLZ+WBlk4upiMIryzJN/9uWZaZrPijpRY/ITaLFbj7wjFcSw/0BWDRIHaMKqVFZmDty0n6uoHx85RPhk641JJMifyljne1XOOxR7pMxwboso8rGSwhGEmw3Qf6kel1mrTzZyPh8Oufe0PTyQbg+5ybGiAQHjdaVWmjZZJmLs+/ItTRfpi3XOlFqnGfOtklRnuaZUlc/8+ROZDdWR5USzoce/PNQ96PoCMIJv1XTJh8HYygMWqqx1inFhZrxvkdbDi2wJiTmqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nfUaEMeqn7Jk1rrNcnmHv5AW1OxnHQeSGMBKJEnOd24=;
 b=YHm1kPMMeTJiYdIphsC5GOCOE8kZv3IOnkSO1wY0aLlyr9vJ5RicNVBqARUwKvp/BkAA1aT65hVTHbhm9k6czHd0yFRx11iI/Qr9xEm7lj52bmkiVthlzEZApiFP5+eXIcNxvwQnwYutpKl0rTEEnGkMMHYrtnfBJQYmgfHSpJdcMMpo3OVDJnxK2ql8XcV5vhCspOVR6BhstC8ckgAzCjKwlzfkoSM3/smLl7YwMvTukSh2/ufwTsCXTZFJ7h2cW0HNivwY2HxfnX8xx6KuYVClzXpwYc5DwlW2xtiIKmgN/ehu4pL2jDXueLXfgbicJwDC+gWT3zbT/v1nFVsYGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nfUaEMeqn7Jk1rrNcnmHv5AW1OxnHQeSGMBKJEnOd24=;
 b=irKOSzftjKP0e7veuC8iNIkN9Rg3AGlDPvrwsUN+qUh6nPH3SM8qGy4EqcO19R0x0seKxX13PA2g9nPPRf82Y6e6Skm/Ql+7/h1NPbzP9YPgRPAeiyG7u6YOLV6Zg5ED9t7pSHd6kY8I6xsOcSkPIuYDBvNRHSeo88ix3mhzWVE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW3PR12MB4364.namprd12.prod.outlook.com (2603:10b6:303:5c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Fri, 20 Feb
 2026 09:45:16 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9632.015; Fri, 20 Feb 2026
 09:45:16 +0000
Message-ID: <a446b598-5041-450b-aaa9-3c39a09ff6a0@amd.com>
Date: Fri, 20 Feb 2026 10:45:08 +0100
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0119.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW3PR12MB4364:EE_
X-MS-Office365-Filtering-Correlation-Id: c995acdf-11dd-4550-de49-08de7064c06b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TVhPa2JEemxpVWV6T2pvOHdzdnVkcDkxOFJ3Vm1qWUtOZTVkNXBNbHV0ZnpB?=
 =?utf-8?B?YVl0eCtucUttb3VpSDRCZ2xXK0QwemptV0VKQ2RoNXJkQW1nRk13NVNQeTlC?=
 =?utf-8?B?bE9mWlZpYVpmamE0aGp6eXFwZnhoQmxEQUVtMGVsSFN1dFhDRFltNWtmUHp2?=
 =?utf-8?B?SlRYTG1wOGlSTFlZN1h6aG1Dd0xtOUc2RHh5NHNham9pOUFtbE8wTW9uK01N?=
 =?utf-8?B?bGYzL3QyZHdPR215Q05sZHVDdnhYZEV0NGtkeGhhVVQ3NlR0L3pUdFFqbmFH?=
 =?utf-8?B?aG9nWFJiSTBSY3ZCOVZNR3NHcURVeEErNVFrYWgyS0M3dDBEZkRNbUNFYW5D?=
 =?utf-8?B?UFpjYXQyWUxPeEtxUHhmQ1QxMnVmZHFXUFJhVEZobVJOaHpwMDBUaDZFYWl6?=
 =?utf-8?B?dmFtOU9ocnlIUkp5Mis0WExhV05YZDYrcXkyRldHcEw2NkxpZmVNa0dUNWRY?=
 =?utf-8?B?amJyTU5KbjAxdDl4eHBOQzhUb0dWMVovelRIWHVOMFV6S3lqSFo4ZjZnRys2?=
 =?utf-8?B?OWpnVHYzZkN1UHg2WWxIc3RhVm1Xc3lscjZDcXd6YStudHNYdEJJQzUvVzQw?=
 =?utf-8?B?RGtlajk5bHdtVFkrR05yMTMwRkdGbS9yOFltOGM5WFlCUnRFd2Q2WTBtWHZS?=
 =?utf-8?B?UmNiZzNXdThNb3UwWUJpaXJPRWtFbHU0c1NUdStMWURiOTVmc05rQTlmZ2xj?=
 =?utf-8?B?blEzYXlNY3dlRlRzcXNZclhJemtZRFEwTzhyTHliT1JkZHJXU01XVnYzU3Rp?=
 =?utf-8?B?QlFoQ3k1bzlRY2hQRkxjRU5iSmxLd1JudWJwYTl0VWJaY0RjUzRpcTJ3Y1lK?=
 =?utf-8?B?TjBWTXF3ejNCL05NdzdYY3lNd0g4ODhrOFR0ZTJpbTFCU3RqMUJPQTVvRVZn?=
 =?utf-8?B?MXRuWmUrbWZWQjI1OENKR3o4T2ZyVWVyandlNG0rRk94cXRWM1BIZHNJQmhH?=
 =?utf-8?B?cGtGQnFzSkcwRFhOVTVzWjVpTUFndzJrZGNWdU4rSVU4NVpBVkVrbGNYMitK?=
 =?utf-8?B?TjZoMExWUEhWYktQOG1ZTXFlajVEQjJVdERhem9FOUJkK2tjMWVUdStsK0F1?=
 =?utf-8?B?NkRiWGdtSEZvL3JuWFZNY2ZyVS9zVXRZN21ELzdVM0NHSXFVdXBQU2xBLzVL?=
 =?utf-8?B?eHRmTGJRMGdBM1l4eWxLRS9STGdoVFo4aEtMVXJNZVBNbnE5enpPVTNWUE5G?=
 =?utf-8?B?Qk53Nk1OcjVRaXBJTnp1cVo4d29oWUdMelV6MDNrMmFObVAxcEhqUzZoUE1X?=
 =?utf-8?B?WVpWVjRqeG10NElxamN2Z2FwWDBTR3RFaDNqdVJhQzlIUkVqaVJ5elV0RmRU?=
 =?utf-8?B?ejZWdnk1dkdSOE1sWXFnck1QMFVSVE80enJUaEtEOWl1QVlkNE5ubVJZTTJN?=
 =?utf-8?B?TEQ1K3NvbGZNYmVNZUppWFdZd0JDWUZqeFVuUDYzM1I4ZE1UQXR4MU5MeTg4?=
 =?utf-8?B?bjBjZEN3c0VkK0IyUVRJNzI0bzJLWjVWZ2w3eGdSZVFLcjV4NGhpRnlRaEk0?=
 =?utf-8?B?MjhRSXVxWVBkL2h4WGxZWkFPcjB2YURjUW8yV2tyUWZkaGVYbDRMNFVlTjdq?=
 =?utf-8?B?Ui9ob2lzME83VWwvelROMW5Ba0ZiSGJqc3pkaERFa2orcmpVTCtMR2dEMXgx?=
 =?utf-8?B?RzlFNGVVTzd3ejZuU0JibWx5MTAvcUQyREVxWmFLZmlwSDNjL3BmVzJqQi84?=
 =?utf-8?B?VjlmZVlHYi9WSXhuZnRwcjRaODlHc1FaZTc1SzBQTVNScHA4Nll4RzFEY3hF?=
 =?utf-8?B?cHVIVkpDZG4xeEt4cDZmc1BPYlFlRFhQQ3U3SFBLRW9zNS8zUVdkaWs2Q1pJ?=
 =?utf-8?B?bTBldGpqSFRNV0h6b0M3RTRPdE9LNTdwaktwOGdMaXJtbElVdE5aT0ZKS2o5?=
 =?utf-8?B?YVFKZndmZ3poRWlxOVROR0Q1R3hxenF1Tm1IMnBscjNQYkxwMkFiN2laZVVq?=
 =?utf-8?B?ZlRHQ1V1VlpjUEVaVG5ZSUw0a0FTZUNPVDhvWkl4TkoyZ20wRXAyY2xibFdn?=
 =?utf-8?B?dFliUUdzMWJZVDMxbVNudFc2NHF2R2VwLzdxRjgweERxZHRyTEtDSC94ZFpw?=
 =?utf-8?B?NE5zWlE2S1BkZkFRSC9NWWwyRUxCYWp5UHgwYklVVmJQZkVrOXRRRVczeEND?=
 =?utf-8?Q?w1tv06XiJXYkCM7IH48GmyYh6?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NmRLS2dCOUdEYjJBZW9YaDRIWGZ0cS9WaDZxVlJtSGExejVzT2ZFVjFyQmVP?=
 =?utf-8?B?Wml2TkNUVG9VWTlFeUxURW1kRG5jeVM3cG5lOWZmUEthbHEzTU1vTG93SU5y?=
 =?utf-8?B?NmZlbDA4VUczM2FkQSttOCsrWVRrVElvZUpFbzZuUDE0d0piTVBadlRQRWNm?=
 =?utf-8?B?c2ZSK3dubEl1Tk0wcVM1eWVkb2Y1ZmRQVlR4enJ4NU9IR2p0aXlrZUNmL0ZW?=
 =?utf-8?B?MW50MnRnMkJZeGFEaW1qMWszeExSK3g2b3pRWlpYSVI1M2gxVkJ4QXJWYkl5?=
 =?utf-8?B?RjZYaFQ3UHExb1g2Kzk0UkU4TDQ0THNkRGdmK0RLUkIyWFA3bTc4a1VrVnVh?=
 =?utf-8?B?VzY3TkhJUW8vWGNFd1VDZjlsZ2QwSjUrNlcydmkwWmV1OWV1TmRGTmpRR1JK?=
 =?utf-8?B?N2RueUs2RXZUVnpVSjVtdHRMajN0d2hDM3dCa01YTEpzd0gwSGtqSTl1NDdp?=
 =?utf-8?B?Ni9SSEMrUWR3MHBjTjd2U0RiLzdyTjAxbGNXa21pOGh5R3JwWTJ4ckwxR3lw?=
 =?utf-8?B?Wkhnbnp6YWwrV0pjTlZ2VkIwdXl6aVNkS0M1KzFWZFFUU3YwQml4VWwrdVlK?=
 =?utf-8?B?SDZZU1BZdjF0eHM2L1lwQlBMMkx4YUI3SSt2SFFPRVFzd2EvcGN2VzdlSGkr?=
 =?utf-8?B?WFJXZVJITEFwZUR3RmdOdTJhcnRTSmtvd3haOXE5UEl2UUtFZmp1N2UyNmkw?=
 =?utf-8?B?d2U0L21mVWZCbkRrNXZIK2Qyd1ZwQk82MW1zd2MzQmJSakkrckkzK2kwT2JW?=
 =?utf-8?B?TWQ1VWNrRFA2MmR4N3hzNk0wVCtxeUtObTlxdlZyYzc2NHE5OENLdFdwcDVh?=
 =?utf-8?B?aGZHSG9CQy9DUGNTb29KUnFzL0k0czNQOXhwS2VKRzI1RXdQRVMrWE04T0c2?=
 =?utf-8?B?a2pRQkU2Z0c3MnIwZHVFUVFQN3VCb3ZGUHFHV1ZUdVhNOWVoaE5JZWYrSTJt?=
 =?utf-8?B?K2dLMEozeG5Jcy90d09CdXllZzFCdUNIUlI1SVliT3FVMUIybzYwUTRldTBF?=
 =?utf-8?B?Zi9ROXhtTXFlRzJiY0JvVnhpb2pYSVBTRWtudUNTVTE3bkFXdHBFTlJpMkNm?=
 =?utf-8?B?enJDUjB1L21lYm80UlpzSG9EbFphaisrYWpzbE1tWWkrT05RVlJxTDltNEE5?=
 =?utf-8?B?dWp4RjJxbWRzMDNkenlhRHhDWjBxUUpJYVJkV1pyT29xYWduVnBBS3FUN0NL?=
 =?utf-8?B?K1Fqb1JDL3RoaUs1K3FiNG1JQXFiWWh5U2VSLzlKQ1ZCZ05mbFNoU3ZDTFVn?=
 =?utf-8?B?dXhEWlhkaUh1UWRCVjNRbkhBa0dyMGNGbTh0ME44aWhoUVVaV21CUDlOT0Vq?=
 =?utf-8?B?bWxxTmtmRlpMYmkrQ0VMOVk5cHpWNkJZY0ErRzFZY3cydktiNWpuWDRXeGNu?=
 =?utf-8?B?RmYvREMxRW9pOUFFczBGbFZvQmdzMmtRbXdPVklSZTRwSUNTNllKWVpxWXdU?=
 =?utf-8?B?TkVrQ0VuWVhYdHUzWWV1VVdzZ3M2eTM5RU1ZdmJEbWhnSWp6aEx6VGJDWklM?=
 =?utf-8?B?ZXZ3L1EwcHlNUW8rQTdST3pIMXBMMXZtNWh3ZGNnNlJEckh2Nko4UGV2YitV?=
 =?utf-8?B?bnZZeUNESlpIczlxWnFEQzhuLy8xOWdjNU90SE42dXRQM0I4aE9DWStneC94?=
 =?utf-8?B?QWRSYlZJVTlOUUVJT0ltNmQxcmsxYmxIUTdpMWhiaWFGSmxuSHJRS1JjUWVY?=
 =?utf-8?B?Q0dTblgxb2ZEY0Ria0ZTVGo3akNHSnYxTHlxTlMxdFlPcXZGLzB2NXBPWFp5?=
 =?utf-8?B?dVBHdWlrOUo0NG9OUlJ2Zk51L1c2bEhkdWNFREhKYTl3Uyt1UU1kdnBNeTY2?=
 =?utf-8?B?a25LYnJuNzQxUGpRM3ZOTTkrUkhJb01SSmdDTmRIMlE3OW0vN2Fnd3ZOR1lT?=
 =?utf-8?B?NGR5eDNOSWYxV0k1Qm9vdmNXVXpiNHA2SDVwTXNXaWVLWXRCRXljRWltZkho?=
 =?utf-8?B?cUx0VUM2UUZCaDhqK0VtN2xrdGdydktqNzBGTGU3bEZ0eU40S2dxQlAwNFVR?=
 =?utf-8?B?dWlPYVFZbDlmaStXN2dheWdsTXNBUXY2NStrbTJrdjNidlF4TlYveVpKNWRO?=
 =?utf-8?B?bkQvRnA2RVd6ZitqV1lja1I5Tnp2VG51emRYb0FOcFYzc1E3bEJRRWxzem9H?=
 =?utf-8?B?R2Y0aVFKa2htb0ttb3RLVmc0dnNpczlJV0I3cUg3eXoxZmxxb3NqWFhIV0Nr?=
 =?utf-8?B?U2RXZjNLSGtkMkNRdkk4M3VLUzFYM2RHMnNRZlQ5RUk4ZTlHd29nU25tNEVQ?=
 =?utf-8?B?TFR0T0dNQzFRcmRTVTNWQXROa2V4K2pVQ1pyTjFFc0FlRnJzaEhKdVVmUnlH?=
 =?utf-8?Q?7Yj5Y0QN0p9+QtEAzH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c995acdf-11dd-4550-de49-08de7064c06b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2026 09:45:16.2283
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4u9AU1e1kuNGytMCDKLprhAe1+6RoLdYPuVVlpxBCGtR/lTy0SBwk5TETjfTIyDL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4364
X-Spamd-Bar: -----
Message-ID-Hash: U65ZHCV44NDXY2TSJE6BJA62326NGQUT
X-Message-ID-Hash: U65ZHCV44NDXY2TSJE6BJA62326NGQUT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>, Yosry Ahmed <yosryahmed@google.com>, Shakeel Butt <shakeel.butt@linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U65ZHCV44NDXY2TSJE6BJA62326NGQUT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.979];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid]
X-Rspamd-Queue-Id: BD807166636
X-Rspamd-Action: no action

T24gMi8yMC8yNiAwMjoxNCwgVC5KLiBNZXJjaWVyIHdyb3RlOg0KPiBPbiBXZWQsIEZlYiAxOCwg
MjAyNiBhdCA5OjE14oCvQU0gRXJpYyBDaGFudWRldCA8ZWNoYW51ZGVAcmVkaGF0LmNvbT4gd3Jv
dGU6DQo+IA0KPiBIaSBFcmljLA0KPiANCj4+IEFuIGVhcmxpZXIgc2VyaWVzWzFdIGZyb20gTWF4
aW1lIGludHJvZHVjZWQgZG1lbSB0byB0aGUgY21hIGFsbG9jYXRvciBpbg0KPj4gYW4gYXR0ZW1w
dCB0byB1c2UgaXQgZ2VuZXJhbGx5IGZvciBkbWEtYnVmLiBSZXN0YXJ0IGZyb20gdGhlcmUgYW5k
IGFwcGx5DQo+PiB0aGUgY2hhcmdlIGluIHRoZSBuYXJyb3dlciBjb250ZXh0IG9mIHRoZSBDTUEg
ZG1hLWJ1ZiBoZWFwIGluc3RlYWQuDQo+Pg0KPj4gSW4gbGluZSB3aXRoIGludHJvZHVjaW5nIGNn
cm91cCB0byB0aGUgc3lzdGVtIGhlYXBbMl0sIHRoaXMgYmVoYXZpb3IgaXMNCj4+IGVuYWJsZWQg
YmFzZWQgb24gZG1hX2hlYXAubWVtX2FjY291bnRpbmcsIGRpc2FibGVkIGJ5IGRlZmF1bHQuDQo+
Pg0KPj4gZG1lbSBpcyBjaG9zZW4gZm9yIENNQSBoZWFwcyBhcyBpdCBhbGxvd3MgbGltaXRzIHRv
IGJlIHNldCBmb3IgZWFjaA0KPj4gcmVnaW9uIGJhY2tpbmcgZWFjaCBoZWFwLiBUaGUgY2hhcmdl
IGlzIG9ubHkgcHV0IGluIHRoZSBkbWEtYnVmIGhlYXAgZm9yDQo+PiBub3cgYXMgaXQgZ3VhcmFu
dGllcyBpdCBjYW4gYmUgYWNjb3VudGVkIGFnYWluc3QgYSB1c2Vyc3BhY2UgcHJvY2Vzcw0KPj4g
dGhhdCByZXF1ZXN0ZWQgdGhlIGFsbG9jYXRpb24uDQo+IA0KPiBCdXQgQ01BIG1lbW9yeSBpcyBz
eXN0ZW0gbWVtb3J5LCBhbmQgcmVndWxhciAobm9uLUNNQSkgbW92YWJsZQ0KPiBhbGxvY2F0aW9u
cyBjYW4gb2NjdXIgb3V0IG9mIHRoZXNlIENNQSBhcmVhcy4gU28gdGhpcyBzcGxpdHMgc3lzdGVt
DQo+IG1lbW9yeSBhY2NvdW50aW5nIGJldHdlZW4gbWVtY2cgKGZyb20gWzJdKSBhbmQgZG1lbS4g
SWYgSSB3YW50IHRvIHB1dA0KPiBhIGxpbWl0IG9uIHN5c3RlbSBtZW1vcnkgdXNlIEkgaGF2ZSB0
byBhZGp1c3QgbXVsdGlwbGUgbGltaXRzIChtZW1jZyArDQo+IGRtZW1zKSBhbmQga25vdyBob3cg
dG8gZGl2aWRlIHRoZSB0b3RhbCBiZXR3ZWVuIHRoZW0gYWxsLg0KPiANCj4gSG93IGRvIHlvdSBl
bnZpc2lvbiB1c2luZyB0aGlzIGNvbWJpbmF0aW9uIG9mIGRpZmZlcmVudCBjb250cm9sbGVycz8N
Cg0KWWVhaCB3ZSBoYXZlIHRoaXMgcHJvYmxlbSBwcmV0dHkgbXVjaCBldmVyeXdoZXJlLg0KDQpU
aGVyZSBhcmUgYm90aCB1c2UgY2FzZXMgd2hlcmUgeW91IHdhbnQgdG8gYWNjb3VudCBkZXZpY2Ug
YWxsb2NhdGlvbnMgdG8gbWVtY2cgYW5kIHdoZW4geW91IGRvbid0IHdhbnQgdGhhdC4NCg0KPkZy
b20gd2hhdCBJIGtub3cgYXQgdGhlIG1vbWVudCBpdCB3b3VsZCBiZSBiZXN0IGlmIHRoZSBhZG1p
bmlzdHJhdG9yIGNvdWxkIHNheSBmb3IgZWFjaCBkbWVtIGlmIGl0IHNob3VsZCBhY2NvdW50IGFk
ZGl0aW9uYWxseSB0byBtZW1jZyBvciBub3QuDQoNClVzaW5nIG1vZHVsZSBwYXJhbWV0ZXJzIHRv
IGVuYWJsZS9kaXNhYmxlIGl0IGdsb2JhbGx5IGlzIGp1c3QgYSB3b3JrYXJvdW5kIGFzIGZhciBh
cyBJIGNhbiBzZWUuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFRoYW5rcywNCj4g
VC5KLg0KPiANCj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTAzMTAtZG1l
bS1jZ3JvdXBzLXYxLTAtMjk4NGMxYmM5MzEyQGtlcm5lbC5vcmcvDQo+PiBbMl0gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMTE2LWRtYWJ1Zi1oZWFwLXN5c3RlbS1tZW1jZy12My0w
LWVjYzZiNjJjYzQ0NkByZWRoYXQuY29tLw0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEVyaWMgQ2hh
bnVkZXQgPGVjaGFudWRlQHJlZGhhdC5jb20+DQo+PiAtLS0NCj4+IENoYW5nZXMgaW4gdjI6DQo+
PiAtIFJlYmFzZSBvbiBNYXhpbWUncyBpbnRyb2R1Y3Rpb24gb2YgZG1lbSB0byB0aGUgY21hIGFs
bG9jYXRvcjoNCj4+ICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwMzEwLWRtZW0t
Y2dyb3Vwcy12MS0wLTI5ODRjMWJjOTMxMkBrZXJuZWwub3JnLw0KPj4gLSBSZW1vdmUgdGhlIGRt
ZW0gcmVnaW9uIHJlZ2lzdHJhdGlvbiBmcm9tIHRoZSBjbWEgZG1hLWJ1ZiBoZWFwDQo+PiAtIFJl
bW92ZSB0aGUgbWlzcGxhY2VkIGxvZ2ljIGZvciB0aGUgZGVmYXVsdCByZWdpb24uDQo+PiAtIExp
bmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjAxMzAtZG1hYnVmLWhlYXAt
Y21hLWRtZW0tdjEtMS0zNjQ3ZWE5OTNlOTlAcmVkaGF0LmNvbQ0KPj4NCj4+IC0tLQ0KPj4gRXJp
YyBDaGFudWRldCAoMSk6DQo+PiAgICAgICBkbWEtYnVmOiBoZWFwczogY21hOiBjaGFyZ2UgZWFj
aCBjbWEgaGVhcCdzIGRtZW0NCj4+DQo+PiBNYXhpbWUgUmlwYXJkICgyKToNCj4+ICAgICAgIGNt
YTogUmVnaXN0ZXIgZG1lbSByZWdpb24gZm9yIGVhY2ggY21hIHJlZ2lvbg0KPj4gICAgICAgY21h
OiBQcm92aWRlIGFjY2Vzc29yIHRvIGNtYSBkbWVtIHJlZ2lvbg0KPj4NCj4+ICBkcml2ZXJzL2Rt
YS1idWYvaGVhcHMvY21hX2hlYXAuYyB8IDE1ICsrKysrKysrKysrKysrLQ0KPj4gIGluY2x1ZGUv
bGludXgvY21hLmggICAgICAgICAgICAgIHwgIDkgKysrKysrKysrDQo+PiAgbW0vY21hLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAyMCArKysrKysrKysrKysrKysrKysrLQ0KPj4gIG1tL2Nt
YS5oICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMgKysrDQo+PiAgNCBmaWxlcyBjaGFuZ2Vk
LCA0NSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4gLS0tDQo+PiBiYXNlLWNvbW1p
dDogOTQ4ZTE5NWRmYWE1NmU0OGVhYmRhNTkxZjk3NjMwNTAyZmY3ZTI3ZQ0KPj4gY2hhbmdlLWlk
OiAyMDI2MDEyOC1kbWFidWYtaGVhcC1jbWEtZG1lbS1mNDEyMGEyZGY0YTgNCj4+DQo+PiBCZXN0
IHJlZ2FyZHMsDQo+PiAtLQ0KPj4gRXJpYyBDaGFudWRldCA8ZWNoYW51ZGVAcmVkaGF0LmNvbT4N
Cj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
