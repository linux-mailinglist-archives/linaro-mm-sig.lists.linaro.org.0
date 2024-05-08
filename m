Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3E28BF94F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 11:11:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19236447D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 09:11:03 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2077.outbound.protection.outlook.com [40.107.220.77])
	by lists.linaro.org (Postfix) with ESMTPS id 79B9E3F38C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 09:10:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=bX0bqgBf;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.77 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=My5qhxAmzVmdgBh79qKVHVfMdJznU7H4jbVf33VvRviwNZasSFZ4kljcBllCYda8j8eQ3X7onCR2xjKB7iJA33MS0ZSFXHwt05q8XUJBF5Q4xXPWF1YzLzYhcsqDbF+2PjOLznUxwDr1R9ZLCDb5ufh7PEq2G91Xqgw/ya8hSMnsa7yQpRiVboQnMQPwHR9d6ngd4HfQLhuzXZv1y2jTQl3b2Gj9cZBhUk/7esOM17nqYXIqoWzzIFp8mjfCWomDmGk5owr+9fokbwdUhNNnnctJA2YFYL3um+vw8toxL2C+LsgAXEIOlORtTRp9t7fOgGx0OaQSN/EkTBGO2LS7Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UU6nmZFAcOIP94F1tbjaYt199MHcED5hdIHfXhKNcMQ=;
 b=IJL8VItat2AzvOlXG0PxNdGucQlU6vpCLAlEoVuHE+Xsi5UDasZ4yk9L2TklnneB4JKgfG70HHL7e9mHcYx8uCcN6WfM5s0JE7KrrSl4vGhbo+CrVU09m5qpBadLGRjP62ae2tE+IXVVJ0TI0ezuupChsrQP39LY9GOk+ZCkzbfMnSf3xsyl8gKXnIXrMJSCLnDg4+W9lvpGJaT+fbnizjPhT6BA4zIHwRQCnnYwkprlduT7OAIYjpTqX0PDngDMp/KnG5RiSvrmBEWsDX0ZKNWBoudCggqoZY7654/3YsndKr0Plis5GaT1ylWkwuTPWbqVyNRR4YWMuBy8K4BWUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UU6nmZFAcOIP94F1tbjaYt199MHcED5hdIHfXhKNcMQ=;
 b=bX0bqgBfVTGRRlZ2VTKzDrxJC7OoAjIDqc8KYgxNblspLyj8fu/q3jsTfSyqnqZ/9AJnyVuxbtucp2vlyns8Ek+skn4KUnYGfKBM3g1m8/2ZatadvPvYYXqrFCUxKWK5nK2h7LWdee0aVDRP45bCkw11P84lOTiAsnMmUBAQ6J4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB7823.namprd12.prod.outlook.com (2603:10b6:a03:4c9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.43; Wed, 8 May
 2024 09:10:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%2]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 09:10:46 +0000
Message-ID: <dab85d87-5b4d-400d-bf83-40008f053761@amd.com>
Date: Wed, 8 May 2024 11:10:38 +0200
User-Agent: Mozilla Thunderbird
To: Christian Brauner <brauner@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com>
 <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
 <d68417df-1493-421a-8558-879abe36d6fa@gmail.com>
 <20240508-unwiederholbar-abmarsch-1813370ad633@brauner>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20240508-unwiederholbar-abmarsch-1813370ad633@brauner>
X-ClientProxiedBy: FR4P281CA0291.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e7::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB7823:EE_
X-MS-Office365-Filtering-Correlation-Id: 838e5af2-23e5-4d11-bab1-08dc6f3ebeca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|7416005|366007|376005;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NjZrWkpCL0c1YXBYekpwUkdRRGlkWHRVSFJTMklHVTFJd1piejZZQVVhVlBB?=
 =?utf-8?B?Z1loSXduR1V1R1pXNWJXb3VFdnlnWDZaOGxsUzltWlZyMW5NUEFzWUlIT29a?=
 =?utf-8?B?ekFPa0w4T1hYaURXaFZLd2FUK0lQdm9OU2V6SS8rWVVXQ0hYc2VVNnNwdTBR?=
 =?utf-8?B?bDV3ZUErN2tJWlNkLzNpZC90blhoSmg2Y2xSODdEOWllNWxTaXo2ejU4S3p3?=
 =?utf-8?B?MzNOQU1ISUJFbHBmbjE5UUgzWGswa1EzaEQwWmdqOEIydG9KdGdxWVZ5dW1S?=
 =?utf-8?B?WlMreWUzMzZteEVDbTBZWjI2NGo2RWY5VkFJalg4SU93OGwwL1ZZZWFlN2l0?=
 =?utf-8?B?dDJuRE5nYUZVazErc2g2K3FrMnNWTmg1ZWltd0JyWWtObzZ2dXhObHVoK2sz?=
 =?utf-8?B?YllPbkhURW83bldPWFExVFVzV2lHQ0kycmhvWkZDNDBWSmNZNlpNOWdzZ2ND?=
 =?utf-8?B?YmljeDV2NGpPS3YrMk5LTU1rVUcxUTNScVppRTAzZGxFdzBlRnl1VkptVUo0?=
 =?utf-8?B?Q3BZUjhJT1FKYW1EbkhrbU0zRFhnWm85TVd3aWUvT0xqM21QNmpTRkRZT1dV?=
 =?utf-8?B?QmY4WVhNcHZYV2xWUWhEVHJlKzBMWHV0TFZ0cnJMeUpRdndtNWVBMDdaRHB1?=
 =?utf-8?B?RHVHM2NqVDlSU3ozdTdKak5KV3JlM05lbVNMNm1UTnd6SC8zNmdBWnpBV21n?=
 =?utf-8?B?L2ZMcVpBMTVyZGg2SlJhNUs5bm40bEZYaU1DZm1ub1NTODVyOVk4dFJaZzU3?=
 =?utf-8?B?Nk1MMW8xS1dBa3AxcGpSZlMrZE1FTTN4ays1TWJXd0k1cThwVDhKRVhPNXVs?=
 =?utf-8?B?MmZqcy9KSWxkSGd0UU5yREU3bzZFdW14ZUNEUTNDT3JHbWF2Um42djc1MTN1?=
 =?utf-8?B?YXRvNTVzSW5lSmpLTVdaRnlxeW5EN1d3REwxdlUrUFdkQWdDQmlKZHI2ekFQ?=
 =?utf-8?B?SVdqUVQybzRaU0Y0UCtmdFc0dXVIU3hxeGJFN3ZwTDhlT0Joc1RxczNhKzl5?=
 =?utf-8?B?eU1lWHQraGp3QmJjQ1lTNXFCQnoyZGE2VE1CV3RWODJxSytWVGN1QzdYemhI?=
 =?utf-8?B?UGM1ZllvMDFzUGhVcnNQR0lyNVpSaFZ6aDFmbmVkTnY3RWVwc2MwZC8vUFFL?=
 =?utf-8?B?eEJxNWNVWDBxM3lOblQyMUJzSzBqODRkWkhnejV6TlVkdGgzMUhxdXA2V054?=
 =?utf-8?B?VytvWHh3NmtVVEw3eS81RFhZS2tzRzExWEM1bWJpbHNySklRYUhaaDJQOWVt?=
 =?utf-8?B?R09MN0dXMlVDQ0pxSDh2amVBL0lSTVdvaENLbXFmVjNLbnhGeGhjeWJlaHo3?=
 =?utf-8?B?NzFFckVIR1huWFAwblZmMjhTRitKL2czUHVoSytzOHUrNk9xUDlpMnlsZDhr?=
 =?utf-8?B?UmhPd2ZHQUtzVVBWVlZ3RzFlQ2xVNWlaaS9uVkt1eTdpN2lnamtuMW1YWEZ4?=
 =?utf-8?B?cXpCd2xWVnBrZWNOTDNQWFJOZ1NhOXdqVi83MWVtQUx2WEdzWDRXSVlJblFI?=
 =?utf-8?B?ZHJQbk5HcVpaQXBWZnJSVlhvVFMvVTBjdDV5RHVBMnBYYXA5OXB4RkNndDQ5?=
 =?utf-8?B?VGhndGxpWCtXS01DMU9kbFZiTFNPYXIxemlyaEN1bHNsei8zZkh0Qy8xaVor?=
 =?utf-8?B?TEJRWlRUNk5nMnRpa2V5MHdwcWtjdGVCMXZFZXpJVko4UVNXSzNzdzdWSGxV?=
 =?utf-8?B?Rk5WOGVxYUhmbHVSYU9CUDlhNWVEMEV5UklRMlpJaGo4cm1sejVMM3V3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(7416005)(366007)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bVJ1Skt5b3UxU0dsQUZqam5GRC9FWnEvODUxWGR6bFhGMk1pbE5QZkYyb0hY?=
 =?utf-8?B?TmVhRExrMkpIbG1hT2NaWFNsREJJN25HZnJYZWVTNUNlbFVNbkVCNkpEY0wy?=
 =?utf-8?B?YUFxWjc1aUQ1cisxUmxZWHhtTjJjUkFLWVhScFE2NWllOFd5S0tkYUV6TVph?=
 =?utf-8?B?MUlxKzZGUU5KblJrUk1PRVRNMTJ5Z3hUWVA3M1JQcnZZemNWVnp1NmwrNkxC?=
 =?utf-8?B?N1JDZTRzZTdJRFBEYjFObHlhcy95R3gvZWZPMjJ5bGgwSVUxTmk0T0pmaFB1?=
 =?utf-8?B?Y0pXZ1J4TFlnVGRBaVg0RkNGRzhmWHFOS3B0bzM5ekdUdU1UQWlwODlBeFhx?=
 =?utf-8?B?RXhCTXRybHQ4SXBORG11WC9vaW5qYXY3L2gyTVo3V3A4bGdUSTZXTy9OQ1d3?=
 =?utf-8?B?TjhRWDNtREgraTdaNC9SNHZ5VUY4NFk0eEZ6N2J5c0FqdHdmVXMxMjVkbW41?=
 =?utf-8?B?SGg0TlpscUtuMHdPSFU2RzdVUUZkYW5RT29iV0FldlZCYmdnZGRjODhiUDdF?=
 =?utf-8?B?YXFxY2l2RzFkWjJidkxZZXNOYmlLYUJ1ODFrdE0rOEVzdE0vbWtRVVlqb0Fr?=
 =?utf-8?B?M0RIa0crelVsVzdyaWtzdWh4Q1BON1VjZzRlU0ZhOEpueVlFd2FIck1GWUNG?=
 =?utf-8?B?WitFalhjc01YVDB4UWVuTC9TQnZTSVg0eWhKbmJ6TTVtYVhpb2t2SXdoWURu?=
 =?utf-8?B?dXFzREp2UnNNWFRsUko4RGE1LzA5TFkxUTRrVndNNzA5bDI0VEhDN2JhM0d1?=
 =?utf-8?B?TlQ0MXdYL0ZtZHhNS0pqRTJJaXI3S1F4eUhuUUJuZW1sMzA3U2tlTGRmbjM5?=
 =?utf-8?B?NXUvelBpWlYzOFAvZVR2MGZKR25vMzJ5emduU2xPdWZ1Q2NpLzg2SllEcnc0?=
 =?utf-8?B?V05WKzJ0S1pubWdQSi9UNHhYR3RrSGR4THZyRGhEM2psVWViWEFoTlp5UkVC?=
 =?utf-8?B?UkJESUZsOExQS1NZdUtDZ3J5U1A0WEtib0JCK1Y5cTVFYzNYVjZienpINmhM?=
 =?utf-8?B?NWtTTXFxUW1STFFMMXFDcE9YaXF4bjVFUXNBZ2xlL3hvSlZDdURzZU0zekVJ?=
 =?utf-8?B?UkN2dEx5VFc5YTRQU0cwQ0M1VlcvcmNYUFNnTmJpQy8rcktiOW1lZ1czdzZD?=
 =?utf-8?B?ZnpaZERHVDI3bTF1ajBzdXZ6R3FUL1gzNzNhRzhQOTdtSHJWaGpMM3RJOTNR?=
 =?utf-8?B?NCtIalFBclp3Nmh1NXltT2ZjbkQ5R2hrSmYrYkVZd3FXeDdyOHB3TnltUzFm?=
 =?utf-8?B?bWQ2UTZJR1hQT21nU3JHTXZaWERXME04KzRMU0lIU3VxUjhMeEdNWjFsMnNJ?=
 =?utf-8?B?WUphSzFlR0haS09PT3RQRUtHR2FTZXlCMW1mVmVDZGYybFowVEJUOU1VSDlj?=
 =?utf-8?B?MUo4eGFqOEZwZXdadC91SGNVKzBnQ3dtWHdENkR3eFhTQkVKYkZ6YWRaVXk4?=
 =?utf-8?B?R2lxSDlURnZLL29SeUlwTjJ2VjBNU2hSb2NNNTlaemNFdFp4MVd5TC9wdS9B?=
 =?utf-8?B?bTlCVnROV3RFQUxKZStqNG81TEZrNWxrYVVjYTFCNjNsUlFLb0xyUUl4R3Ru?=
 =?utf-8?B?V2Z0MFRDUVZCaTFVSUg5Z1hqczRLcnhBV2xIODdaWW12enJtaWR6dVAraU1D?=
 =?utf-8?B?NU1OUDFmNkx6bk00b0EzUmJDelFKOE9PeW1XN2dWdmF3MXNDNkkvL2U0eCtl?=
 =?utf-8?B?TVVmOGZKaEtrY2FKSjFiSFVCS3B1RER5Z05CR1djRVdyY2Y2eFYxNHE3ckpm?=
 =?utf-8?B?Sndiek01bVladDY1WVoweThqcUpqUDZ2UjIxKzdnTzFvTE8xMjZKV3l2VzZo?=
 =?utf-8?B?dUpzNDZyMnAxVGt6N21jRHlrY3BleCtTSXVsL3pubkZPaFBlbzJaM0lwbnlN?=
 =?utf-8?B?M3RFcFlSVmd0ZVQvQTNVV3R5c2k1a2xIamdxNHQ3NlJuS1VLakJIbXl5UVpa?=
 =?utf-8?B?Qko3TnIzN0s5TWpjSkRLSWFic0V3SGt6VWVnZjBpc1pxbEwwT0dkMXZmQnE3?=
 =?utf-8?B?cUxXUXgzRXNib05HL0VGekt0MVBkZGN4dmRaeDdCVkhxc3IvUlFNZmN6WTRT?=
 =?utf-8?B?Q0djRFdVS1dhU3VwSE51dEFWTzNySUFsMmhrUmxodVEzT1hWVG8zb1l0YUJZ?=
 =?utf-8?Q?muW53MlUTzB9DpdAdoXPoFCDA?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 838e5af2-23e5-4d11-bab1-08dc6f3ebeca
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 09:10:46.0356
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vovw0iRn1C7grfMVmfzmyZUXc6aEup11el3Tw+QGk91mpYGH+aCDh8Gq4Rbc1ksJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB7823
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 79B9E3F38C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,zeniv.linux.org.uk,chromium.org,kernel.dk,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail-co1nam11on2077.outbound.protection.outlook.com:rdns];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[amd.com:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.77:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DNSWL_BLOCKED(0.00)[40.107.220.77:from,2603:10b6:510:13c::22:received];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: LX6VYA665ULVW2RWFORWSEV7X2OIKBPI
X-Message-ID-Hash: LX6VYA665ULVW2RWFORWSEV7X2OIKBPI
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linus Torvalds <torvalds@linux-foundation.org>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LX6VYA665ULVW2RWFORWSEV7X2OIKBPI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDUuMjQgdW0gMTA6MjMgc2NocmllYiBDaHJpc3RpYW4gQnJhdW5lcjoNCj4gT24gVHVl
LCBNYXkgMDcsIDIwMjQgYXQgMDc6NDU6MDJQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToNCj4+IEFtIDA3LjA1LjI0IHVtIDE4OjQ2IHNjaHJpZWIgTGludXMgVG9ydmFsZHM6DQo+Pj4g
T24gVHVlLCA3IE1heSAyMDI0IGF0IDA0OjAzLCBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+IHdyb3RlOg0KPj4+PiBJdCdzIHJlYWxseSBhbm5veWluZyB0aGF0IG9uIHNvbWUgZGlzdHJv
cy9idWlsZHMgd2UgZG9uJ3QgaGF2ZSB0aGF0LCBhbmQNCj4+Pj4gZm9yIGdwdSBkcml2ZXIgc3Rh
Y2sgcmVhc29ucyB3ZSBfcmVhbGx5XyBuZWVkIHRvIGtub3cgd2hldGhlciBhIGZkIGlzIHRoZQ0K
Pj4+PiBzYW1lIGFzIGFub3RoZXIsIGR1ZSB0byBzb21lIG1lc3N5IHVuaXF1ZW5lc3MgcmVxdWly
ZW1lbnRzIG9uIGJ1ZmZlcg0KPj4+PiBvYmplY3RzIHZhcmlvdXMgZHJpdmVycyBoYXZlLg0KPj4+
IEl0J3Mgc2FkIHRoYXQgc3VjaCBhIHNpbXBsZSB0aGluZyB3b3VsZCByZXF1aXJlIHR3byBvdGhl
ciBob3JyaWQNCj4+PiBtb2RlbHMgKEVQT0xMIG9yIEtDTVApLg0KPj4+DQo+Pj4gVGhlcmUnW3Mg
YSByZWFzb24gdGhhdCBLQ01QIGlzIGEgY29uZmlnIG9wdGlvbiAtICpzb21lKiBvZiB0aGF0IGlz
DQo+Pj4gaG9ycmlibGUgY29kZSAtIGJ1dCB0aGUgImNvbXBhcmUgZmlsZSBkZXNjcmlwdG9ycyBm
b3IgZXF1YWxpdHkiIGlzIG5vdA0KPj4+IHRoYXQgcmVhc29uLg0KPj4+DQo+Pj4gTm90ZSB0aGF0
IEtDTVAgcmVhbGx5IGlzIGEgYnJva2VuIG1lc3MuIEl0J3MgYWxzbyBhIHBvdGVudGlhbCBzZWN1
cml0eQ0KPj4+IGhvbGUsIGV2ZW4gZm9yIHRoZSBzaW1wbGUgdGhpbmdzLCBiZWNhdXNlIG9mIGhv
dyBpdCBlbmRzIHVwIGNvbXBhcmluZw0KPj4+IGtlcm5lbCBwb2ludGVycyAoaWUgaXQgZG9lc24n
dCBqdXN0IHNheSAic2FtZSBmaWxlIGRlc2NyaXB0b3IiLCBpdA0KPj4+IGdpdmVzIGFuIG9yZGVy
aW5nIG9mIHRoZW0sIHNvIHlvdSBjYW4gdXNlIEtDTVAgdG8gc29ydCB0aGluZ3MgaW4NCj4+PiBr
ZXJuZWwgc3BhY2UpLg0KPj4+DQo+Pj4gQW5kIHllcywgaXQgb3JkZXJzIHRoZW0gYWZ0ZXIgb2Jm
dXNjYXRpbmcgdGhlIHBvaW50ZXIsIGJ1dCBpdCdzIHN0aWxsDQo+Pj4gbm90IHNvbWV0aGluZyBJ
IHdvdWxkIGNvbnNpZGVyIHNhbmUgYXMgYSBiYXNlbGluZSBpbnRlcmZhY2UuIEl0IHdhcw0KPj4+
IGRlc2lnbmVkIGZvciBjaGVja3BvaW50LXJlc3RvcmUsIGl0J3MgdGhlIHdyb25nIHRoaW5nIHRv
IHVzZSBmb3Igc29tZQ0KPj4+ICJhcmUgdGhlc2UgZmlsZSBkZXNjcmlwdG9ycyB0aGUgc2FtZSIu
DQo+Pj4NCj4+PiBUaGUgc2FtZSBhcmd1bWVudCBnb2VzIGZvciB1c2luZyBFUE9MTCBmb3IgdGhh
dC4gRGlzZ3VzdGluZyBoYWNrLg0KPj4+DQo+Pj4gSnVzdCB3aGF0IGFyZSB0aGUgcmVxdWlyZW1l
bnRzIGZvciB0aGUgR1BVIHN0YWNrPyBJcyBvbmUgb2YgdGhlIGZpbGUNCj4+PiBkZXNjcmlwdG9y
cyAidHJ1c3RlZCIsIElPVywgeW91IGtub3cgd2hhdCBraW5kIGl0IGlzPw0KPj4+DQo+Pj4gQmVj
YXVzZSBkYW1taXQsIGl0J3MgKnNvKiBlYXN5IHRvIGRvLiBZb3UgY291bGQganVzdCBhZGQgYSBj
b3JlIERSTQ0KPj4+IGlvY3RsIGZvciBpdC4gTGl0ZXJhbGx5IGp1c3QNCj4+Pg0KPj4+ICAgICAg
ICAgICBzdHJ1Y3QgZmQgZjEgPSBmZGdldChmZDEpOw0KPj4+ICAgICAgICAgICBzdHJ1Y3QgZmQg
ZjIgPSBmZGdldChmZDIpOw0KPj4+ICAgICAgICAgICBpbnQgc2FtZTsNCj4+Pg0KPj4+ICAgICAg
ICAgICBzYW1lID0gZjEuZmlsZSAmJiBmMS5maWxlID09IGYyLmZpbGU7DQo+Pj4gICAgICAgICAg
IGZkcHV0KGZkMSk7DQo+Pj4gICAgICAgICAgIGZkcHV0KGZkMik7DQo+Pj4gICAgICAgICAgIHJl
dHVybiBzYW1lOw0KPj4+DQo+Pj4gd2hlcmUgdGhlIG9ubHkgcXVlc3Rpb24gaXMgaWYgeW91IGFs
c28gd291ZGwgd2FudCB0byBkZWFsIHdpdGggT19QQVRIDQo+Pj4gZmQncywgaW4gd2hpY2ggY2Fz
ZSB0aGUgImZkZ2V0KCkiIHdvdWxkIGJlICJmZGdldF9yYXcoKSIuDQo+Pj4NCj4+PiBIb25lc3Rs
eSwgYWRkaW5nIHNvbWUgRFJNIGlvY3RsIGZvciB0aGlzIHNvdW5kcyBoYWNreSwgYnV0IGl0IHNv
dW5kcw0KPj4+IGxlc3MgaGFja3kgdGhhbiByZWx5aW5nIG9uIEVQT0xMIG9yIEtDTVAuDQo+Pj4N
Cj4+PiBJJ2QgYmUgcGVyZmVjdGx5IG9rIHdpdGggYWRkaW5nIGEgZ2VuZXJpYyAiRklTQU1FIiBW
RlMgbGV2ZWwgaW9jdGwNCj4+PiB0b28sIGlmIHRoaXMgaXMgcG9zc2libHkgYSBtb3JlIGNvbW1v
biB0aGluZy4gYW5kIG5vdCBqdXN0IERSTSB3YW50cw0KPj4+IGl0Lg0KPj4+DQo+Pj4gV291bGQg
c29tZXRoaW5nIGxpa2UgdGhhdCB3b3JrIGZvciB5b3U/DQo+PiBXZWxsIHRoZSBnZW5lcmljIGFw
cHJvYWNoIHllcywgdGhlIERSTSBzcGVjaWZpYyBvbmUgbWF5YmUuIElJUkMgd2UgbmVlZCB0bw0K
Pj4gYmUgYWJsZSB0byBjb21wYXJlIGJvdGggRFJNIGFzIHdlbGwgYXMgRE1BLWJ1ZiBmaWxlIGRl
c2NyaXB0b3JzLg0KPj4NCj4+IFRoZSBiYXNpYyBwcm9ibGVtIHVzZXJzcGFjZSB0cmllcyB0byBz
b2x2ZSBpcyB0aGF0IGRyaXZlcnMgbWlnaHQgZ2V0IHRoZQ0KPj4gc2FtZSBmZCB0aHJvdWdoIHR3
byBkaWZmZXJlbnQgY29kZSBwYXRocy4NCj4+DQo+PiBGb3IgZXhhbXBsZSBhcHBsaWNhdGlvbiB1
c2luZyBPcGVuR0wvVnVsa2FuIGZvciByZW5kZXJpbmcgYW5kIFZBLUFQSSBmb3INCj4+IHZpZGVv
IGRlY29kaW5nL2VuY29kaW5nIGF0IHRoZSBzYW1lIHRpbWUuDQo+Pg0KPj4gQm90aCBBUElzIGdl
dCBhIGZkIHdoaWNoIGlkZW50aWZpZXMgdGhlIGRldmljZSB0byB1c2UuIEl0IGNhbiBiZSB0aGUg
c2FtZSwNCj4+IGJ1dCBpdCBkb2Vzbid0IGhhdmUgdG8uDQo+Pg0KPj4gSWYgaXQncyB0aGUgc2Ft
ZSBkZXZpY2UgZHJpdmVyIGNvbm5lY3Rpb24gKG9yIGluIGtlcm5lbCBzcGVhayB1bmRlcmx5aW5n
DQo+PiBzdHJ1Y3QgZmlsZSkgdGhlbiB5b3UgY2FuIG9wdGltaXplIGF3YXkgaW1wb3J0aW5nIGFu
ZCBleHBvcnRpbmcgb2YgYnVmZmVycw0KPj4gZm9yIGV4YW1wbGUuDQo+Pg0KPj4gQWRkaXRpb25h
bCB0byB0aGF0IGl0IG1ha2VzIGNncm91cCBhY2NvdW50aW5nIG11Y2ggZWFzaWVyIGJlY2F1c2Ug
eW91IGRvbid0DQo+PiBjb3VudCB0aGluZ3MgdHdpY2UgYmVjYXVzZSB0aGV5IGFyZSBzaGFyZWQg
ZXRjLi4uDQo+IE9uZSB0aGluZyB0byBrZWVwIGluIG1pbmQgaXMgdGhhdCBhIGdlbmVyaWMgVkZT
IGxldmVsIGNvbXBhcmluZyBmdW5jdGlvbg0KPiB3aWxsIG9ubHkgY2F0Y2ggdGhlIG9idmlvdXMg
Y2FzZSB3aGVyZSB5b3UgaGF2ZSBkdXAoKSBlcXVpdmFsZW5jeSBhcw0KPiBvdXRsaW5lZCBhYm92
ZSBieSBMaW51cy4gVGhhdCdzIHdoYXQgbW9zdCBwZW9wbGUgYXJlIGludGVyZXN0ZWQgaW4gYW5k
DQo+IHRoYXQgY291bGQgZWFzaWx5IHJlcGxhY2UgbW9zdCBrY21wKCkgdXNlLWNhc2VzIGZvciBj
b21wYXJpbmcgZmRzLg0KPg0KPiBCdXQsIG9mIGNvdXJzZSB0aGVyZSdzIHRoZSBjYXNlIHdoZXJl
IHlvdSBoYXZlIHR3byBmaWxlIGRlc2NyaXB0b3JzDQo+IHJlZmVycmluZyB0byB0d28gZGlmZmVy
ZW50IGZpbGVzIHRoYXQgcmVmZXJlbmNlIHRoZSBzYW1lIHVuZGVybHlpbmcNCj4gb2JqZWN0ICh1
c3VhbGx5IHN0YXNoZWQgaW4gZmlsZS0+cHJpdmF0ZV9kYXRhKS4NCj4NCj4gRm9yIG1vc3QgY2Fz
ZXMgdGhhdCBwcm9ibGVtIGNhbiBvZmMgYmUgc29sdmVkIGJ5IGNvbXBhcmluZyB0aGUNCj4gdW5k
ZXJseWluZyBpbm9kZS4gQnV0IHRoYXQgZG9lc24ndCB3b3JrIGZvciBkcml2ZXJzIHVzaW5nIHRo
ZSBnZW5lcmljDQo+IGFub255bW91cyBpbm9kZSBpbmZyYXN0cnVjdHVyZSBiZWNhdXNlIGl0IHVz
ZXMgdGhlIHNhbWUgaW5vZGUgZm9yDQo+IGV2ZXJ5dGhpbmcgb3IgZm9yIGNhc2VzIHdoZXJlIHRo
ZSBzYW1lIHVuZGVybHlpbmcgb2JqZWN0IGNhbiBldmVuIGJlDQo+IHJlcHJlc2VudGVkIGJ5IGRp
ZmZlcmVudCBpbm9kZXMuDQo+DQo+IFNvIGZvciBzdWNoIGNhc2VzIGEgZHJpdmVyIHNwZWNpZmlj
IGlvY3RsKCkgdG8gY29tcGFyZSB0d28gZmRzIHdpbGwNCj4gYmUgbmVlZGVkIGluIGFkZGl0aW9u
IHRvIHRoZSBnZW5lcmljIGhlbHBlci4NCg0KQXQgbGVhc3QgZm9yIHRoZSBEUk0gd2UgYWxyZWFk
eSBoYXZlIHNvbWUgc29sdXRpb24gZm9yIHRoYXQsIHNlZSANCmRybUdldFByaW1hcnlEZXZpY2VO
YW1lRnJvbUZkKCkgZm9yIGFuIGV4YW1wbGUuDQoNCkJhc2ljYWxseSB0aGUgZmlsZS0+cHJpdmF0
ZV9kYXRhIGlzIHN0aWxsIHNvbWV0aGluZyBkaWZmZXJlbnQsIGJ1dCB3ZSANCnVzZSB0aGlzIHRv
IGZpZ3VyZSBvdXQgaWYgd2UgaGF2ZSB0d28gZmlsZSBkZXNjcmlwdG9ycyAod2l0aCBpbmRpdmlk
dWFsIA0Kc3RydWN0IGZpbGVzIHVuZGVybmVhdGgpIHBvaW50aW5nIHRvIHRoZSBzYW1lIGh3IGRy
aXZlci4NCg0KVGhpcyBpcyBpbXBvcnRhbnQgaWYgeW91IG5lZWQgdG8ga25vdyBpZiBqdXN0IGlt
cG9ydGluZy9leHBvcnRpbmcgb2YgDQpETUEtYnVmIGhhbmRsZXMgYmV0d2VlbiB0aGUgdHdvIGZp
bGUgZGVzY3JpcHRvcnMgaXMgZW5vdWdoIG9yIGlmIHlvdSANCmRlYWwgd2l0aCB0d28gZGlmZmVy
ZW50IGh3IGRldmljZXMgYW5kIG5lZWQgdG8gZG8gc3R1ZmYgbGlrZSBmb3JtYXQgDQpjb252ZXJz
aW9uIGV0Yy4uLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
