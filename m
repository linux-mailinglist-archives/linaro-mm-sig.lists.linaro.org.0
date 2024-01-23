Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9F8839AB5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 22:00:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AB6143F25
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 20:59:59 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2040.outbound.protection.outlook.com [40.107.100.40])
	by lists.linaro.org (Postfix) with ESMTPS id E11223EFCF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jan 2024 20:59:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Nkn73qze;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Felix.Kuehling@amd.com designates 40.107.100.40 as permitted sender) smtp.mailfrom=Felix.Kuehling@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zc9bmx8j2lz0gNmsunGtwrnekB98YevmL5fYzNFXqY5saBfow2jQ1DLWKe2qwJehFRA4UURXCUp0NkKWmhi5vRCGKccqorbs0AZpXmljWIanYYpeHlcz/edNZOhc2rSTtJqFfBvbwy/+pMT1/El1V5tmcZgmCuAsfZ8sT617bejLhHNG/+d23auXFhYr+MSpzg59SJrTZ8N+rYIZ8PluIhn/oQiQkIb3cFghlV4itfNEsu7BrIcyp06m12NS+XCy9WdkAcsVl6jWJYXa2nXWGXKxyce4HiOCQvotqPmkzxGrDdqiiEQBwhYX1j+WCzv1xguHeUaPj9HDfvUjlh9kaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Jq52U2ZRMBAPurWFBAQ4GY4OzpPp8hQ1xGb7YJwsvw=;
 b=TqKT3V9rG2N3/Ym1DGWf+EUP67u8x5ErbBPZN8Gt97olNiFIQHFNIk/FwbPWL1YIGMmkju/7CMQ8NnFImPLk6CEI3BVW98X7yEPFtJSVjWXpgTxgnrOvWqq2HBUn7mjYIhIPsCIS8tJ8RsPv6NnjdEzoy6ttps+Jh1FtG3LjpRI7cwkd65YdIBPr92srbhDwOd71Ed5mdfUSsWSl/Fz6aUsYI71ETO4T1jzuy0vU7evHGuAws2zzNSRZCxaYZxxXF8+htFtnNPC5IkB9oDRzPo9nqF6ylGpv1FILKKYev6mhoXgdFLlCPJWbsW2hCqDIwytpWkm3AkKL6DgFXRfxcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Jq52U2ZRMBAPurWFBAQ4GY4OzpPp8hQ1xGb7YJwsvw=;
 b=Nkn73qzeaxDwNbAezI7exPZ4ItOD7rVhrXtXP4Ed5zXuJ4IHHfyRE1lUJ5xQ3mtgLZs7H78KTR/2omMoU4xwEQf1OWNZBCe4LJX2IwM/y+7II5+qbKysPCxGjF3mlKMA4yVk83ioEJocnqkN05htEGIeb0SRigY/Exd93rg/4N4=
Received: from BN9PR12MB5115.namprd12.prod.outlook.com (2603:10b6:408:118::14)
 by MW4PR12MB7432.namprd12.prod.outlook.com (2603:10b6:303:22d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Tue, 23 Jan
 2024 20:59:49 +0000
Received: from BN9PR12MB5115.namprd12.prod.outlook.com
 ([fe80::6f2f:7892:e9fe:c62b]) by BN9PR12MB5115.namprd12.prod.outlook.com
 ([fe80::6f2f:7892:e9fe:c62b%4]) with mapi id 15.20.7202.034; Tue, 23 Jan 2024
 20:59:49 +0000
Message-ID: <27bbb263-bb0e-42b8-8411-703f476131ac@amd.com>
Date: Tue, 23 Jan 2024 15:59:46 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>
References: <5e939c58-dddd-4af7-a650-66cce38c4beb@moroto.mountain>
From: Felix Kuehling <felix.kuehling@amd.com>
In-Reply-To: <5e939c58-dddd-4af7-a650-66cce38c4beb@moroto.mountain>
X-ClientProxiedBy: YQZPR01CA0102.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:83::24) To BN9PR12MB5115.namprd12.prod.outlook.com
 (2603:10b6:408:118::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR12MB5115:EE_|MW4PR12MB7432:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d0958dc-9c2e-4f6d-80df-08dc1c563cac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Sj8vi0iAboWWD2l3vY2jKxRYNNdK5wdZRQwjTqfMwaiUOgGawiZjSfnUU1S0Sta9G/3HyrUSZ83OLM9ILhCzJpcu/IwecfueSVPUGfeS4qljYZ+8sSMbv6a+kF6VVQsF9mLFreAXSiIs+EZzwOWSB/jbTagrltQDXGHD3pzuXKZzDNiVVB+2hsvInsntfH/H80MZvsPNTbQNVHhCbP3/MO0hVfNu8H/lXjtxwO1FnW+MHK1GvKvihFaYwmS7Y27FVApwkTlhCcuEn3OR+ega2I57m8CfaNziGhq9/8OpnZOTWUCRDCaPucJ3cPI+mX9sYJXTac8ULhI47nGnM71yvJIjyPAgqAY8Xs0RCrg7YHxz1gh1Fz4FbrT2Tf3mavO7acX5FQ+7vnN+Aly4uRT4RHknph7JdlV8jBvM+LtMdJQSuPpPvwofJZ2fMvVgC2Ep3+tSS602VUhlYIOmzPanTmar+Zq5/J0z81r8VYCCVvEPi58bp4iIL39194R1e+GTfwLFbuIpP8bXfXt2/EJTLGKvm74Dx92nsnkMLjereQliM+jYm44wpfdN0mAE9+IzdjZbHCGhpOEiGNoVNPdiLHSTsn25brBESKVcP1CpZzNrAjPBsrkCY7e3p1eNmDclIt35Wf0TCTDLW/Er1VyBvMZV1Nd9sIMdBC5EEOg0H79CEMO6yLowvooDPLHL7GnQ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR12MB5115.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(346002)(136003)(366004)(376002)(396003)(230922051799003)(230273577357003)(230173577357003)(451199024)(64100799003)(1800799012)(186009)(66946007)(6916009)(316002)(66556008)(66476007)(6486002)(4326008)(36756003)(8936002)(44832011)(31696002)(86362001)(38100700002)(8676002)(53546011)(26005)(478600001)(6666004)(6512007)(6506007)(83380400001)(2616005)(41300700001)(5660300002)(2906002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Snd0akM0MnZqaW1acUFFcDJXRkR3bGp5aEkweTZCZHFna1lMa1ROa1owTW14?=
 =?utf-8?B?ejdSSXU0QVdVRkx3b0ZtRFM3ZDNYVHQ4bFZQQVdKNEh3aU51d2ZBOXVWekRO?=
 =?utf-8?B?NFkyK0h5aTZLaUdHZHQwYzVmak1iMWJOTWtHNHdDT1lnNjY2RlMvZXFTWUV5?=
 =?utf-8?B?QmR4NXpNZ0FyYlZzdFlKYjg5MmFNbTdCR28vRjF5RHUwSjZLMHV0VTFIeWRp?=
 =?utf-8?B?MWVzdXVzaWpPa3M4SUlNQXMxdjhKZ2QyeTdqazE1amtmYjh1S0hlcEtHVVZt?=
 =?utf-8?B?WUhiS085QXdEVWJXRFdtUHNRdTlIYVFzUGZUMVFVYllBOXBFOFNHMGlTVXF6?=
 =?utf-8?B?UnVTUjhwaWlvSlQ0QjNUa3JYWWlsOTIwWk1uaEpUMVM1MXBmcnAxN0dRczIx?=
 =?utf-8?B?VVlOV200RURpUVFJWkFDZzhEeHlPUDZSaUx2RVI2akFpRjU5clgvRFFjVzhP?=
 =?utf-8?B?QTBBTlN2Ly9NZ3pTSmlaNDhPdWh2SW40UlJ0Yjh3bEJlVGNTYlpDbVBlLzZm?=
 =?utf-8?B?Y3d1cVBXc2xnNW1saWlYM1dOQXFMTytFT0RjWFBKQnVyUmYxU0pIL2RzRFZR?=
 =?utf-8?B?U2Nmc0hLOHRlOHl6bVNSL3dGV3dlTTBkdWZtNXVGQnB5cE9KdUR0SXk3Y3lR?=
 =?utf-8?B?NXlqaGFDQzNENFhLcVROWGJhR2VzV0ZtMUFJWDVwVnFFUnFjM3pWMnhjblhT?=
 =?utf-8?B?MVYyZjk1c1pCZFFsUE5VbmlCaEZoTGpRSDh3ZHRsendKVk1wUytFejQ5cysx?=
 =?utf-8?B?dU5nTGJkQStFanpyUDlnZkxaMDFNSzRrakFJUEptV1JOMS9UVll0MnlwZXVt?=
 =?utf-8?B?NEFxSHlwS01GbVBzQkVrRVdZYng1RCtISVFGTjZmblFrMCtiaVQxdm81MDU2?=
 =?utf-8?B?RW83ZFRIcXpDRmFDMFBPVTNpSnEwTFFpcVRyM0thbThyUVNaNHV6STlFNm9Y?=
 =?utf-8?B?aWRNOHg4b1hLNW9BS2hoMGJRTS83Z1R1a1R2Q2hOU1BuKzdUNWlqNTFFNVF1?=
 =?utf-8?B?bmZjRFkxblNUTDFnQnd3cVhxU0p3V054ODM0Q1EyMHc4WHRpTUVQMUlKbjVV?=
 =?utf-8?B?Y3JUOXF1bHcveG9BVUpuWDBCODRDWmxkT1l5bjFJSjBhZzd6K2lqeVQ3VXZ3?=
 =?utf-8?B?a1VnaEt1VmI1cmZETC9WOHpGdCsxd05WUUhHRXdsN1V0Y0lLZXo2QWk4Vldw?=
 =?utf-8?B?WXZxaXJ4UWRkb2hNSzMzSGhUdVJ6Y0I3K2hpQ3ZyOGhjWmUxSDZQalA2bHZ2?=
 =?utf-8?B?cG9yT3FQTk4wRGRyK2p4MHFYSnpMcUxqdDlVZlk0NHhxV0JjYzhsaUd4azRH?=
 =?utf-8?B?NUtXY0YyUjJMbzlsTkRQdFNvbzlvd3ljNHFHbDFVQkRzUXlyemtKa0dMZ1A0?=
 =?utf-8?B?L3RiQUZTK1JkbE9INkJNVi9GZVc4NVpSeStwRGVGSVp0VEloTHpwOHVqcjlm?=
 =?utf-8?B?RXF1M2lSclhVbDVIaVJXM09uVTJaMDh4UTFML1ZwenRsMnFjVXVJS2kyUFBF?=
 =?utf-8?B?QjV5TkU4RVloZHQ0YWxRVXkvTHp0VitpL2VnMGFYZ1pBQWJrOWlHaDhiUHZs?=
 =?utf-8?B?SGRWL3JvNlZ5NmR4VUNjVHRyMmlncmpqSzVSN21yck9xakI3Q3ZxMlJWVHFm?=
 =?utf-8?B?eWVxNEpqRUxZaEE4N2ZEMkRUWkJ5c2w0czIwcUtkVjNPUll6RnFZNkZ2VEhT?=
 =?utf-8?B?WjdoNFA2TGEvWFR6Q1VhZUxkQXloekdUWnhLNUQ1aG5VK2JsdzcxREx2UVRH?=
 =?utf-8?B?d2duSnQ1UW96eGF2dDZQN3pKbnR3SC9lcmRiNlNGdjQ5RnFDZW1ydktvUUUw?=
 =?utf-8?B?NVNLcmg4V0JITTVFa2dSRlpJRjJyZlNyV0ozLzJzK3FRTXZ1TE9CdTQvSCsz?=
 =?utf-8?B?bWtqaE80MjNBZGlsckk1UW4zNloxeG5reWYxMS80V0xmYlR6bFd3NlpaVWtq?=
 =?utf-8?B?ZDNTRmxGOXhrUVdYcnBDL3E2NlNNWWFoT3ZNdUhSSHk2Rm1TTnd4enpoSHov?=
 =?utf-8?B?L1MrR3NERXM4bUl0SGplUGkrTFJhditDNGl3TksycHd0enI3WTkzdGpaNEY4?=
 =?utf-8?B?NUNwK3k5MmJlL0ZVd3NYSnFaOTR4cUJNZE55MHA2MklwUEVXNEhzbHh2UDh5?=
 =?utf-8?Q?cpB9D5VjtLhFwu44kXHK+WHzz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d0958dc-9c2e-4f6d-80df-08dc1c563cac
X-MS-Exchange-CrossTenant-AuthSource: BN9PR12MB5115.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2024 20:59:49.1478
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SFHyM3+UyC1HcDd3Re/qDiQCbVHTM7/WFbwCx7XhtoWeheI5boxUfbtsYaH0YOK0rwuBFBkgmvgdpxbo8iFktA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7432
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E11223EFCF
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.100.40:from];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: 6ZHAW7DLKB7KN4D5YUKAMV7YX646QHZJ
X-Message-ID-Hash: 6ZHAW7DLKB7KN4D5YUKAMV7YX646QHZJ
X-MailFrom: Felix.Kuehling@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Mathias Krause <minipli@grsecurity.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [bug report] drm/amdkfd: Export DMABufs from KFD using GEM handles
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6ZHAW7DLKB7KN4D5YUKAMV7YX646QHZJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNC0wMS0yMyA1OjIxLCBEYW4gQ2FycGVudGVyIHdyb3RlOg0KPiBIZWxsbyBGZWxpeCBL
dWVobGluZywNCj4NCj4gVGhlIHBhdGNoIDE4MTkyMDAxNjZjZTogImRybS9hbWRrZmQ6IEV4cG9y
dCBETUFCdWZzIGZyb20gS0ZEIHVzaW5nDQo+IEdFTSBoYW5kbGVzIiBmcm9tIEF1ZyAyNCwgMjAy
MyAobGludXgtbmV4dCksIGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcNCj4gU21hdGNoIHN0YXRpYyBj
aGVja2VyIHdhcm5pbmc6DQo+DQo+IAlkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jOjcyOSBkbWFf
YnVmX2dldCgpDQo+IAl3YXJuOiBmZCB1c2VkIGFmdGVyIGZkX2luc3RhbGwoKSAnZmQnDQo+DQo+
IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZ3B1dm0uYw0KPiAgICAg
ODA5ICBzdGF0aWMgaW50IGtmZF9tZW1fZXhwb3J0X2RtYWJ1ZihzdHJ1Y3Qga2dkX21lbSAqbWVt
KQ0KPiAgICAgODEwICB7DQo+ICAgICA4MTEgICAgICAgICAgaWYgKCFtZW0tPmRtYWJ1Zikgew0K
PiAgICAgODEyICAgICAgICAgICAgICAgICAgc3RydWN0IGFtZGdwdV9kZXZpY2UgKmJvX2FkZXY7
DQo+ICAgICA4MTMgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPiAg
ICAgODE0ICAgICAgICAgICAgICAgICAgaW50IHIsIGZkOw0KPiAgICAgODE1DQo+ICAgICA4MTYg
ICAgICAgICAgICAgICAgICBib19hZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KG1lbS0+Ym8tPnRiby5i
ZGV2KTsNCj4gICAgIDgxNyAgICAgICAgICAgICAgICAgIHIgPSBkcm1fZ2VtX3ByaW1lX2hhbmRs
ZV90b19mZCgmYm9fYWRldi0+ZGRldiwgYm9fYWRldi0+a2ZkLmNsaWVudC5maWxlLA0KPiAgICAg
ODE4ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1lbS0+
Z2VtX2hhbmRsZSwNCj4gICAgIDgxOSAgICAgICAgICAgICAgICAgICAgICAgICAgbWVtLT5hbGxv
Y19mbGFncyAmIEtGRF9JT0NfQUxMT0NfTUVNX0ZMQUdTX1dSSVRBQkxFID8NCj4gICAgIDgyMCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fUkRXUiA6
IDAsICZmZCk7DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBeXl4NCj4gVGhlIGRybV9nZW1fcHJpbWVfaGFuZGxl
X3RvX2ZkKCkgZnVuY3Rpb24gZG9lcyBhbiBmZF9pbnN0YWxsKCkgYW5kDQo+IHJldHVybnMgdGhl
IHJlc3VsdCBhcyAiZmQiLg0KPg0KPiAgICAgODIxICAgICAgICAgICAgICAgICAgaWYgKHIpDQo+
ICAgICA4MjIgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByOw0KPiAgICAgODIzICAg
ICAgICAgICAgICAgICAgZG1hYnVmID0gZG1hX2J1Zl9nZXQoZmQpOw0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXl4NCj4gVGhlbiB3ZSBkbyBhbm90aGVy
IGZnZXQoKSBpbnNpZGUgZG1hX2J1Zl9nZXQoKS4gIEknbSBub3QgYW4gZXhwZXJ0LA0KPiBidXQg
dGhpcyBsb29rcyB3cm9uZy4gIFdlIGNhbid0IGFzc3VtZSB0aGF0IHRoZSBkbWFidWYgaGVyZSBp
cyB0aGUNCj4gc2FtZSBvbmUgZnJvbSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCgpIGJlY2F1
c2UgdGhlIHVzZXIgY291bGQNCj4gY2hhbmdlIGl0IGFmdGVyIHRoZSBmZF9pbnN0YWxsKCkuICBJ
IHN1c3BlY3QgZHJtX2dlbV9wcmltZV9oYW5kbGVfdG9fZmQoKQ0KPiBzaG91bGQgcGFzcyB0aGUg
ZG1hYnVmIGJhY2sgaW5zdGVhZC4NCj4NCj4gV2UgaGFkIHNldmVyYWwgQ1ZFcyBzaW1pbGFyIHRv
IHRoaXMgc3VjaCBhcyBDVkUtMjAyMi0xOTk4Lg0KDQpUaGF0IENWRSBpcyBhIHN5c3RlbSBjcmFz
aC4gSSBkb24ndCB0aGluayB0aGF0IGNhbiBoYXBwZW4gaGVyZS4gSXQncyANCnRydWUgdGhhdCB1
c2VyIG1vZGUgY2FuIGNsb3NlIHRoZSBmZC4gQnV0IHRoZW4gZG1hX2J1Zl9nZXQgd291bGQgcmV0
dXJuIA0KYW4gZXJyb3IgdGhhdCB3ZSdkIGNhdGNoIHdpdGggIldBUk5fT05fT05DRShJU19FUlIo
ZG1hYnVmKSkiIGJlbG93Lg0KDQpJdCdzIHBvc3NpYmxlIHRoYXQgYSBkaWZmZXJlbnQgRE1BQnVm
IGdldHMgYm91bmQgdG8gdGhlIGZkIGJ5IGEgDQptYWxpY2lvdXMgdXNlciBtb2RlLiBUaGF0IHNh
aWQsIHdlJ3JlIHRyZWF0aW5nIHRoaXMgZmQgYXMgaWYgaXQgaGFkIGNvbWUgDQpmcm9tIHVzZXIg
bW9kZS4gZG1hX2J1Zl9nZXQgYW5kIHRoZSBzdWJzZXF1ZW50IGNoZWNrIG9uIHRoZSBkbWFidWYg
DQpzaG91bGQgYmUgcm9idXN0IGFnYWluc3QgYW55IHVzZXIgbW9kZSBtZXNzaW5nIHdpdGggdGhl
IGZpbGUgZGVzY3JpcHRvciANCmluIHRoZSBtZWFudGltZS4NCg0KUmVnYXJkcywNCiDCoCBGZWxp
eA0KDQoNCj4NCj4gICAgIDgyNCAgICAgICAgICAgICAgICAgIGNsb3NlX2ZkKGZkKTsNCj4gICAg
IDgyNSAgICAgICAgICAgICAgICAgIGlmIChXQVJOX09OX09OQ0UoSVNfRVJSKGRtYWJ1ZikpKQ0K
PiAgICAgODI2ICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihkbWFidWYp
Ow0KPiAgICAgODI3ICAgICAgICAgICAgICAgICAgbWVtLT5kbWFidWYgPSBkbWFidWY7DQo+ICAg
ICA4MjggICAgICAgICAgfQ0KPiAgICAgODI5DQo+ICAgICA4MzAgICAgICAgICAgcmV0dXJuIDA7
DQo+ICAgICA4MzEgIH0NCj4NCj4gcmVnYXJkcywNCj4gZGFuIGNhcnBlbnRlcg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
