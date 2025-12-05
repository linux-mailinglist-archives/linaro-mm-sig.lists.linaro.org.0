Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E572CA7B74
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 05 Dec 2025 14:15:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 023733F790
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Dec 2025 13:15:21 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010032.outbound.protection.outlook.com [40.93.198.32])
	by lists.linaro.org (Postfix) with ESMTPS id 61A233F790
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 13:15:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=cXdorZF1;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.198.32 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CdtK+ioqh55OW1KN49ULxKtkQYjO/NHlUdxyBZrjneAMt2CxsN2EpmqfiPP2eOlwVeKETvPqO08s3coUMlCmvgXMjI3SdymYZSbCTrbySWc0W2nbQ1cxwqkyNslCj/JLOwJjXtfwkyykkZ4v9KbsY1hEATdE1hrJkNCK2oikEoAXp85E6YZRFAMibsbdPlBP6x41+3TQdsiGfenGIhv+IFX+M7ihH9GSC7i8Il0V47pzIMdITs43TNnGAPDvOLBLT1MXayXKbeOB2IWA+kC2s9XVaq+y5r7TpD3Eue+W+GBA+I01+RVMGQa0T78KqHoAdu6YwLZAQ1X0tuEsDuskmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vg14x7KT9Omh6WQUJji1bt3BxpItro2GmLaLyUvMY/E=;
 b=eQx27LLUO3QMlJyUoKf2nHLTeQkmOB0mSbUj+lioh7qrR9uTMWc+oQmE3f/NUJjAC8aHiPyP6CECy1ZfqNahmm4ykBB0JwqdnX84ikH85OkRhwqj4j0iMDlmgEtox2n7F51mwObRgYn+4btVUmlFGBasNRSDwWdpwB7IGp7YPthT3sV8t7VRtCB3pDIQmoN9GYbkQPoNbohzuVRf0tzpJjWBzTyjTHutyah2k0f5XqfiyPbKwH52ZeC9h/jyUj3zG59EXJovFj/WxTVgv3ge9dUZj0erhCDwdgU9qQQIkKKCo99G7CfB+FDkp2UXRFq01pYhESYnUc0bnMSzIllKQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vg14x7KT9Omh6WQUJji1bt3BxpItro2GmLaLyUvMY/E=;
 b=cXdorZF1bg7G3Dwg0hekLiivNRBX4hwEcmAxjCtfGuEi5iTn3vtanMQR5a8sqeaWzfOLLUgFCQyVZ+E17OaKhAwXWQntVqvpf3ZHXLSzfo9lpvoAr/HJRAsQi+WSuJ6PqXxnFnReHKsGG/XVNJ00pXqdv8EmmmghHiagGbwK7E8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB7321.namprd12.prod.outlook.com (2603:10b6:806:298::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.11; Fri, 5 Dec
 2025 13:15:01 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9388.003; Fri, 5 Dec 2025
 13:15:01 +0000
Message-ID: <d425e9af-ee87-4495-b289-6533195f3ea1@amd.com>
Date: Fri, 5 Dec 2025 14:14:56 +0100
User-Agent: Mozilla Thunderbird
To: Lucas Stach <l.stach@pengutronix.de>, phasta@kernel.org,
 alexdeucher@gmail.com, simona.vetter@ffwll.ch, faith@gfxstrand.net,
 sumit.semwal@linaro.org
References: <20251120150018.27385-1-christian.koenig@amd.com>
 <20251120150018.27385-2-christian.koenig@amd.com>
 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
 <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
 <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
 <508ff709-0f05-4982-8e15-5fea3bbd12e7@amd.com>
 <c2b571a7e74f86c6cb95bebd11274447c3080df9.camel@mailbox.org>
 <52d484c5-6dfb-4e2f-9caa-a61cf1d94801@amd.com>
 <e2c006ca81081ee1afa00b1b52a035c28a267e0f.camel@pengutronix.de>
 <207d50fe-eef3-4baa-97a7-567598e56b55@amd.com>
 <54d6e863fc606d22f245e30012bb5120d5bee7ee.camel@mailbox.org>
 <6151e7c5-1de2-4857-ae64-1e2fd6cb7513@amd.com>
 <ff4e03cf5281bf54d36c69b4ae0dd5a19723178d.camel@mailbox.org>
 <5267e8fbb93a8fe722f845331d17c61e29f1a705.camel@pengutronix.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <5267e8fbb93a8fe722f845331d17c61e29f1a705.camel@pengutronix.de>
X-ClientProxiedBy: YT4PR01CA0068.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:111::28) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB7321:EE_
X-MS-Office365-Filtering-Correlation-Id: a5b61c61-0295-4a6e-6b58-08de34004b83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RXVPZkgrdWNHN3lXUElMMzlQN29IcmlFU2xqR2VNVnFML2dWZTQySy9jNFl3?=
 =?utf-8?B?OEVnL3JndnVBMXJQanU0SjkwbUl2elA1eVNFbXdRRUZjQk85WmlWZ1E0ZjRs?=
 =?utf-8?B?THBlQ0QvR2N3TUFVSzVpa05NcFJDbkNXeVkyaWlDdmdMZ3FSK1FuZTNpT0Vm?=
 =?utf-8?B?RnJyelpqZnBKZytzc1g2dUZLMXFKWkxxZkJWWEVmSGlsak40eW1VV1FUMHlo?=
 =?utf-8?B?eVhtM3I0SzhPK05sQkxodW9vNkw5VlNGdWFCYW9FcldaMlFhZHZqS2pNQTZu?=
 =?utf-8?B?ZG1KbGwwdjg4N09menhZZ2ptcXYxV3FHV2tXdmVWdFRIb2pQRTBib1B2WHhU?=
 =?utf-8?B?YlpHVTJldUdGb0RYU3NqS2ZQbTU2dkxsUGM1amtNeEVUYmpIK2w2U0llaWUz?=
 =?utf-8?B?dFI2WWtvUnRjdm16ZnQzZlBQWCtOOWdBb3VqcktTZ2hKQ2hzc1p1WldEMFc2?=
 =?utf-8?B?bGFaQ2d3dFQ4ZEtCeWhFenNXYXI2U3NQeVdqKzFZVGFBamtIQzd3TWl0b0xx?=
 =?utf-8?B?dnBkNWpTc0xtZHBIVWxUY1BiL0FQUFBRT0ZOaHhsR3hmSVVtN0NkV2ZsbmRO?=
 =?utf-8?B?RWRmS2htNVNTcWZzN3NEdVg3UGl0ZVNzOWpSL01uRGpsNDIybS9IOEMxOC9o?=
 =?utf-8?B?cnhEYzdiUEJTVEhNNVQzNytUMlRJN2lKR2lvcWhFREhoWjR0M2dobTg5M3lT?=
 =?utf-8?B?NGZIMTBoRGR1RE02VHN5eTlIejFOOHdYSjVydm1PNVNSNkN0UU1aQTlMMzFG?=
 =?utf-8?B?dW5nWVZ5OXE2emRPeW5CMGxheDdyM3p3aDM3QnlFV215L2JJanI0UXdJUDdm?=
 =?utf-8?B?V25VOWhnWEFGN0svZzhnUlZ6V3YzUUh4Y1QwMlNaazl4TmFTWHRVK3E5eFFK?=
 =?utf-8?B?ZFBKL3FlTU1YRXhZblNGZmZNYlJWL1c0aDFuNmVEY3h4Y21VcDhnVVNuUG5V?=
 =?utf-8?B?ZzhHZlZrVlB6MTFpOHFQV0Q1eEtHZ0FvQUxjcnJ4V3VVRzB4ZjBvN1VBM1da?=
 =?utf-8?B?WjFmRmdLVEVBaXU3c2UzUk91WVhaV3VoZkErYjRqS0JpUlpOU2dIRE1KZHhG?=
 =?utf-8?B?NkdKUy9hYUowZUFwM3ZaYWp1VGlsb21adjdOdEhvWC9wLzRPNGppNCtBVnRx?=
 =?utf-8?B?cWFyWDVPbHhQNk9jT3pJa2R4L25Qa29LL01RUEozRGJ3WXFVSGs4UXdYVjBZ?=
 =?utf-8?B?Q2VGV09Bc1dFNjNWdldnc0gxZTNPY2VKc044UW0vSmd0U3NJblJQZnYyVThs?=
 =?utf-8?B?VitYc1EyZE5iQUMyTjgvT1hTTzBNaHZiTTlkMFI2ZHJlUnE3NzJONDc2SDZ3?=
 =?utf-8?B?NmUvc0taYitHejdqY1gxMCtjNVVRWXVIU21MeHo3T2llMUI3UEErbmNJbXFt?=
 =?utf-8?B?TU0yYVVQbVZZMFNnb0orVXdEWFRXN0gxbjQrT3dZYnk3NXYxd1lsZTVYNDRD?=
 =?utf-8?B?Nm5DTnREVkg4WENLdmgxcnlNblZQOStjYlJtYTBSdE5PVWFGNlVlZ2dXMEt5?=
 =?utf-8?B?SlV1bE1WdWM0N2F2Nm0wVDRyVUl0WThGaDhFZG9NVlhnQy9RRmdOK2d3aFZu?=
 =?utf-8?B?MTRUcDZIZ0ZHRGRRZCtlbEZ0MkZZbHIzekdoVmQ5M0E2VGE3UFpQY2lsalJo?=
 =?utf-8?B?T1FON20vNUZFU3JZWTErc1ZoWkk3S3hmc21hU1V2Mmc5WmNFd3czV3ZaMkkr?=
 =?utf-8?B?YmtYMmxjdHNWWlVHTno4OXZhNi9Zcm5sUm50aHNqQXVpTm9ubDJ6alFJcGNw?=
 =?utf-8?B?dHN6SU5Yb3A1NmFDN0JFRi9IekYrK0ptbXlEdEpEdXE0VlczYmZWczZlczc2?=
 =?utf-8?B?STloVDZ1WUMyeVh2b28yeEk0dXJTOTZ3SEZVem9kbUlvWC9hR0lrb2hjOWJY?=
 =?utf-8?B?emowZGZSNnp2ZnlhOWJQNEJWdTlMbzJiemlObUFpTndVRW5UWXA4NC9STzBi?=
 =?utf-8?Q?g8eBwmtWqFCgIS5TNjxo1cgqyKltH3Zp?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d29kN2ZsUnlqL0RVSGo5S0NQOXBSeHlFR2JDem4vVDZYTUxLTVdsN1hGWnI0?=
 =?utf-8?B?M0I5Ym9wQ3dkTGRzRitxcU5IbHpwTktST3Rlak5zbi9VR095a001TnYvYW1S?=
 =?utf-8?B?Ujc4K0V4SStOTWwzdDJKcWNZanZnd0lDRFdxcEo2cU5Cdjh1ZmY1RlNQS0RY?=
 =?utf-8?B?R042ZHZ0dDF0TzBleFlxczNDYVR1eWRLckZnUHN5UEpZSTZ1NExTUEMvRU5Q?=
 =?utf-8?B?c1cwTDc4STM0c2lyRGEvUWVDY2NXNkdReExIQ0F0MHFiWGJIaTlCWHZMWWtC?=
 =?utf-8?B?V3V6WE1OVnA0NTBzQWEzUGRqSWhrcDVmREh5ZFhKbkRjbFZDVlpNTkc4WjVt?=
 =?utf-8?B?WWFXdE91Zms1eFZlc0dSbm1Sbk9zU2lZU1E3cmM0Qi9obkpPMmp0dlUwOXQr?=
 =?utf-8?B?UHZvOEZwZHpPNzg5d2xJd3RQSDBmTU5VN09MbFdLbWU4aUdQSjMxZjJCUnZL?=
 =?utf-8?B?RklXLzNPSFZsK1JQUDhvMVlCT1NuU2FvbTQ3NjY4MW9BNkRpdzFBaUZhZ2ww?=
 =?utf-8?B?WjNib1VrT0ZzUUZBQWdiajlOTDNSOTVCbHJTUmp2NXg4aDdSVElsK2ZrK3Ny?=
 =?utf-8?B?VVlDcHZyV2tjSlZLR3NqeGxVbEY5dTRESFpLY1NiZ0tvVFpDdEcyMHRrdjdE?=
 =?utf-8?B?d0EzTG5jZjE5WmxDMnZjWmd3cm12VXZOV244b041NDJWbDd0SnZmT1NXcFlP?=
 =?utf-8?B?QW1udlpaeDN3MEg0NkFmODNHYkZ2SURNVXhnRkZkaU8rQm83Um93cVVSejBS?=
 =?utf-8?B?REFvRXREaWFoMjV0bVdlMjlWMGpIZWFMeS8zMEdRWHZKS2szOGhPRW95RmJJ?=
 =?utf-8?B?Zi9IQlY0Zi9LWFY3K3IzbVpnRlQ1UnFwSkhHUnYvMFVDMHZzbGg4RlRpb2ZJ?=
 =?utf-8?B?dkVGY3RabGtUQjhiZlZXZGN1VElBVnUyUEdYdU1QbFU1M0NWZTJhUll5ZG11?=
 =?utf-8?B?SEJvSEYzZ1lnVERCbHFMN2dHNVN5dEFNWkIxcExEdFB5VnhyZ1QzVldINVZF?=
 =?utf-8?B?YWRhZGhhSW9WZ0VqZHBYejRpSVN5VXp5b0wzU01TRmtZRUxoSE1VbXl0WGEz?=
 =?utf-8?B?TmNWQnhkeE1wSnRSemFJMXNRY2ZNVWZ0RG5FaVY4R0dBZ2FKbGZHK3BJb0ZB?=
 =?utf-8?B?RG0zZHdSZFV1cmM3NXVZOGtISEc5bGZuZUo2KzhaR29vSi9wWFlUVytndU5a?=
 =?utf-8?B?aW16V2lYR25GN3gwekVrT1U1cWtOaVpLenR0MHFtWUpUUGx4R1hTK2g1WVE0?=
 =?utf-8?B?Qmc0RkhSTlF1dDFkQlZOSEJGWGYrR0xwNDBiak9paG16TW11MmNGWTVyeTFp?=
 =?utf-8?B?Q09wUnAzclFocWpLVms3am11dmI0YktxS2k5TFc5cXdETFRXaTBYRXg5UVk1?=
 =?utf-8?B?c2pONFZUR0I5V0h3RkVvNnBPTTdEaGFKK3hTUndrYittUnl4SjZmZjRDVEY2?=
 =?utf-8?B?OFRPd3F4NjhIWUdOQllWQUhVRVJqMERaWjVEYXZNZ2tTalRWNktzcTNYZGdk?=
 =?utf-8?B?dkFuaHZ3T3pySlFkSHBLUlMyc0RpMGpnNW4wRk9HRStxNDNDaVRIcXNVYnB2?=
 =?utf-8?B?T2doQTNGS2ZBR3MxM0dDbVcrZUw0R3NWcjRjWU03YWRoOHVXOTY4OGJGV0dm?=
 =?utf-8?B?STFFV01ROTlFTzU4QWJsejEwb2V1elBQZ1BzbWIxcVd1elVzRDdoTXcwaWo1?=
 =?utf-8?B?ZGNHQ2RLb0RDNzV0L2crUU55djZ5UFBpL0RIV083eTVmWFBtRSs3NVIwV1kx?=
 =?utf-8?B?SElHV1B5VmEwbjJaazRGR1dzS0p5RDlobk9iRkFhajRzTGVHY1duNmN4dVMx?=
 =?utf-8?B?VFBpMjB5UEhXdDZvZVF1T0FoU1FqL2l0ODBVOFRlcFl5Z2lWWTEyaUQvcUwr?=
 =?utf-8?B?WXN1WnhCcUZBaDJuRmZQYlVmQ3FpWDRvYnFVZDcyc3k4b25VTVNtcGFxRng4?=
 =?utf-8?B?ZWxZUWJhRWIyZDB5L0J2SGJqREVDRVlneUhCOEwwb0p1QnRxeDJDTDVHY3d5?=
 =?utf-8?B?eTJianlHNG9ia2FkeFJLVFVONW5rZ2xnOWd4TXdiT1AxYVB6czlYZEFhbWM4?=
 =?utf-8?B?WnBNWWczMTcvSHQwSGEwcmV0VDF0NTFMdXVibE5lV2RUUHpCNUlRN0NmZUdF?=
 =?utf-8?Q?Sa/6r8hGNqD3vfYWQwp5WOI4F?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5b61c61-0295-4a6e-6b58-08de34004b83
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 13:15:01.2598
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ROUQBlKmoRhNci9N7wyK9ydERQimo0NScMCdwV6ybqj5P53RnDkODri4+b1WewVV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7321
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.95 / 15.00];
	BAYES_HAM(-2.95)[99.77%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[pengutronix.de,kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.198.32:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_smtp,amd.com:from_mime];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 61A233F790
X-Spamd-Bar: ----
Message-ID-Hash: XQX6RZZY2TFWCE2RNDH3UET753MTP6VS
X-Message-ID-Hash: XQX6RZZY2TFWCE2RNDH3UET753MTP6VS
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XQX6RZZY2TFWCE2RNDH3UET753MTP6VS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjYvMjUgMTc6MTEsIEx1Y2FzIFN0YWNoIHdyb3RlOg0KPiBBbSBNaXR0d29jaCwgZGVt
IDI2LjExLjIwMjUgdW0gMTY6NDQgKzAxMDAgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+PiBP
biBXZWQsIDIwMjUtMTEtMjYgYXQgMTY6MDMgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+Pg0KPj4+Pg0KPiBbLi4uXQ0KPj4+PiBNeSBob3BlIHdvdWxkIGJlIHRoYXQgaW4gdGhlIG1p
ZC10ZXJtIGZ1dHVyZSB3ZSdkIGdldCBmaXJtd2FyZQ0KPj4+PiByaW5ncw0KPj4+PiB0aGF0IGNh
biBiZSBwcmVlbXB0ZWQgdGhyb3VnaCBhIGZpcm13YXJlIGNhbGwgZm9yIGFsbCBtYWpvcg0KPj4+
PiBoYXJkd2FyZS4NCj4+Pj4gVGhlbiBhIGh1Z2Ugc2hhcmUgb2Ygb3VyIHByb2JsZW1zIHdvdWxk
IGRpc2FwcGVhci4NCj4+Pg0KPj4+IEF0IGxlYXN0IG9uIEFNRCBIVyBwcmUtZW1wdGlvbiBpcyBh
Y3R1YWxseSBob3JyaWJsZSB1bnJlbGlhYmxlIGFzDQo+Pj4gd2VsbC4NCj4+DQo+PiBEbyB5b3Ug
bWVhbiBuZXcgR1BVcyB3aXRoIGZpcm13YXJlIHNjaGVkdWxpbmcsIG9yIHdoYXQgaXMgIkhXIHBy
ZS0NCj4+IGVtcHRpb24iPw0KPj4NCj4+IFdpdGggZmlybXdhcmUgaW50ZXJmYWNlcywgbXkgaG9w
ZSB3b3VsZCBiZSB0aGF0IHlvdSBjb3VsZCBzaW1wbHkgdGVsbA0KPj4NCj4+IHN0b3BfcnVubmlu
Z19yaW5nKG5yX29mX3JpbmcpDQo+PiAvLyB0aW1lIHNsaWNlIGZvciBzb21lb25lIGVsc2UNCj4+
IHN0YXJ0X3J1bm5pbmdfcmluZyhucl9vZl9yaW5nKQ0KPj4NCj4+IFRoZXJlYnkgZ2V0dGluZyBy
ZWFsIHNjaGVkdWxpbmcgYW5kIGFsbCB0aGF0LiBBbmQgZWxpbWluYXRpbmcgbWFueQ0KPj4gb3Ro
ZXIgcHJvYmxlbXMgd2Uga25vdyB3ZWxsIGZyb20gZHJtL3NjaGVkLg0KPiANCj4gSXQgZG9lc24n
dCByZWFsbHkgbWF0dGVyIGlmIHlvdSBoYXZlIGZpcm13YXJlIHNjaGVkdWxpbmcgb3Igbm90IGZv
cg0KPiBwcmVlbXB0aW9uIHRvIGJlIGEgaGFyZCBwcm9ibGVtIG9uIEdQVXMuIENQVXMgaGF2ZSBs
aW1pdGVkIHNvZnR3YXJlDQo+IHZpc2libGUgc3RhdGUgdGhhdCBuZWVkcyB0byBiZSBzYXZlZC9y
ZXN0b3JlZCBvbiBhIGNvbnRleHQgc3dpdGNoIGFuZA0KPiBldmVuIHRoZXJlIHBlb3BsZSBzdGFy
dCBjb21wbGFpbmluZyBub3cgdGhhdCB0aGV5IG5lZWQgdG8gY29udGV4dA0KPiBzd2l0Y2ggdGhl
IEFWWDUxMiByZWdpc3RlciBzZXQuDQoNClllYWgsIHRoYXQgaGFzIGJlZW4gZGlzY3Vzc2VkIGZv
ciB0aGUgbGFzdCAyMCB5ZWFycyBvciBzbyB3aGVuIHRoZSBmaXJzdCBNTVggZXh0ZW5zaW9uIGNh
bWUgb3V0Lg0KDQo+IEdQVXMgaGF2ZSBtZWdhYnl0ZXMgb2Ygc29mdHdhcmUgdmlzaWJsZSBzdGF0
ZS4gV2hpY2ggbmVlZHMgdG8gYmUNCj4gc2F2ZWQvcmVzdG9yZWQgb24gdGhlIGNvbnRleHQgc3dp
dGNoIGlmIHlvdSB3YW50IGZpbmUgZ3JhaW5lZA0KPiBwcmVlbXB0aW9uIHdpdGggbG93IHByZWVt
cHRpb24gbGF0ZW5jeS4gVGhlcmUgbWlnaHQgYmUgcG9pbnRzIGluIHRoZQ0KPiBjb21tYW5kIGV4
ZWN1dGlvbiB3aGVyZSB5b3UgY2FuIGlnbm9yZSBtb3N0IG9mIHRoYXQgc3RhdGUsIGJ1dCByZWFj
aGluZw0KPiB0aG9zZSBwb2ludHMgY2FuIGhhdmUgYmFzaWNhbGx5IHVuYm91bmRlZCBsYXRlbmN5
LiBTbyBlaXRoZXIgeW91IGNhbg0KPiByZWxpYWJseSBzYXZlL3Jlc3RvcmUgbG90cyBvZiBzdGF0
ZSBvciB5b3UgYXJlIGxpbWl0ZWQgdG8gdmVyeSBjb2Fyc2UNCj4gZ3JhaW5lZCBwcmVlbXB0aW9u
IHdpdGggYWxsIHRoZSB1c3VhbCBpc3N1ZXMgb2YgdGltZW91dHMgYW5kIERvUw0KPiB2ZWN0b3Jz
Lg0KPiBJJ20gbm90IHRvdGFsbHkgdXAgdG8gc3BlZWQgd2l0aCB0aGUgY3VycmVudCBzdGF0ZSBh
Y3Jvc3MgYWxsIHJlbGV2YW50DQo+IEdQVXMsIGJ1dCB1bnRpbCByZWNlbnRseSBOVmlkaWEgd2Fz
IHRoZSBvbmx5IHZlbmRvciB0byBoYXZlIHJlYWwNCj4gcmVsaWFibGUgZmluZS1ncmFpbmVkIHBy
ZWVtcHRpb24uDQoNCkNvbXBsZXRlbHkgYWdyZWUuIFlvdSB3b24ndCBiZWxpZXZlIGhvdyBvZnRl
biB0aGF0IGlzIGEgdG9waWMgaW4gZGlzY3Vzc2lvbnMuDQoNCkFNRCBoYXMgQ29tcHV0ZSBXYXZl
IFNhdmUgUmVzdG9yZSBub3cgb24gbmV3ZXIgSFcsIGJ1dCBib3RoIHRoZSByZWxpYWJpbGl0eSBh
bmQgcGVyZm9ybWFuY2UgYXJlIHVuZm9ydHVuYXRlbHkgcXVlc3Rpb25hYmxlIGF0IGJlc3QuDQoN
ClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEx1Y2FzDQo+IA0KPiAN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
