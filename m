Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 171645A8E22
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:15:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C1533F56C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:15:31 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (mail-eopbgr20056.outbound.protection.outlook.com [40.107.2.56])
	by lists.linaro.org (Postfix) with ESMTPS id DBCC447F1F
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Aug 2022 14:39:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KbbecUIf2hmoJEPPqZJSwLflPxl2F03hCyjPKNzZNFfGtqIWLur66JlFDmBSVuO17pIc+NLjnBf+uyokxRmycB3BZl3rO37Rl8UYk12fCZdqpy+jMdi38RLq2sMiz/4QwFpDdn3VFgq5Q/W2x033Q7DWkarj0/H0p15aE56rGv6ZCdMSbNyWAG4xaXy2OOXY0JWniDgzOQrSp3/f8W2g5lpKKNZ4UIYnNpj3s57Lvrqm6onBbdyzdLL/mje9jjf5H95EPDQ2UEl8W85V5zyfQ0dbfeTRtjbhQYh/um+qVoW3CDa74rQ36H7UmrBkuBGFiIC2qSAcCqwIvyRSzAnpxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N2HHSbfc3pn2YJFnPBWYwuOWvQGRjYckyuYciKWpHD4=;
 b=VTlqWczvEL0X9sjlIO+2+/JboPqEFfikcrYNOdBwhfaW8TfssM1ToZGbwr740a3kjZXGb+0Rqhvurl2iB52JnwCxVhoKh/XRva+xovNGDiKz/GTti49Sd6wNE0UQoy80xYkmuotmsyzQfH/UcqIuwiIF8UOTRK13OpyaXJebJU6i/bth0UjWt0GtYWNHi4IM+/QQCWG0/fAQj6KfH6tf/LRfu9J/yXxn3VeDf/qHjheJYuxQqNGFfNo5p1XOF2K/a9ue40vmrNQ9k8C1L1l1ouJtdn55f/jRcdPu+lGnRj0f5PWgPbW3AHxiPpCCsFQI4FU39dIO2Mqja/y3sb7ChA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N2HHSbfc3pn2YJFnPBWYwuOWvQGRjYckyuYciKWpHD4=;
 b=T7WNtoKR3ebmxaALXmwgkVlBHpZR/cFYhfe+YVLeJNPIhm9M+q9mo5j/VbDdYoIbdrtIMiTMvLIPZo+0ncuDd6zSOAs5wUXZMUcYfiO3CXp9Xvk04GBpIDMcgVG/bb8buXbn7Gb3SoHlu5+KQ/pQzN8z/hbA28Krm5g2PsLnKUg=
Received: from AM6PR04MB6743.eurprd04.prod.outlook.com (2603:10a6:20b:f1::11)
 by AS8PR04MB8931.eurprd04.prod.outlook.com (2603:10a6:20b:42e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.20; Mon, 8 Aug
 2022 14:39:53 +0000
Received: from AM6PR04MB6743.eurprd04.prod.outlook.com
 ([fe80::a401:5ed6:1bfa:89a9]) by AM6PR04MB6743.eurprd04.prod.outlook.com
 ([fe80::a401:5ed6:1bfa:89a9%5]) with mapi id 15.20.5504.019; Mon, 8 Aug 2022
 14:39:53 +0000
From: Olivier Masse <olivier.masse@nxp.com>
To: "brian.starkey@arm.com" <brian.starkey@arm.com>
Thread-Topic: [EXT] Re: [PATCH 1/3] dma-buf: heaps: add Linaro secure dmabuf
 heap support
Thread-Index: AQHYqNLEB1kEEMDN2EiJXHn7b90D762gcg6AgASkiYA=
Date: Mon, 8 Aug 2022 14:39:53 +0000
Message-ID: <7e61668164f8bf02f6c4ee166e85abc42b5ee958.camel@nxp.com>
References: <20220805135330.970-1-olivier.masse@nxp.com>
	 <20220805135330.970-2-olivier.masse@nxp.com>
	 <20220805154139.2qkqxwklufjpsfdx@000377403353>
In-Reply-To: <20220805154139.2qkqxwklufjpsfdx@000377403353>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed727720-04b2-4e22-0552-08da794bdb62
x-ms-traffictypediagnostic: AS8PR04MB8931:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KuZCgSeyTj4GkqTL10pB5exECN8sVGC3O/3RgLWnAsSlNHezj387QALPfaReWb8zw9Nz6M9xmns6+IUpy7wdQRlWBTkuZPoPK4VHcf2qArasWcSr6MKWNKNJbz4ExelVaB+16TIseWsOJD+SonrZqCGFHgIIQephNcvkqQL3xRPuBEagjm+sF217tSVZWERataVVLqGR3sfc3jkojB5oo7vXZVUQoZDRYgBuXJQouO+jjQNB5Ipm/vzsywX76/BH2DB4vsMRCsA0D+SHKs3b4jI+o7E120ysgyaEXG39q2Ocl+AZHWmBFkXTrAwZSXlA46E/YTsIV2fmgkQE27mFM+5VWhXy1//frieyObu2GFifhlk+tbu8FpTpyHklqP6pBqfSr2Xp6iB6VIorxkaS4hiVmniXqWLjejjM7S1LgLxnx36sb2i1Zx4sSFFq+1ZTm9g/8ifgzLNqQkock68rsHRt4kMXunDsKDTfMUNQ57wwcddp26C6vpOpRzV1j+j8TsDFVUw78hk+CtIUr0YH1gB9Qs81lv71u2feZvH/6JFZYzepwToRMXAY1p4xzATduPau6lqmUIsa+R9ibtgYw3onkSp3FX+5XGN2t3hqh+EWZ2QDHvphf4M8zPuRCzGl6hfLcrZVpnLh1Telmq3/0E769yIYEzjhsTkC8VuQthFzE55w0e1iVYdnR+jnXllXr1VgiUaChDrKG6MFg9f0Os8QbemV56JVMXEGySAZp4wA4v94JsFrI4l6wSLclnT64dwufsJup/kSOTCuicek89BkgjS7ImLwj/zZvnQgoqz11BWNwWC4H7NGeOmL6o0tk5Gk/T94GU2C42OKptqnAxX0BozUfx1ewEY6DBPbUik=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6743.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(366004)(346002)(376002)(396003)(39860400002)(122000001)(5660300002)(36756003)(8936002)(6486002)(44832011)(86362001)(2906002)(41300700001)(38100700002)(966005)(30864003)(478600001)(76116006)(64756008)(66476007)(66446008)(91956017)(66556008)(66946007)(8676002)(4326008)(6916009)(54906003)(6506007)(316002)(71200400001)(38070700005)(186003)(26005)(83380400001)(6512007)(2616005)(99106002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-15?Q?d/S9i4xEYXBq6opfM3XvEfxz+UXp/m0HK2Sui+VKAIvFTG+5StYXOvMnN?=
 =?iso-8859-15?Q?/5GVlCl6WG14SvN7AhvGGf/2RUwHM7Z0w2l7p/UIeSNMhi00EYGpCzcK1?=
 =?iso-8859-15?Q?giGQANBHm3yWFGWR759tz5xcqIvHKv6WMGvOB2GHnMrWpa8v8PQ5YQJ02?=
 =?iso-8859-15?Q?1EmwXdfiAwHEK/lkaYDNnO2a+wqwU36ZlmHoAvQXup4waw+vNj1dg3ZbA?=
 =?iso-8859-15?Q?ja09eaPeKlJPGMSphys+Q0l6dPgsdO2dgvD9NxVfliJLlvAItieIuxMmJ?=
 =?iso-8859-15?Q?XOcmjMVrA/sIz46g0xA2YrhBgvFVtqCOwCrnaZJeIUGa/Atv2w8Tf6gq2?=
 =?iso-8859-15?Q?tYRVlzQg6Agr9inVX+ZHpE5D5vxsNkGEllIJ+DDBZFe70DQdtPKTyJyx6?=
 =?iso-8859-15?Q?37D6zghHhj+MYFxN+bsK7gjDd9hmjHD7FMntGdMdPNGjuHmTdksjOuQt/?=
 =?iso-8859-15?Q?TqTFhFwVk0AvlILqo8jJahb9HzvIdjOpOPjOmf6wkgMpiP54MjLPpM3Pf?=
 =?iso-8859-15?Q?fnyuK+1s2C9XayqMyDCU52YKqQH9OCJkF0lWPPurRTl54Rmj8vFfoTbP4?=
 =?iso-8859-15?Q?QXaxOuDHaXm7sYXC6noMztNKwPC+E8aMKDYrGkLWj5Onrz3/pJ2t0e0P+?=
 =?iso-8859-15?Q?aTgkZDueUT0GwftEhCXl71lLKemkFUCvbQUMAHrndIZ7JnD4a+4e3n/F4?=
 =?iso-8859-15?Q?8MgK/WVWiY2m6ryjrULr/1RoEzSJZQwK+Byc2aZtSMACdQAe5Codh8eCm?=
 =?iso-8859-15?Q?qHtu0qMzH0gVRdXAjHOfv/jWU0wTjqN6Kl24pc4imF4rqS0mTQV7FWlEK?=
 =?iso-8859-15?Q?vUGjKRFI0q5C5jhdPsD1gmwZj6Q6/f+mBbvwxsEXWRhCZzZ/yiObaMsph?=
 =?iso-8859-15?Q?mhju9maV8gYVh2FaS50pfc6GdlkyF84zdnjLa/rJqo3DBn5Xqb7FpWdVT?=
 =?iso-8859-15?Q?bp6uVJm/bBSuAHo2+vCtSOMY4EBTq1fWO3IsSraR8y4LKvEtmE28w+IQ2?=
 =?iso-8859-15?Q?CQzRwaWybZyCliHgT6rUqwKCIqY43dXEsJM9WhSA9fglXzb/b//rFlKm7?=
 =?iso-8859-15?Q?ZU+KLvnQK7/tvtZFYdX9MRuCWUcnbGrMvklyqcJLa/Yy8B5EX/VxbXrtT?=
 =?iso-8859-15?Q?7tEpyPVhXcuStWur+0KrC0ark4SJdlYWS9gx10QgNG46f2v3ihK3HCwDm?=
 =?iso-8859-15?Q?6A3OcdI+sQgGNdqg3En6umSk9H7WkJeiksTocDEx8o0m9J3DrtyHZ6pae?=
 =?iso-8859-15?Q?Rz2fLNC4G8XRwxr9eSpEWnzRFUVGEGv3w326SScD2HkGgA0lQuVd7zQL5?=
 =?iso-8859-15?Q?kbN2qZA7nU/NdpKO8WKKJNWykMp8PwxKYf+aHJpw9NFEfkv4zzjiPWOCs?=
 =?iso-8859-15?Q?cNaeAJ2nRur6Je11x0aJYewtOyxmkOuyZS3eaefxV3nWDNGPhRIYF5Mgs?=
 =?iso-8859-15?Q?Bo5jx1FMGXStUr5CGHjLHHkB2nqQoyJRuM55zC1w8XFoKlxu5M4UDtOhM?=
 =?iso-8859-15?Q?x9n+NiYgUB9aLVulqRE9req0CRsCIo7HEvnjmCeXzNroYE18kjkvWnNuX?=
 =?iso-8859-15?Q?Y7XRqNXns5hjoeW+hPCnkbo5bAJjq2PhANelCZ7EatkUuaJG8FGWejJ7W?=
 =?iso-8859-15?Q?XKB6E9AJGC2MkaGpLRbjkVmSjiSO1upBpdqwkeqwDgqU1EEtkv4rA3uPW?=
 =?iso-8859-15?Q?cVeR?=
Content-ID: <87716A19DBA34946A724DBA1DED4990B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6743.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed727720-04b2-4e22-0552-08da794bdb62
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2022 14:39:53.6020
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbOgy1PnhikyGMvR/AgGhLgiNu/MIQa0dieqDA39Dnf8cc0byG885+gDz1lqhzNaFli5u0VaRqNHNj2FF+IePg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8931
X-MailFrom: olivier.masse@nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P6BNL3LSGL3R5LQTZFIAYGC7IUWH344E
X-Message-ID-Hash: P6BNL3LSGL3R5LQTZFIAYGC7IUWH344E
X-Mailman-Approved-At: Thu, 01 Sep 2022 06:15:26 +0000
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "nd@arm.com" <nd@arm.com>, =?iso-8859-15?Q?Cl=E9ment_Faure?= <clement.faure@nxp.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXT] Re: [PATCH 1/3] dma-buf: heaps: add Linaro secure dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P6BNL3LSGL3R5LQTZFIAYGC7IUWH344E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Brian,

On ven., 2022-08-05 at 16:41 +0100, Brian Starkey wrote:
> Caution: EXT Email
> 
> Hi Olivier,
> 
> Thanks, I think this is looking much better.
> 
> I'd like to know how others feel about landing this heap; there's
> been
> push-back in the past about heaps in device-tree and discussions
> around how "custom" heaps should be treated (though IMO this is quite
> a generic one).
> 
> On Fri, Aug 05, 2022 at 03:53:28PM +0200, Olivier Masse wrote:
> > add Linaro secure heap bindings: linaro,secure-heap
> > use genalloc to allocate/free buffer from buffer pool.
> > buffer pool info is from dts.
> > use sg_table instore the allocated memory info, the length of
> > sg_table is 1.
> > implement secure_heap_buf_ops to implement buffer share in
> > difference device:
> > 1. Userspace passes this fd to all drivers it wants this buffer
> > to share with: First the filedescriptor is converted to a &dma_buf
> > using
> > dma_buf_get(). Then the buffer is attached to the device using
> > dma_buf_attach().
> > 2. Once the buffer is attached to all devices userspace can
> > initiate DMA
> > access to the shared buffer. In the kernel this is done by calling
> > dma_buf_map_attachment()
> > 3. get sg_table with dma_buf_map_attachment in difference device.
> > 
> 
> I think this commit message could use a little rework. A few
> thoughts:
> 
> * The bindings are in a separate commit, so seems strange to mention
>   here.

what about:
"add Linaro secure heap compatible reserved memory: linaro,secure-heap"

> * "buffer pool info is from dts" --> I think you should mention that
>   this uses a reserved-memory region.
ok

> * sg_table nents and genalloc seem like low-level implementation
>   details, so probably not needed in the commit message
> * The usage steps 1, 2, 3 aren't specific to this heap - that's how
>   all dma-buf sharing works.
ok, let's cleanup and removed this.

> 
> > Signed-off-by: Olivier Masse <olivier.masse@nxp.com>
> > ---
> >  drivers/dma-buf/heaps/Kconfig       |   9 +
> >  drivers/dma-buf/heaps/Makefile      |   1 +
> >  drivers/dma-buf/heaps/secure_heap.c | 357
> > ++++++++++++++++++++++++++++
> >  3 files changed, 367 insertions(+)
> >  create mode 100644 drivers/dma-buf/heaps/secure_heap.c
> > 
> > diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-
> > buf/heaps/Kconfig
> > index 3782eeeb91c0..c9070c728b9a 100644
> > --- a/drivers/dma-buf/heaps/Kconfig
> > +++ b/drivers/dma-buf/heaps/Kconfig
> > @@ -20,3 +20,12 @@ config DMABUF_HEAPS_DSP
> >            Choose this option to enable the dsp dmabuf heap. The
> > dsp heap
> >            is allocated by gen allocater. it's allocated according
> > the dts.
> >            If in doubt, say Y.
> > +
> > +config DMABUF_HEAPS_SECURE
> > +     tristate "DMA-BUF Secure Heap"
> > +     depends on DMABUF_HEAPS
> > +     help
> > +       Choose this option to enable the secure dmabuf heap. The
> > secure heap
> > +       pools are defined according to the DT. Heaps are allocated
> > +       in the pools using gen allocater.
> > +       If in doubt, say Y.
> > diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-
> > buf/heaps/Makefile
> > index 29733f84c354..863ef10056a3 100644
> > --- a/drivers/dma-buf/heaps/Makefile
> > +++ b/drivers/dma-buf/heaps/Makefile
> > @@ -2,3 +2,4 @@
> >  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)    += system_heap.o
> >  obj-$(CONFIG_DMABUF_HEAPS_CMA)               += cma_heap.o
> >  obj-$(CONFIG_DMABUF_HEAPS_DSP)          += dsp_heap.o
> > +obj-$(CONFIG_DMABUF_HEAPS_SECURE)    += secure_heap.o
> > diff --git a/drivers/dma-buf/heaps/secure_heap.c b/drivers/dma-
> > buf/heaps/secure_heap.c
> > new file mode 100644
> > index 000000000000..25b3629613f3
> > --- /dev/null
> > +++ b/drivers/dma-buf/heaps/secure_heap.c
> > @@ -0,0 +1,357 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * DMABUF secure heap exporter
> > + *
> > + * Copyright 2021 NXP.
> 
> It's 2022 :-)
> 
> > + */
> > +
> > +#include <linux/dma-buf.h>
> > +#include <linux/dma-heap.h>
> > +#include <linux/dma-mapping.h>
> > +#include <linux/err.h>
> > +#include <linux/genalloc.h>
> > +#include <linux/highmem.h>
> > +#include <linux/mm.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_fdt.h>
> > +#include <linux/of_reserved_mem.h>
> > +#include <linux/scatterlist.h>
> > +#include <linux/slab.h>
> > +#include <linux/vmalloc.h>
> > +
> > +#define MAX_SECURE_HEAP 2
> > +#define MAX_HEAP_NAME_LEN 32
> > +
> > +struct secure_heap_buffer {
> > +     struct dma_heap *heap;
> > +     struct list_head attachments;
> > +     struct mutex lock;
> > +     unsigned long len;
> > +     struct sg_table sg_table;
> > +     int vmap_cnt;
> > +     void *vaddr;
> > +};
> > +
> > +struct secure_heap_attachment {
> > +     struct device *dev;
> > +     struct sg_table *table;
> > +     struct list_head list;
> > +};
> > +
> > +struct secure_heap_info {
> > +     struct gen_pool *pool;
> > +};
> > +
> > +struct rmem_secure {
> > +     phys_addr_t base;
> > +     phys_addr_t size;
> > +
> > +     char name[MAX_HEAP_NAME_LEN];
> > +};
> > +
> > +static struct rmem_secure secure_data[MAX_SECURE_HEAP] = {0};
> > +static unsigned int secure_data_count;
> > +
> > +static struct sg_table *dup_sg_table(struct sg_table *table)
> > +{
> > +     struct sg_table *new_table;
> > +     int ret, i;
> > +     struct scatterlist *sg, *new_sg;
> > +
> > +     new_table = kzalloc(sizeof(*new_table), GFP_KERNEL);
> > +     if (!new_table)
> > +             return ERR_PTR(-ENOMEM);
> > +
> > +     ret = sg_alloc_table(new_table, table->orig_nents,
> > GFP_KERNEL);
> > +     if (ret) {
> > +             kfree(new_table);
> > +             return ERR_PTR(-ENOMEM);
> > +     }
> > +
> > +     new_sg = new_table->sgl;
> > +     for_each_sgtable_sg(table, sg, i) {
> > +             sg_set_page(new_sg, sg_page(sg), sg->length, sg-
> > >offset);
> > +             new_sg->dma_address = sg->dma_address;
> > +#ifdef CONFIG_NEED_SG_DMA_LENGTH
> > +             new_sg->dma_length = sg->dma_length;
> > +#endif
> > +             new_sg = sg_next(new_sg);
> > +     }
> > +
> > +     return new_table;
> > +}
> > +
> > +static int secure_heap_attach(struct dma_buf *dmabuf,
> > +                           struct dma_buf_attachment *attachment)
> > +{
> > +     struct secure_heap_buffer *buffer = dmabuf->priv;
> > +     struct secure_heap_attachment *a;
> > +     struct sg_table *table;
> > +
> > +     a = kzalloc(sizeof(*a), GFP_KERNEL);
> > +     if (!a)
> > +             return -ENOMEM;
> > +
> > +     table = dup_sg_table(&buffer->sg_table);
> > +     if (IS_ERR(table)) {
> > +             kfree(a);
> > +             return -ENOMEM;
> 
> nit: You could return PTR_ERR(table), in case dup_sg_table starts
> returning other errors.
> 
> > +     }
> > +
> > +     a->table = table;
> > +     a->dev = attachment->dev;
> > +     INIT_LIST_HEAD(&a->list);
> > +     attachment->priv = a;
> > +
> > +     mutex_lock(&buffer->lock);
> > +     list_add(&a->list, &buffer->attachments);
> > +     mutex_unlock(&buffer->lock);
> > +
> > +     return 0;
> > +}
> > +
> > +static void secure_heap_detach(struct dma_buf *dmabuf,
> > +                            struct dma_buf_attachment *attachment)
> > +{
> > +     struct secure_heap_buffer *buffer = dmabuf->priv;
> > +     struct secure_heap_attachment *a = attachment->priv;
> > +
> > +     mutex_lock(&buffer->lock);
> > +     list_del(&a->list);
> > +     mutex_unlock(&buffer->lock);
> > +
> > +     sg_free_table(a->table);
> > +     kfree(a->table);
> > +     kfree(a);
> > +}
> > +
> > +static struct sg_table *secure_heap_map_dma_buf(struct
> > dma_buf_attachment *attachment,
> > +                                             enum
> > dma_data_direction direction)
> > +{
> > +     struct secure_heap_attachment *a = attachment->priv;
> > +
> > +     return a->table;
> 
> I think you still need to implement mapping and unmapping using the
> DMA APIs. For example devices might be behind IOMMUs and the buffer
> will need mapping into the IOMMU.

Devices that will need access to the buffer must be in secure.
The tee driver will only need the scatter-list table to get dma address
and len. Mapping will be done in the TEE.
Please find tee_shm_register_fd in the following commit
https://github.com/linaro-swg/linux/commit/41e21e5c405530590dc2dd10b2a8dbe64589840f

This patch need to be up-streamed as well.


> 
> > +}
> > +
> > +static void secure_heap_unmap_dma_buf(struct dma_buf_attachment
> > *attachment,
> > +                                   struct sg_table *table,
> > +                                   enum dma_data_direction
> > direction)
> > +{
> > +}
> > +
> > +static void secure_heap_dma_buf_release(struct dma_buf *dmabuf)
> > +{
> > +     struct secure_heap_buffer *buffer = dmabuf->priv;
> > +     struct secure_heap_info *info;
> > +     struct sg_table *table;
> > +     struct scatterlist *sg;
> > +     int i;
> > +
> > +     info = dma_heap_get_drvdata(buffer->heap);
> > +
> > +     table = &buffer->sg_table;
> > +     for_each_sg(table->sgl, sg, table->nents, i)
> > +             gen_pool_free(info->pool, sg_dma_address(sg),
> > sg_dma_len(sg));
> > +
> > +     sg_free_table(table);
> > +     kfree(buffer);
> > +}
> > +
> > +static const struct dma_buf_ops secure_heap_buf_ops = {
> > +     .attach = secure_heap_attach,
> > +     .detach = secure_heap_detach,
> > +     .map_dma_buf = secure_heap_map_dma_buf,
> > +     .unmap_dma_buf = secure_heap_unmap_dma_buf,
> > +     .release = secure_heap_dma_buf_release,
> > +};
> > +
> > +static struct dma_buf *secure_heap_allocate(struct dma_heap *heap,
> > +                                         unsigned long len,
> > +                                         unsigned long fd_flags,
> > +                                         unsigned long heap_flags)
> > +{
> > +     struct secure_heap_buffer *buffer;
> > +     struct secure_heap_info *info = dma_heap_get_drvdata(heap);
> > +     DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> > +     unsigned long size = roundup(len, PAGE_SIZE);
> > +     struct dma_buf *dmabuf;
> > +     struct sg_table *table;
> > +     int ret = -ENOMEM;
> > +     unsigned long phy_addr;
> > +
> > +     buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
> > +     if (!buffer)
> > +             return ERR_PTR(-ENOMEM);
> > +
> > +     INIT_LIST_HEAD(&buffer->attachments);
> > +     mutex_init(&buffer->lock);
> > +     buffer->heap = heap;
> > +     buffer->len = size;
> > +
> > +     phy_addr = gen_pool_alloc(info->pool, size);
> > +     if (!phy_addr)
> > +             goto free_buffer;
> > +
> > +     table = &buffer->sg_table;
> > +     if (sg_alloc_table(table, 1, GFP_KERNEL))
> > +             goto free_pool;
> > +
> > +     sg_set_page(table->sgl, phys_to_page(phy_addr), size, 0);
> > +     sg_dma_address(table->sgl) = phy_addr;
> > +     sg_dma_len(table->sgl) = size;
> > +
> > +     /* create the dmabuf */
> > +     exp_info.exp_name = dma_heap_get_name(heap);
> > +     exp_info.ops = &secure_heap_buf_ops;
> > +     exp_info.size = buffer->len;
> > +     exp_info.flags = fd_flags;
> > +     exp_info.priv = buffer;
> > +     dmabuf = dma_buf_export(&exp_info);
> > +     if (IS_ERR(dmabuf)) {
> > +             ret = PTR_ERR(dmabuf);
> > +             goto free_pages;
> > +     }
> > +
> > +     return dmabuf;
> > +
> > +free_pages:
> 
> Should maybe be called free_table:

right
> 
> > +     sg_free_table(table);
> > +
> > +free_pool:
> > +     gen_pool_free(info->pool, phy_addr, size);
> > +
> > +free_buffer:
> > +     mutex_destroy(&buffer->lock);
> > +     kfree(buffer);
> > +
> > +     return ERR_PTR(ret);
> > +}
> > +
> > +static const struct dma_heap_ops secure_heap_ops = {
> > +     .allocate = secure_heap_allocate,
> > +};
> > +
> > +static int secure_heap_add(struct rmem_secure *rmem)
> > +{
> > +     struct dma_heap *secure_heap;
> > +     struct dma_heap_export_info exp_info;
> > +     struct secure_heap_info *info = NULL;
> > +     struct gen_pool *pool = NULL;
> > +     int ret = -EINVAL;
> > +
> > +     if (rmem->base == 0 || rmem->size == 0) {
> > +             pr_err("secure_data base or size is not correct\n");
> > +             goto error;
> > +     }
> > +
> > +     info = kzalloc(sizeof(*info), GFP_KERNEL);
> > +     if (!info) {
> > +             pr_err("dmabuf info allocation failed\n");
> > +             ret = -ENOMEM;
> > +             goto error;
> > +     }
> > +
> > +     pool = gen_pool_create(PAGE_SHIFT, -1);
> > +     if (!pool) {
> > +             pr_err("can't create gen pool\n");
> > +             ret = -ENOMEM;
> > +             goto error;
> > +     }
> > +
> > +     if (gen_pool_add(pool, rmem->base, rmem->size, -1) < 0) {
> > +             pr_err("failed to add memory into pool\n");
> > +             ret = -ENOMEM;
> > +             goto error;
> > +     }
> > +
> > +     info->pool = pool;
> > +
> > +     exp_info.name = rmem->name;
> > +     exp_info.ops = &secure_heap_ops;
> > +     exp_info.priv = info;
> > +
> > +     secure_heap = dma_heap_add(&exp_info);
> > +     if (IS_ERR(secure_heap)) {
> > +             pr_err("dmabuf secure heap allocation failed\n");
> > +             ret = PTR_ERR(secure_heap);
> > +             goto error;
> > +     }
> > +
> > +     return 0;
> > +
> > +error:
> > +     kfree(info);
> > +     if (pool)
> > +             gen_pool_destroy(pool);
> 
> nit: I think your order should be reversed here, to match the
> opposite
> order of allocation.

agree
> 
> > +
> > +     return ret;
> > +}
> > +
> > +static int secure_heap_create(void)
> > +{
> > +     unsigned int i;
> > +     int ret;
> > +
> > +     for (i = 0; i < secure_data_count; i++) {
> > +             ret = secure_heap_add(&secure_data[i]);
> > +             if (ret)
> > +                     return ret;
> > +     }
> > +     return 0;
> > +}
> > +
> > +static int rmem_secure_heap_device_init(struct reserved_mem *rmem,
> > +                                      struct device *dev)
> > +{
> > +     dev_set_drvdata(dev, rmem);
> > +     return 0;
> > +}
> > +
> > +static void rmem_secure_heap_device_release(struct reserved_mem
> > *rmem,
> > +                                      struct device *dev)
> > +{
> > +     dev_set_drvdata(dev, NULL);
> > +}
> > +
> > +static const struct reserved_mem_ops rmem_dma_ops = {
> > +     .device_init    = rmem_secure_heap_device_init,
> > +     .device_release = rmem_secure_heap_device_release,
> > +};
> 
> What are these reserved_mem_ops for? Setting the drvdata for a random
> device seems like it could cause lots of problems.
> 
> Is there a requirement to support assigning this SDP reserved-memory
> region to a specific device? If not, I think you can just drop this.
> Otherwise, I think you need some other mechanism to do the
> association.

indeed, can be removed as driver private data is set at heap creation
and should not be modified.

> 
> > +
> > +static int __init rmem_secure_heap_setup(struct reserved_mem
> > *rmem)
> > +{
> > +     if (secure_data_count < MAX_SECURE_HEAP) {
> > +             int name_len = 0;
> > +             const char *s = rmem->name;
> > +
> > +             secure_data[secure_data_count].base = rmem->base;
> > +             secure_data[secure_data_count].size = rmem->size;
> > +
> > +             while (name_len < MAX_HEAP_NAME_LEN) {
> > +                     if ((*s == '@') || (*s == '\0'))
> > +                             break;
> > +                     name_len++;
> > +                     s++;
> > +             }
> > +             if (name_len == MAX_HEAP_NAME_LEN)
> > +                     name_len--;
> > +
> > +             strncpy(secure_data[secure_data_count].name, rmem-
> > >name, name_len);
> 
> I think it would be good to explicitly do:
> 
>   secure_data[secure_data_count].name[name_len] = '\0'

ok
> 
> I know it's zero-initialised, but that's done on a line far away, so
> may be best to be defensive.
> 
> > +
> > +             rmem->ops = &rmem_dma_ops;
> > +             pr_info("Reserved memory: DMA buf secure pool %s at
> > %pa, size %ld MiB\n",
> > +                     secure_data[secure_data_count].name,
> > +                     &rmem->base, (unsigned long)rmem->size /
> > SZ_1M);
> 
> nit: What if rmem->size < SZ_1M, or not 1M-aligned
> 
> > +
> > +             secure_data_count++;
> > +             return 0;
> > +     }
> > +     WARN_ONCE(1, "Cannot handle more than %u secure heaps\n",
> > MAX_SECURE_HEAP);
> > +     return -EINVAL;
> > +}
> > +
> > +RESERVEDMEM_OF_DECLARE(secure_heap, "linaro,secure-heap",
> > rmem_secure_heap_setup);
> 
> Is there anything linaro-specific about this? Could it be
> linux,secure-heap?

for now, it's specific to Linaro OPTEE OS.
but in a more generic way, it could be 
linux,unmapped-heap ?

> 
> Thanks,
> -Brian
> 
> > +
> > +module_init(secure_heap_create);
> > +MODULE_LICENSE("GPL v2");
> > --
> > 2.25.0
> > 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
