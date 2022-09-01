Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E161E5A8F5C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 09:08:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E793479B5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 07:08:57 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2081.outbound.protection.outlook.com [40.107.243.81])
	by lists.linaro.org (Postfix) with ESMTPS id 378AA3EC48
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 07:08:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ql/KZU/ARogmc3djY7zEHYdjTsEqbz8aJy++asQ6RR17I1KklOYnATOIM5RRI229ggZke5AmEOmzxnOmrUvDPvrlEWSXY6V2M1OcCv7HznMvPQClrPJtQk2wX9H5kqdw03gU+sIZ/aYosmwQBxdBrBXn2Gx84y0/jyu3bWFbCcJpq05tUElppOScz8xUMrivpGNlUcioumEGS8DVLp42g5M28TIoBBMtFjuvhtfzMAmm/+u4PXzwl1Ifyu7OlmVAYCWXbL8Bxfks/JEW0FjxF7vacozpYgzosWAxeLsnYcgHvrI8vaDeyc77IwE41Qg4lpXJ3BoJRdMi1VS8ie4MJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dYrS77+HQPJHoGzaw8g5OgzEBMpUsCYp7gFxAxTLWuk=;
 b=hWeM6gBbr/S1fwMI1sIomm/5U8ws/75v5ILUZeDLK661R2cf1PELBZDbaqU07vxJNEXnTV6f0G+uYbmEaWj8NBgKimQ2dGFmzuNV7UrzhKR52WenktWrcFQlugPWOBon5eq/+fcXefXvbZccrmRB61Mzlt+Wqny7TE4omew6LRyPLmmglASr1Xuj3A7d9idS9T+zLUX70NR2LY1HAljhG7StjGeLwJXWsalLGg3PuaKph7580888K9DX6Lwo352IM9Rhw+0S/uuHq+ZKlkmt8aTzGLnGWwL1MNG+SGeyyIIARdJIS/V9J3zFpqwLTPVwC/SEFY2orCNgsWmMhIXpiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dYrS77+HQPJHoGzaw8g5OgzEBMpUsCYp7gFxAxTLWuk=;
 b=m9ukBm8VR0C+D8Ryqo4p+ZlcAg9mBaDAczVNLu54bCUZCPRMEt8A05MsXLVr5uC4nW/adh+pR6ODmFCL4Iy/A3aUhjyO44q7rkM3Kk9a6HEjTr5rp/K2Gdh+/LaZ+AbR2tr3eRSzXNPINcz8jOadJ+s7O8Umgqc8r78bwHIzlFw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by CH0PR12MB5388.namprd12.prod.outlook.com (2603:10b6:610:d7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.11; Thu, 1 Sep
 2022 07:08:50 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a%4]) with mapi id 15.20.5566.021; Thu, 1 Sep 2022
 07:08:50 +0000
Message-ID: <12ad2b83-212b-8a7d-e10f-32543024974b@amd.com>
Date: Thu, 1 Sep 2022 09:08:34 +0200
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
 Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-18-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-18-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AM6P195CA0014.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:81::27) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa757217-b21b-42f1-4e0f-08da8be8d1e3
X-MS-TrafficTypeDiagnostic: CH0PR12MB5388:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kQPZTLmke1dWgktwLEcxUjzQPs+7LTz66Nq2Vdt7Q+AS35p1lIzXr+s7DI5jd9ctfAul+KTseKPYw8t4DyhAlCbxopHZxjtfKCAgW9cfH/E6kZLoSIyWteJAT1ol2lrRKL3bRRxIzING/d9vqSffRIdexxPi/XAZ4BJgYnv1RvXiUBkSJ6jtJdTBRUfVX9Oj6ced5kBMbL4oOS5n3JYMw3LJgIa3t0VAEL7yVnWid+7Cioru2GBPXPhYvTjVuebdZ2xsUaDcRdLwIIrnzwPweEn3Q08uNNW31mX6QskY62BWmPGwAuSztm5HOGHrBzZk8TWqZnDk7geNgLH4TfYZ/6rYOIWdkAFcKINYtNxlH0srUvkvwVA6C8T9c2jRHX66QrCI1iyYA2sDZgzpp2GhXvIpuZ3TeVF67a/vpZlihGvIBHdBtwFQJvkugeBXvYopYMsfcQp9kvN3D0TEVruit+MezAIpWoq1Zg1OD7ql+34xcd+ZpuJ12/faExGzUB/2jDT1k+TFxD9zyb0vUtLaJURfptm+/9W3jJFMNJI0Ev6W3zxhIU3l/htI36breAsch7k8nYErFTk/ql+C+w7k9UoiHhHvMGygGA2uE5wHWOwPbpRD5S+PIoeETdjg9IvwVdYAMnPNoh4QLEEbYDK1kUnEsMf4ZXrXoffsZV5zfu0akFxIyixI9oEnMGj0GMLi4htG6e8WF5vkLXkc+gQMz8Ez6dxyQHaJ7K/v20oauOodSJs3MoDDuzTKnRnE1MZnCP3Eixq0RAno1z4Xb5sd8ia9Ndk2+bvjlNUMp328bxvAZaQ4F79WuFA3s9zQho5/
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(83380400001)(38100700002)(66556008)(110136005)(316002)(66476007)(4326008)(8676002)(66946007)(478600001)(36756003)(6486002)(31686004)(6666004)(5660300002)(8936002)(41300700001)(921005)(31696002)(86362001)(2616005)(66574015)(186003)(7416002)(7406005)(26005)(6506007)(2906002)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TkFhcTc0Q05IN0lFTjRFZDFPcHZyZTdBR0l2OWoxTEJWMHgxdHZEMTZYdzFh?=
 =?utf-8?B?N1d6SGRTeHZiV1pqd3l1dlJsK2pCM3FqcGNEM1NOOExPSVlJbENmMVVkOEZ3?=
 =?utf-8?B?Zm1DUitDMVVQNXVkUWIxU2NWajNwNjArUXlscFlWT2FIVFdTK1p6R0RwSkh0?=
 =?utf-8?B?OWo1cFY2Z3ovWXdBZ2NTSHd0TkFYaGNZTVl6dCtYcEx6LzArWGtBQmlPQlJh?=
 =?utf-8?B?dVN1QjJOb2w0WDNGN2ZUSzRrUjR3YjYzbTY5SDNzWHhaRFlsa2Fqd3MyMmZU?=
 =?utf-8?B?K21qWG5iMDBEQ2pUVkFNcnhod0c0QWtXMytFRUVab0h2ZURMcTIvNElDYkRi?=
 =?utf-8?B?NXpGclB2M2hmZlVGajY2Z2lKdW5xajVKQ2p0K2VZdFFXVVc0UjNYUm1ZNldq?=
 =?utf-8?B?eEhoNG0yMnlZK0E5dys1cENjS0l2S0xVdGtONnBEL09VKzNLM2p5WEtWRVpX?=
 =?utf-8?B?Qi9aL1V6aVh2ODVpYkNQS2ZJSXR5L1F5NU1LMDBhbzVNMFRsM2E1Y1N0MjVV?=
 =?utf-8?B?WTF2clE1TU9KaVFJcGJxZVJsMTM0NU1Fb0N5KytaeUxQN2ZWSmw0RTZacmZw?=
 =?utf-8?B?bklCZm1xWVdQbEpVSW1rYnYveW9DUDl2VTdrdHVKMXlQR3FmSjVjYnBYdkh3?=
 =?utf-8?B?ZU9helMzQldPQnpVTnJUSEU5aWpMZjBDaThZdjI0K3htb2RacVY1eitTS24w?=
 =?utf-8?B?NjdIMzNZZGJOUTJRZ2pIUkl4MVRLM1RSdWtUTkwxL04rUFgzbEowNW1zVEtT?=
 =?utf-8?B?ajJhTS80dkhuUDdoQ0tFWGF6RFd3V0VaWGJSUzBQMVA2QXI1MlIvZlJMVkgw?=
 =?utf-8?B?S1huSk1Xcit0Y01XRmZmOHc0bTVwQXJ4RmZkZFgzSFc2Zk9WTU44QVM2Z1k5?=
 =?utf-8?B?U2xHWU1lVTc4T2tPN3pGaGdBeWlyLyt1SjFEckdZVGlTMmsxd08yam0wV1pB?=
 =?utf-8?B?THE3UzRKYmEzWmw1OG1JWjA3NnUvSGgvSWIwNGlIZ2F5ZGVjUVZrK1ZkdzhG?=
 =?utf-8?B?OEFYL0ZSL05sYjF0NVRiNFhYVjR3c3Frcm9SYmdhOGV4a05oUEVQdVdiQVFF?=
 =?utf-8?B?RXhGQXd1OUdTTWd3Y2hrTHlxRVVkY0h5dG5tcUdLUFlINkNWZ3Zpd1pqWWFt?=
 =?utf-8?B?dnk2QWx3dG9naVVIK2k1K3VxdHc1UjhMTUxsY0RJTElhVUhuekE4dGxzaE5h?=
 =?utf-8?B?RjZ4VHFQeHBoVDRTS1MwbXJnZGVLZTlhb0p4L3JqanJlQ2tSUmttSmo0MGNU?=
 =?utf-8?B?cFJDdGpHSHRHcFRFQmRpYlRxdmFBajNBZHo0aVRYeEtwYkpQWmlsblNsTkJG?=
 =?utf-8?B?bTh3djlwWUZWS3pHTzBlUkJLdjV3cENvK21yZmtQZmQ1OG50K0M2TXBzMWNh?=
 =?utf-8?B?NmtBY001S0NYNG0yM2t3SlYwNTJTWHhDQ0lVVm5sRnlIVDBEMEJEZkJuZElN?=
 =?utf-8?B?SmpJSG9uZi81Z25oeEJVSWZNeWh5d3RtWFBXdWUwUnNZY0JxNTc1WmNwdG5w?=
 =?utf-8?B?YmdQRkkxbWR2TXZueXlhQWt0QWNlZGpEQ1BpU21wMThnSzB0ckhiTUhUaHhM?=
 =?utf-8?B?REtnZjFBRmhXRVBheFlNUlMwem9qTXk4RlpWbER6aVdZSnNEVmp4cUlrc0dt?=
 =?utf-8?B?QzlQQjVpUmFONThLQ3ZYaEIyUHMyQnkzcWQ5RW9oL0IzNHhXOW4xU2hZcW1E?=
 =?utf-8?B?V1BERXlWZ2NwbmlUWDQ1MmhaRDZWeVRNTkRPdXJvWlJ1SUc2QTcwakEzNFhu?=
 =?utf-8?B?OTYwaWw2ZGRNdTNUOGlTaXVmR2xiaVA3QjU1allidzMzUG91WjdEREFZYzlx?=
 =?utf-8?B?WjhVNWVyN2lSaE1LWnlYbFp0OEZBWmY4VjJacUs0QU9EckdHSkRIcnA0TXdv?=
 =?utf-8?B?THpTME5SMFpXb1hnR3ZQRXdCOERlYUVnenh5ZU9rMk5WYjNPaWN2YS8rM201?=
 =?utf-8?B?bisvK2dFclArcHpqd3BvbW9obkwrcEpRL2J2TEVqb2FmNDlrRGZuZDhjbVgv?=
 =?utf-8?B?Yk93bzFyZTllc3NPMmhNQVVkTUhaaTFWTnVEOEhOUVlocDhFd3owMmlFUkJV?=
 =?utf-8?B?YThqd0RIV1lQVStPZjVGMElZWStIdUxFREpDd21kb2ZEekdWSEpwS1JiMU9L?=
 =?utf-8?Q?bFgm42R3SB4hj52xAJ+fG8iDp?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa757217-b21b-42f1-4e0f-08da8be8d1e3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 07:08:50.1823
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SNv2bKLzz9y15OH+m10oUa0Ivt+7taTfssAvY+DRz11UqI0BCHqudTOPjtNZOHPx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5388
Message-ID-Hash: WS7RSMI472JNMZBCIIEXIRYGAZKVV44J
X-Message-ID-Hash: WS7RSMI472JNMZBCIIEXIRYGAZKVV44J
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 17/21] dma-buf: Move dma_buf_map_attachment() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WS7RSMI472JNMZBCIIEXIRYGAZKVV44J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IE1vdmUgZG1h
LWJ1ZiBhdHRhY2htZW50IG1hcHBpbmcgZnVuY3Rpb25zIHRvIHRoZSBkeW5hbWljIGxvY2tpbmcN
Cj4gc3BlY2lmaWNhdGlvbiBieSBhc3NlcnRpbmcgdGhhdCB0aGUgcmVzZXJ2YXRpb24gbG9jayBp
cyBoZWxkLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lw
ZW5rb0Bjb2xsYWJvcmEuY29tPg0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQo+IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgfCAxMCArKy0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IDA3Mzk0MmJmNWFlOS4u
OGU5MjhmZTZlOGRmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+
ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTEwMzcsOCArMTAzNyw3IEBA
IHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1Zl9tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gsDQo+ICAgCWlmIChXQVJOX09OKCFhdHRhY2ggfHwgIWF0dGFjaC0+
ZG1hYnVmKSkNCj4gICAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiAgIA0KPiAtCWlmIChk
bWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpKQ0KPiAtCQlkbWFfcmVzdl9hc3Nl
cnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7DQo+ICsJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQo
YXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KPiAgIA0KPiAgIAlpZiAoYXR0YWNoLT5zZ3QpIHsNCj4g
ICAJCS8qDQo+IEBAIC0xMDUzLDcgKzEwNTIsNiBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZf
bWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPiAgIAl9
DQo+ICAgDQo+ICAgCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKSB7DQo+
IC0JCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCj4gICAJCWlm
ICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZKSkgew0KPiAgIAkJCXIgPSBh
dHRhY2gtPmRtYWJ1Zi0+b3BzLT5waW4oYXR0YWNoKTsNCj4gICAJCQlpZiAocikNCj4gQEAgLTEx
NDIsMTUgKzExNDAsMTEgQEAgdm9pZCBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPiAgIAlpZiAoV0FSTl9PTighYXR0YWNoIHx8ICFh
dHRhY2gtPmRtYWJ1ZiB8fCAhc2dfdGFibGUpKQ0KPiAgIAkJcmV0dXJuOw0KPiAgIA0KPiAtCWlm
IChkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpKQ0KPiAtCQlkbWFfcmVzdl9h
c3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7DQo+ICsJZG1hX3Jlc3ZfYXNzZXJ0X2hl
bGQoYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0KPiAgIA0KPiAgIAlpZiAoYXR0YWNoLT5zZ3QgPT0g
c2dfdGFibGUpDQo+ICAgCQlyZXR1cm47DQo+ICAgDQo+IC0JaWYgKGRtYV9idWZfaXNfZHluYW1p
YyhhdHRhY2gtPmRtYWJ1ZikpDQo+IC0JCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1h
YnVmLT5yZXN2KTsNCj4gLQ0KPiAgIAlfX3VubWFwX2RtYV9idWYoYXR0YWNoLCBzZ190YWJsZSwg
ZGlyZWN0aW9uKTsNCj4gICANCj4gICAJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRt
YWJ1ZikgJiYNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
