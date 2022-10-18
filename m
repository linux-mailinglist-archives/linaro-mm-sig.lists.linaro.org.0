Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BE2602A4A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Oct 2022 13:34:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 726C13F59F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Oct 2022 11:34:50 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2051.outbound.protection.outlook.com [40.107.94.51])
	by lists.linaro.org (Postfix) with ESMTPS id D68693F59F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Oct 2022 11:34:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=wLNK0lzU;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.51 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=btgfvf4PypcK6USPCAngPmntT74fJASLccN/II8MNLlv6kFBYIsBsFsYMiM0qMrTqH8WlFpjWlQnPy/bwz3Rs0Swj/FYG1VRhCKaLSYkFYcEwKHn32Mwn4PtVkMz0Tvge8jH2oGTQuYIVwroyMcZDi7SrWyrWDv21nOSIivyH6FuO2UDoB+bwWI/mXKePpqqRJ8m0urJcYBzJdHESPUu4U7tHZ7IRv9kujUWfpOvKpm9McgXRawm65IR3sW1OYK0MmURHxtPDbcKbfq+PgucSL6SlYAhtHbQwdZ6WDUsGhdKElrsgrxGawntLlW34vmBq2Og4eI8F4043tlO6Dq66Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=13uRgY/D7XlDTKeQPSz4XAAFNNCKoGyW++2oyD1gRQs=;
 b=hPctN/UsSFmphzQE+L/3lCqWQNRQMlUsu2ZNCqimJLhT27WwYjhBmKHpXLCR/TH1QY/EqoTdAaNw/IjQDxcz+WuUD06YKsepWelQBzhiNg+BOGbuzITS3dHWcuEWqUelI22OVPTTHuLunNatAYYRYCB6JJF8uKtZy873FXBEa7CSR5LlOIb8jWACgSJXlH8Zpma/YvgLfHE82oLqzqbsv6h2h4YDrUr7hHKjkejaiz1mciH4rYNIdnTycEyb+xuSrFv9m0j635BxgVZJ0ao2t3pqhO6b0UdbcMr5gBAAKKSpM3RQcqsVbP93NiG+vmkGZ00z+8RfY5T33no80haazQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=13uRgY/D7XlDTKeQPSz4XAAFNNCKoGyW++2oyD1gRQs=;
 b=wLNK0lzU9Fo4DAcivArOtiIoqnmRCQP1RSDXZ8t/erdLu9Y7/CAtBs4Pfi1oW9Ak5NeNG9xlbRF/cY4CYGvZJm3F8koFcE48sdhL4S6jl+UfEGcF467MKrDgbLR56ewkE1JQsBz+STl6NvkZ5oRoZMrlErKvpz3MolQ4Us3s8GA=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SA1PR12MB7245.namprd12.prod.outlook.com (2603:10b6:806:2bf::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Tue, 18 Oct
 2022 11:34:25 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644%6]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 11:34:25 +0000
Message-ID: <ce1927b4-d6c5-0649-5ae4-270045aa319f@amd.com>
Date: Tue, 18 Oct 2022 13:34:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Ruhl Michael J <michael.j.ruhl@intel.com>
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com>
 <d943fec8-a1ef-faa5-4132-c7618acb891f@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <d943fec8-a1ef-faa5-4132-c7618acb891f@collabora.com>
X-ClientProxiedBy: FR3P281CA0172.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a0::10) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SA1PR12MB7245:EE_
X-MS-Office365-Filtering-Correlation-Id: 4682a26f-30b3-4504-4dd2-08dab0fcb558
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	smren2V6AYejFy4U2PmVkpNNRLm+h1yS/f9r4JXcVfxfqGCm/FDGdTugxtvaDDiQzl0qTJXxZz63NCIecZkyeCVJa+kGW0Im4orNOXzolOI4qNuu3ZZKENXzNIHRMC0wOwxgdB2Wa7B6cEavCL25/DHZbzwCA9og88YKKUQyCbI8nCPKMN6PzUC/XlnSysQzOCtqMpAxdTmYFToRHXEh+piGUtnPVBmngP9ntqpHjBEKQ6skq8a+/gBB6MwWlsFEQuAxwOSRcvI6DfWZaWo9CajT/r6QYlVTA0urfhi6OwtaghJOEjbmL8RzgwBXSNIUBFXGxu1vJQ5tJMs11Uv2etcw82f3EdCzcEdBhSlzGu/EUX2aOdrsPavIx6MWJMzCtKY+qYugtL2bxenjy2jBt7d9Lnj65UkUtfBP2noQEYD7YIQh29p3yLVaIlIYS/mZx5Dq5AaxESo4nP6Xr6XZVSbeS847GPtweQ5USPfje+RZCXISxiOmDSt35tj5MitEQOvZHpUTL0HKz40XYue+zpKN3Dggw6uradIg1cqJ9xiZe6DD8702kL5FNoibu8XuKOjP1NyT7fg/UPu7KFn4/Y/ooE+YQGjjebqIrY5LMoUdVkRafXnq2zD0o6mMEWf+C5WxP4xD/LJcNSzZfaI52pxLzuMPhKeE18+B1U8lzYhAB1iattsVxTgGr0arADO+ShzDGCx5dStdGqSMxkkNBzPkPJ+o6zahUDIW1air+tIUPFepOHJyg+CKRiM4PEoqHpAQl9zfBiGLn3Hcp3LWYQZONzb4jZ5qOBX4JmEhimIfC508OrzfP6FHwMDfiw9s
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199015)(110136005)(31696002)(921005)(83380400001)(38100700002)(19627235002)(86362001)(316002)(41300700001)(8936002)(53546011)(6486002)(6512007)(6506007)(2906002)(6666004)(186003)(66574015)(478600001)(7406005)(2616005)(5660300002)(36756003)(7416002)(31686004)(66946007)(66476007)(66556008)(8676002)(4326008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VG9nVGFtaEExRnkvV09FVVZlQ3QyQktKZTNieHlYSkJ6aHdTdkxhS2ZYeksv?=
 =?utf-8?B?VXp2cmxzZUN0TXRDeEFQUmE4ZE8zWnBtcm9zMFN6dUhBUW9YTWlQR3FLUG01?=
 =?utf-8?B?anF1SFJSSnJ3VGdTdTZ3aVJPUDE4MC8reFNieGk3aVBScThtTjVibG5maTRm?=
 =?utf-8?B?THowYnBoM2s4aEIxZGVacEZ0UlZOdzA4YXpwdDdhVEk5eFZxblBya2FVUjFB?=
 =?utf-8?B?YkVPMjBVVGNXWW45Zno4T2R6Y3FwT1JZZjgwNXFsT1ZXZ2dnSUUvSnFBdHB4?=
 =?utf-8?B?bWp2bzBkc3NFTlRmUTBNSGpSeno4Rjlnd3Q5L1VpZVdlaFg3b29KT2xZMkhh?=
 =?utf-8?B?K1dCME5aQlZTZUJPQnZnOFFrVGVOVlVheVZwOEo1aUxnU3kwTGRDSFZnVFVH?=
 =?utf-8?B?KytQb3p3bGxOajlmd3I4Qk9NTG9FSFhOYzVmM2hBRGVqTUhFSlYxVWhxc2wx?=
 =?utf-8?B?NzJ4ZUZ4Z2VLRk5lWUhRSXF6STJXRjlNb3IzV3hWazgrSGphaUZ3YkhqMUVJ?=
 =?utf-8?B?OFBaSEloS1JLZjVDWXlYN2FJSFEzRXZFUTFwenliMDdsYWFORE0zVEpuMUZl?=
 =?utf-8?B?cGprSkZhMm5veitQc1J5OGJyUk5vZzdHdjM5ZlB1VkdFdk9kWnBkVTVVQmYz?=
 =?utf-8?B?NEI1Q2lXRFZ3cGRGV2pTcnVzN3ZXMFNmbUxxdFBSRGduNnFWRXJuZ3VURXRz?=
 =?utf-8?B?RzVxR1AzYXdBMWlDZ0hDUGlYcTAxR2ZpMkoxck1RRU5wbGg0cFNxWmFuSXBm?=
 =?utf-8?B?QW96QTg4SnVhcnJ3NGxjMFBvVWVUeXNvMmpvam8rdHV6S1JSSiszVUVQOGcv?=
 =?utf-8?B?VEpaTEUwa1hDSDhZaVhtYStiMVYvRlBZTW1pdk5mVXluM1Btc3pKd0wrNXBq?=
 =?utf-8?B?WlVTM2VKZnJhL3VPQXJRT1BPQ0p1WnFmQkR3VHRTVlZpSzh3RCs1OWo0U1FV?=
 =?utf-8?B?eDJ1VE5tRFd3VjUrY00xamVNak1wTkRyaFlrcGhnZ3lNcDFLR2hwWHN1VDJh?=
 =?utf-8?B?Z3puQUR6RksweVpPZGE4dTZBd1QzNVIyYld0dDFQdmZCSlJCNWYwVDBSR25r?=
 =?utf-8?B?c29uaWtrZHlhKzJ3cmNDd3QrUTdoOEJMN2NlQ2dTTkdrN3N2M21scGxpc2Nn?=
 =?utf-8?B?WURITjhKQlMxSGpzNkUwTmV4dWtYQ3VnMzVYVURBSUVDZHo1RXc2NXNJa1Vj?=
 =?utf-8?B?MXhMd1FTUTMvUFNDODZURGdhVWNqZktkSk9CdS83U2Q0RWNRYW4xb3hRN2Fh?=
 =?utf-8?B?NTdTVUUveW10UVVRUVZmc0FJaytNRWxDOExub2hzMkxtcG9MQ3NNZFpVNzNB?=
 =?utf-8?B?dnZhSEUxRmhLbE5mWW1MM256WG9xZkgwZXpIMUFxTk1sNHhhcFJGTFVMT3Y0?=
 =?utf-8?B?eDV0U1Q1bExKVzRiRnI3MG5NR0U3MEtCZ0kzcXJaOWJpUWRVaDEzSEdqMWZZ?=
 =?utf-8?B?bEJnTk90cHBsREJISmZ5RHpBRStaYkplSjkzeCs3T1hEVW5qZjR2a0NDSkIw?=
 =?utf-8?B?cTJHYmtyMUlVM3JTNU9ZV0VVODY1akRvTXRvYy9oemdEejZaK0pRUjV4ZFQx?=
 =?utf-8?B?b1hIMzVDVzdiU1hjV0FEK2JxK0tYTjVxbURTSUx4cnhEYzVialB3STJodjND?=
 =?utf-8?B?RmN1WWNkRXYrNWpscXBqWWE3eHR0RXNrZ3cyTkRDczVnSnp1Y2M3eTVsK3ZX?=
 =?utf-8?B?ZWJ5WE5sbkhXVnlWKzh5dXg2L2JvTVhYVWlrdHJZZnlSVHdlVGIvVDh3V1Nn?=
 =?utf-8?B?NFRjME1jZFMwREE3RzZ6U2FvcXhOcWVZY2h4YjltQmFvL1ZhWnJmRkh2eElF?=
 =?utf-8?B?cUtMNHVLd2xDcVBLTmZEdXRoWjcwdDdvZlgwd2c0YkJndGpoOWxOeVZTTkVR?=
 =?utf-8?B?Z3VPSUxSWlNjNmIwaGtRaWt5MWMyVnJjR1IrK3J0VzJjQVY2Q2d6a3JHbFU2?=
 =?utf-8?B?RDhEUzdwRDdRbEcrRVRxSlVmWC9MeG9xQndNdGE5bGVOS2F6TldwOEpGY0Yx?=
 =?utf-8?B?bGFMaUJjRWdZNnI3MEtFTnI4YUR1dXJaWHJJRTV4MmlHaFdpM2dvd0twVFJp?=
 =?utf-8?B?d3dGaWRyWE5mSFJyS1BJWHpzNTFLTUdQV3B0UGRNV2l5RTk3L2JkN1cyb0hr?=
 =?utf-8?B?ekxsN3cxREsrZ09nbzR5YnhzZWtwNVNnK1BFZ2FsaW9iTjRWMC9xVEs5QzND?=
 =?utf-8?Q?1cDTCla2z5g/T+Bzuj5SzCK9R+0BkXnWKjtT65qrqwgw?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4682a26f-30b3-4504-4dd2-08dab0fcb558
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 11:34:24.9244
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jOYxdd3sJc9dkMTMTHC2+G6cGYD0shaYm1rJBGNooWitS8/2n3QnPL0azmwwnsvq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7245
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---------
X-Rspamd-Queue-Id: D68693F59F
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[2603:10b6:408:43::13:received];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.51:from];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.94.51:from];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_GT_50(0.00)[51];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,linux.ie,redhat.com,chromium.org,gmail.com,ffwll.ch,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: N457BTJX32K4PSHCCUDIH3VSWA54ULIQ
X-Message-ID-Hash: N457BTJX32K4PSHCCUDIH3VSWA54ULIQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/21] Move all drivers to a common dma-buf locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N457BTJX32K4PSHCCUDIH3VSWA54ULIQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTguMTAuMjIgdW0gMDE6MDcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IE9uIDEwLzE3
LzIyIDIwOjIyLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+PiBIZWxsbywNCj4+DQo+PiBUaGlz
IHNlcmllcyBtb3ZlcyBhbGwgZHJpdmVycyB0byBhIGR5bmFtaWMgZG1hLWJ1ZiBsb2NraW5nIHNw
ZWNpZmljYXRpb24uDQo+PiAgRnJvbSBub3cgb24gYWxsIGRtYS1idWYgaW1wb3J0ZXJzIGFyZSBt
YWRlIHJlc3BvbnNpYmxlIGZvciBob2xkaW5nDQo+PiBkbWEtYnVmJ3MgcmVzZXJ2YXRpb24gbG9j
ayBhcm91bmQgYWxsIG9wZXJhdGlvbnMgcGVyZm9ybWVkIG92ZXIgZG1hLWJ1ZnMNCj4+IGluIGFj
Y29yZGFuY2UgdG8gdGhlIGxvY2tpbmcgc3BlY2lmaWNhdGlvbi4gVGhpcyBhbGxvd3MgdXMgdG8g
dXRpbGl6ZQ0KPj4gcmVzZXJ2YXRpb24gbG9jayBtb3JlIGJyb2FkbHkgYXJvdW5kIGtlcm5lbCB3
aXRob3V0IGZlYXJpbmcgb2YgYSBwb3RlbnRpYWwNCj4+IGRlYWRsb2Nrcy4NCj4+DQo+PiBUaGlz
IHBhdGNoc2V0IHBhc3NlcyBhbGwgaTkxNSBzZWxmdGVzdHMuIEl0IHdhcyBhbHNvIHRlc3RlZCB1
c2luZyBWaXJ0SU8sDQo+PiBQYW5mcm9zdCwgTGltYSwgVGVncmEsIHVkbWFidWYsIEFNREdQVSBh
bmQgTm91dmVhdSBkcml2ZXJzLiBJIHRlc3RlZCBjYXNlcw0KPj4gb2YgZGlzcGxheStHUFUsIGRp
c3BsYXkrVjRMIGFuZCBHUFUrVjRMIGRtYS1idWYgc2hhcmluZyAod2hlcmUgYXBwcm9wcmlhdGUp
LA0KPj4gd2hpY2ggY292ZXJzIG1ham9yaXR5IG9mIGtlcm5lbCBkcml2ZXJzIHNpbmNlIHJlc3Qg
b2YgdGhlIGRyaXZlcnMgc2hhcmUNCj4+IHNhbWUgb3Igc2ltaWxhciBjb2RlIHBhdGhzLg0KPj4N
Cj4+IENoYW5nZWxvZzoNCj4+DQo+PiB2NzogLSBSZWJhc2VkIG9uIHRvcCBvZiByZWNlbnQgZHJt
LW1pc2MtbmV4dC4NCj4+DQo+PiAgICAgIC0gQWRkZWQgYWNrIGZyb20gSmFzb24gR3VudGhvcnBl
IHRvIHRoZSBSRE1BIHBhdGNoLg0KPj4NCj4+ICAgICAgLSBBZGRlZCBpb3N5c19tYXBfY2xlYXIo
KSB0byBkbWFfYnVmX3ZtYXBfdW5sb2NrZWQoKSwgbWFraW5nIGl0IGZ1bGx5DQo+PiAgICAgICAg
Y29uc2lzdGVudCB3aXRoIGRtYV9idWZfdm1hcCgpLg0KPj4NCj4+IHY2OiAtIEFkZGVkIHItYiBm
cm9tIE1pY2hhZWwgUnVobCB0byB0aGUgaTkxNSBwYXRjaC4NCj4+DQo+PiAgICAgIC0gQWRkZWQg
YWNrcyBmcm9tIFN1bWl0IFNlbXdhbCBhbmQgdXBkYXRlZCBjb21taXQgbWVzc2FnZSBvZiB0aGUN
Cj4+ICAgICAgICAiTW92ZSBkbWFfYnVmX3ZtYXAoKSB0byBkeW5hbWljIGxvY2tpbmcgc3BlY2lm
aWNhdGlvbiIgcGF0Y2ggbGlrZQ0KPj4gICAgICAgIHdhcyBzdWdnZXN0ZWQgYnkgU3VtaXQuDQo+
Pg0KPj4gICAgICAtIEFkZGVkICIhZG1hYnVmIiBjaGVjayB0byBkbWFfYnVmX3ZtYXBfdW5sb2Nr
ZWQoKSB0byBtYXRjaCB0aGUgbG9ja2VkDQo+PiAgICAgICAgdmFyaWFudCBvZiB0aGUgZnVuY3Rp
b24sIGZvciBjb25zaXN0ZW5jeS4NCj4+DQo+PiB2NTogLSBBZGRlZCBhY2tzIGFuZCByLWJzIHRo
YXQgd2VyZSBnaXZlbiB0byB2NC4NCj4+DQo+PiAgICAgIC0gQ2hhbmdlZCBpOTE1IHByZXBhcmF0
aW9uIHBhdGNoIGxpa2Ugd2FzIHN1Z2dlc3RlZCBieSBNaWNoYWVsIFJ1aGwuDQo+PiAgICAgICAg
VGhlIHNjb3BlIG9mIHJlc2VydmF0aW9uIGxvY2tpbmcgaXMgc21hbGxlciBub3cuDQo+Pg0KPj4g
djQ6IC0gQWRkZWQgZG1hX2J1Zl9tbWFwKCkgdG8gdGhlICJsb2NraW5nIGNvbnZlbnRpb24iIGRv
Y3VtZW50YXRpb24sDQo+PiAgICAgICAgd2hpY2ggd2FzIG1pc3NlZCBieSBhY2NpZGVudCBpbiB2
My4NCj4+DQo+PiAgICAgIC0gQWRkZWQgYWNrcyBmcm9tIENocmlzdGlhbiBLw7ZuaWcsIFRvbWFz
eiBGaWdhIGFuZCBIYW5zIFZlcmt1aWwgdGhhdA0KPj4gICAgICAgIHRoZXkgZ2F2ZSB0byBjb3Vw
bGUgdjMgcGF0Y2hlcy4NCj4+DQo+PiAgICAgIC0gRHJvcHBlZCB0aGUgIl91bmxvY2tlZCIgcG9z
dGZpeCBmcm9tIGZ1bmN0aW9uIG5hbWVzIHRoYXQgZG9uJ3QgaGF2ZQ0KPj4gICAgICAgIHRoZSBs
b2NrZWQgdmFyaWFudCwgYXMgd2FzIHJlcXVlc3RlZCBieSBDaHJpc3RpYW4gS8O2bmlnLg0KPj4N
Cj4+ICAgICAgLSBGYWN0b3JlZCBvdXQgdGhlIHBlci1kcml2ZXIgcHJlcGFyYXRpb25zIGludG8g
c2VwYXJhdGUgcGF0Y2hlcw0KPj4gICAgICAgIHRvIGVhc2UgcmV2aWV3aW5nIG9mIHRoZSBjaGFu
Z2VzLCB3aGljaCBpcyBub3cgZG9hYmxlIHdpdGhvdXQgdGhlDQo+PiAgICAgICAgZ2xvYmFsIGRt
YS1idWYgZnVuY3Rpb25zIHJlbmFtaW5nLg0KPj4NCj4+ICAgICAgLSBGYWN0b3JlZCBvdXQgdGhl
IGR5bmFtaWMgbG9ja2luZyBjb252ZW50aW9uIGVuZm9yY2VtZW50cyBpbnRvIHNlcGFyYXRlDQo+
PiAgICAgICAgcGF0Y2hlcyB3aGljaCBhZGQgdGhlIGZpbmFsIGRtYV9yZXN2X2Fzc2VydF9oZWxk
KGRtYWJ1Zi0+cmVzdikgdG8gdGhlDQo+PiAgICAgICAgZG1hLWJ1ZiBBUEkgZnVuY3Rpb25zLg0K
Pj4NCj4+IHYzOiAtIEZhY3RvcmVkIG91dCBkbWFfYnVmX21tYXBfdW5sb2NrZWQoKSBhbmQgYXR0
YWNobWVudCBmdW5jdGlvbnMNCj4+ICAgICAgICBpbnRvIGFzZXBhcmF0ZSBwYXRjaGVzLCBsaWtl
IHdhcyBzdWdnZXN0ZWQgYnkgQ2hyaXN0aWFuIEvDtm5pZy4NCj4+DQo+PiAgICAgIC0gQ29ycmVj
dGVkIGFuZCBmYWN0b3JlZCBvdXQgZG1hLWJ1ZiBsb2NraW5nIGRvY3VtZW50YXRpb24gaW50bw0K
Pj4gICAgICAgIGEgc2VwYXJhdGUgcGF0Y2gsIGxpa2Ugd2FzIHN1Z2dlc3RlZCBieSBDaHJpc3Rp
YW4gS8O2bmlnLg0KPj4NCj4+ICAgICAgLSBJbnRlbCBkcml2ZXIgZHJvcHBlZCB0aGUgcmVzZXJ2
YXRpb24gbG9ja2luZyBmZXdzIGRheXMgYWdvIGZyb20NCj4+ICAgICAgICBpdHMgQk8tcmVsZWFz
ZSBjb2RlIHBhdGgsIGJ1dCB3ZSBuZWVkIHRoYXQgbG9ja2luZyBmb3IgdGhlIGltcG9ydGVkDQo+
PiAgICAgICAgR0VNcyBiZWNhdXNlIGluIHRoZSBlbmQgdGhhdCBjb2RlIHBhdGggdW5tYXBzIHRo
ZSBpbXBvcnRlZCBHRU0uDQo+PiAgICAgICAgU28gSSBhZGRlZCBiYWNrIHRoZSBsb2NraW5nIG5l
ZWRlZCBieSB0aGUgaW1wb3J0ZWQgR0VNcywgdXBkYXRpbmcNCj4+ICAgICAgICB0aGUgImRtYS1i
dWYgYXR0YWNobWVudCBsb2NraW5nIHNwZWNpZmljYXRpb24iIHBhdGNoIGFwcHJvcHJpYXRlbHku
DQo+Pg0KPj4gICAgICAtIFRlc3RlZCBOb3V2ZWF1K0ludGVsIGRtYS1idWYgaW1wb3J0L2V4cG9y
dCBjb21iby4NCj4+DQo+PiAgICAgIC0gVGVzdGVkIHVkbWFidWYgaW1wb3J0IHRvIGk5MTUvTm91
dmVhdS9BTURHUFUuDQo+Pg0KPj4gICAgICAtIEZpeGVkIGZldyBwbGFjZXMgaW4gRXRuYXZpdiwg
UGFuZnJvc3QgYW5kIExpbWEgZHJpdmVycyB0aGF0IEkgbWlzc2VkDQo+PiAgICAgICAgdG8gc3dp
dGNoIHRvIGxvY2tlZCBkbWEtYnVmIHZtYXBwaW5nIGluIHRoZSBkcm0vZ2VtOiBUYWtlIHJlc2Vy
dmF0aW9uDQo+PiAgICAgICAgbG9jayBmb3Igdm1hcC92dW5tYXAgb3BlcmF0aW9ucyIgcGF0Y2gu
IEluIGEgcmVzdWx0IGludmFsaWRhdGVkIHRoZQ0KPj4gICAgICAgIENocmlzdGlhbidzIHItYiB0
aGF0IGhlIGdhdmUgdG8gdjIuDQo+Pg0KPj4gICAgICAtIEFkZGVkIGxvY2tlZCBkbWEtYnVmIHZt
YXAvdnVubWFwIGZ1bmN0aW9ucyB0aGF0IGFyZSBuZWVkZWQgZm9yIGZpeGluZw0KPj4gICAgICAg
IHZtYXBwcGluZyBvZiBFdG5hdml2LCBQYW5mcm9zdCBhbmQgTGltYSBkcml2ZXJzIG1lbnRpb25l
ZCBhYm92ZS4NCj4+ICAgICAgICBJIGFjdHVhbGx5IGhhZCB0aGlzIGNoYW5nZSBzdGFzaGVkIGZv
ciB0aGUgZHJtLXNobWVtIHNocmlua2VyIHBhdGNoc2V0LA0KPj4gICAgICAgIGJ1dCB0aGVuIHJl
YWxpemVkIHRoYXQgaXQncyBhbHJlYWR5IG5lZWRlZCBieSB0aGUgZG1hLWJ1ZiBwYXRjaGVzLg0K
Pj4gICAgICAgIEFsc28gaW1wcm92ZWQgbXkgdGVzdHMgdG8gYmV0dGVyIGNvdmVyIHRoZXNlIGNv
ZGUgcGF0aHMuDQo+Pg0KPj4gdjI6IC0gQ2hhbmdlZCBsb2NraW5nIHNwZWNpZmljYXRpb24gdG8g
YXZvaWQgcHJvYmxlbXMgd2l0aCBhIGNyb3NzLWRyaXZlcg0KPj4gICAgICAgIHd3IGxvY2tpbmcs
IGxpa2Ugd2FzIHN1Z2dlc3RlZCBieSBDaHJpc3RpYW4gS8O2bmlnLiBOb3cgdGhlIGF0dGFjaC9k
ZXRhY2gNCj4+ICAgICAgICBjYWxsYmFja3MgYXJlIGludm9rZWQgd2l0aG91dCB0aGUgaGVsZCBs
b2NrIGFuZCBleHBvcnRlciBzaG91bGQgdGFrZSB0aGUNCj4+ICAgICAgICBsb2NrLg0KPj4NCj4+
ICAgICAgLSBBZGRlZCAibG9ja2luZyBjb252ZW50aW9uIiBkb2N1bWVudGF0aW9uIHRoYXQgZXhw
bGFpbnMgd2hpY2ggZG1hLWJ1Zg0KPj4gICAgICAgIGZ1bmN0aW9ucyBhbmQgY2FsbGJhY2tzIGFy
ZSBsb2NrZWQvdW5sb2NrZWQgZm9yIGltcG9ydGVycyBhbmQgZXhwb3J0ZXJzLA0KPj4gICAgICAg
IHdoaWNoIHdhcyByZXF1ZXN0ZWQgYnkgQ2hyaXN0aWFuIEvDtm5pZy4NCj4+DQo+PiAgICAgIC0g
QWRkZWQgYWNrIGZyb20gVG9tYXN6IEZpZ2EgdG8gdGhlIFY0TCBwYXRjaGVzIHRoYXQgaGUgZ2F2
ZSB0byB2MS4NCj4+DQo+PiBEbWl0cnkgT3NpcGVua28gKDIxKToNCj4+ICAgIGRtYS1idWY6IEFk
ZCB1bmxvY2tlZCB2YXJpYW50IG9mIHZtYXBwaW5nIGZ1bmN0aW9ucw0KPj4gICAgZG1hLWJ1Zjog
QWRkIHVubG9ja2VkIHZhcmlhbnQgb2YgYXR0YWNobWVudC1tYXBwaW5nIGZ1bmN0aW9ucw0KPj4g
ICAgZHJtL2dlbTogVGFrZSByZXNlcnZhdGlvbiBsb2NrIGZvciB2bWFwL3Z1bm1hcCBvcGVyYXRp
b25zDQo+PiAgICBkcm0vcHJpbWU6IFByZXBhcmUgdG8gZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcg
c3BlY2lmaWNhdGlvbg0KPj4gICAgZHJtL2FybWFkYTogUHJlcGFyZSB0byBkeW5hbWljIGRtYS1i
dWYgbG9ja2luZyBzcGVjaWZpY2F0aW9uDQo+PiAgICBkcm0vaTkxNTogUHJlcGFyZSB0byBkeW5h
bWljIGRtYS1idWYgbG9ja2luZyBzcGVjaWZpY2F0aW9uDQo+PiAgICBkcm0vb21hcGRybTogUHJl
cGFyZSB0byBkeW5hbWljIGRtYS1idWYgbG9ja2luZyBzcGVjaWZpY2F0aW9uDQo+PiAgICBkcm0v
dGVncmE6IFByZXBhcmUgdG8gZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0K
Pj4gICAgZHJtL2V0bmF2aXY6IFByZXBhcmUgdG8gZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcgc3Bl
Y2lmaWNhdGlvbg0KPj4gICAgUkRNQS91bWVtOiBQcmVwYXJlIHRvIGR5bmFtaWMgZG1hLWJ1ZiBs
b2NraW5nIHNwZWNpZmljYXRpb24NCj4+ICAgIG1pc2M6IGZhc3RycGM6IFByZXBhcmUgdG8gZHlu
YW1pYyBkbWEtYnVmIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KPj4gICAgeGVuL2dudGRldjogUHJl
cGFyZSB0byBkeW5hbWljIGRtYS1idWYgbG9ja2luZyBzcGVjaWZpY2F0aW9uDQo+PiAgICBtZWRp
YTogdmlkZW9idWYyOiBQcmVwYXJlIHRvIGR5bmFtaWMgZG1hLWJ1ZiBsb2NraW5nIHNwZWNpZmlj
YXRpb24NCj4+ICAgIG1lZGlhOiB0ZWdyYS12ZGU6IFByZXBhcmUgdG8gZHluYW1pYyBkbWEtYnVm
IGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KPj4gICAgZG1hLWJ1ZjogTW92ZSBkbWFfYnVmX3ZtYXAo
KSB0byBkeW5hbWljIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KPj4gICAgZG1hLWJ1ZjogTW92ZSBk
bWFfYnVmX2F0dGFjaCgpIHRvIGR5bmFtaWMgbG9ja2luZyBzcGVjaWZpY2F0aW9uDQo+PiAgICBk
bWEtYnVmOiBNb3ZlIGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoKSB0byBkeW5hbWljIGxvY2tpbmcN
Cj4+ICAgICAgc3BlY2lmaWNhdGlvbg0KPj4gICAgZG1hLWJ1ZjogTW92ZSBkbWFfYnVmX21tYXAo
KSB0byBkeW5hbWljIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KPj4gICAgZG1hLWJ1ZjogRG9jdW1l
bnQgZHluYW1pYyBsb2NraW5nIGNvbnZlbnRpb24NCj4+ICAgIG1lZGlhOiB2aWRlb2J1ZjI6IFN0
b3AgdXNpbmcgaW50ZXJuYWwgZG1hLWJ1ZiBsb2NrDQo+PiAgICBkbWEtYnVmOiBSZW1vdmUgb2Jz
b2xldGVkIGludGVybmFsIGxvY2sNCj4+DQo+PiAgIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9k
bWEtYnVmLnJzdCAgICAgICAgICB8ICAgNiArDQo+PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgICAgICAgICAgICAgICAgICAgICB8IDIxNiArKysrKysrKysrKysrKystLS0NCj4+ICAgZHJp
dmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMgICAgICAgICAgIHwgICA4ICstDQo+PiAg
IGRyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50LmMgICAgICAgICAgICAgICAgICB8ICAgNCArLQ0K
Pj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jICAgICAgICAgICAgICAgICAgICAgfCAgMjQg
KysNCj4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fZG1hX2hlbHBlci5jICAgICAgICAgIHwg
ICA2ICstDQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2ZyYW1lYnVmZmVyX2hlbHBlci5j
ICB8ICAgNiArLQ0KPj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV90dG1faGVscGVyLmMgICAg
ICAgICAgfCAgIDkgKy0NCj4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jICAgICAgICAg
ICAgICAgICAgIHwgICA2ICstDQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZf
Z2VtX3ByaW1lLmMgICB8ICAgMiArLQ0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZG1hYnVmLmMgICAgfCAgIDIgKy0NCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5jICAgIHwgIDE0ICsrDQo+PiAgIC4uLi9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jICB8ICAxNiArLQ0KPj4gICBkcml2ZXJzL2dwdS9kcm0v
bGltYS9saW1hX3NjaGVkLmMgICAgICAgICAgICAgfCAgIDQgKy0NCj4+ICAgZHJpdmVycy9ncHUv
ZHJtL29tYXBkcm0vb21hcF9nZW1fZG1hYnVmLmMgICAgIHwgICA0ICstDQo+PiAgIGRyaXZlcnMv
Z3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kdW1wLmMgICAgICB8ICAgNCArLQ0KPj4gICBkcml2
ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfcGVyZmNudC5jICAgfCAgIDYgKy0NCj4+ICAg
ZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfb2JqZWN0LmMgICAgICAgICAgICAgIHwgIDE3ICstDQo+
PiAgIGRyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX3ByaW1lLmMgICAgICAgICAgICAgICB8ICAgNCAr
LQ0KPj4gICBkcml2ZXJzL2dwdS9kcm0vdGVncmEvZ2VtLmMgICAgICAgICAgICAgICAgICAgfCAg
MTcgKy0NCj4+ICAgZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYyAgICAgICAg
IHwgICA3ICstDQo+PiAgIC4uLi9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGln
LmMgICB8ICAyMiArLQ0KPj4gICAuLi4vbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjIt
ZG1hLXNnLmMgfCAgMTkgKy0NCj4+ICAgLi4uL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZt
YWxsb2MuYyAgICAgIHwgIDE3ICstDQo+PiAgIC4uLi9wbGF0Zm9ybS9udmlkaWEvdGVncmEtdmRl
L2RtYWJ1Zi1jYWNoZS5jICB8ICAgNiArLQ0KPj4gICBkcml2ZXJzL21pc2MvZmFzdHJwYy5jICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDYgKy0NCj4+ICAgZHJpdmVycy94ZW4vZ250ZGV2LWRt
YWJ1Zi5jICAgICAgICAgICAgICAgICAgIHwgICA4ICstDQo+PiAgIGluY2x1ZGUvZHJtL2RybV9n
ZW0uaCAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArDQo+PiAgIGluY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oICAgICAgICAgICAgICAgICAgICAgICB8ICAxNyArLQ0KPj4gICAyOSBmaWxlcyBj
aGFuZ2VkLCAzMjUgaW5zZXJ0aW9ucygrKSwgMTU1IGRlbGV0aW9ucygtKQ0KPj4NCj4gQXBwbGll
ZCB0byBkcm0tbWlzYy1uZXh0DQoNCkZpbmFsbHkhIEZpbmdlcnMgY3Jvc3NlZCB0aGF0IGFsbCBj
b3JuZXIgY2FzZXMgd2hlcmUgZml4ZWQgZHVyaW5nIHRoZSANCnJldmlldy4NCg0KQnV0IGlmIGFu
eXRoaW5nIHNob3dzIHVwIGZlZWwgZnJlZSB0byBsb29wIG1lIGluIHRvIGhlbHAgZml4aW5nIHRo
aW5ncy4NCg0KVGhhbmtzIGEgbG90IGZvciBkb2luZyB0aGlzLA0KQ2hyaXN0aWFuLg0KDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
