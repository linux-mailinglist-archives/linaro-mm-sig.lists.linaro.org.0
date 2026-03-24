Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iORnK/dh5mm6vgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:27:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBFB4313AA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:27:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15FB83F82F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:27:18 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by lists.linaro.org (Postfix) with ESMTPS id 4C0A33F76C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 16:40:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=tomeuvizoso-net.20230601.gappssmtp.com header.s=20230601 header.b=VG+RqzLO;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tomeu@tomeuvizoso.net designates 209.85.222.170 as permitted sender) smtp.mailfrom=tomeu@tomeuvizoso.net;
	dmarc=none
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8cfdac74050so384896285a.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 09:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774370439; cv=none;
        d=google.com; s=arc-20240605;
        b=FHjv8+t/1L1jEimSl9AQWhmxql7hF9AzPOPd82V9KEiRzbkW2ONqFFjxecfelZpg/I
         McT5GKx8qjPnAMf88/WPwup32FGaIokUZhHmC6iGFd7DXZNY0DyPVvlnI7mF1oYz1MNZ
         6ppbDSd+dDzAYbkijFrQ4a/QmitqPuy8kajPn6ZtNaB39HdFckyW/L+CKKLjkzaz7rqH
         Z4gYvjnY2YJzdlhI+6LDa/TJz30bJCKdAR1B9wMHVrnGzylC4OQtrkPnIB+VDZiZY+IQ
         Jp5H/nO3pgIXZ/WVCE0+sMzFr1ZvMEoFKFWf+i5ua6sE6BURufqpnnX8Rnv0jCQLyCUX
         IqMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gBMTqCLRvm3uqegKLoybGB22QvW/ii0uVVkQCijjJks=;
        fh=BkCNo5zzC3rsq4K1yxX8TIG2/iivA7x+OJMlLufuY7U=;
        b=fgOsbZIU1DxbpMt/5WpUORLuZsSnDbZzW/Qv7kZ3qIaw/aQqadeO4uUiqBTCSaqsU7
         aGP66c/hQg4SaoFqBUsD26Lz1PKJElRdJzm4CXk2pArERb8Eur1C2l6FE3bI+WvK9s9T
         A2ULEaI9Scv2ZxNXkOqIaWSXq1XtooK1hRMMqq7WQU9ynVZlcacWVlpp+Mt4kBzcejnY
         wTZSIELzUyQ6V2EDfhfIx6YxxztNp7jLSNOodCw6naAVyPp5C/qyEnWjlXxoyzBUNmf0
         wmEeKUdFEUvGQNnxEGySomep7/4dQYyytU/4MOJm3eA+TMiLhyrvId0eW4Z4TF5BM07t
         xGMw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1774370439; x=1774975239; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gBMTqCLRvm3uqegKLoybGB22QvW/ii0uVVkQCijjJks=;
        b=VG+RqzLOc8I53FuGANhOSdMTE5yaxv1HwN9AfA6jLQ23q2QXjF4iwkkYphhhOauip3
         bZO8xIu3Grd7VB9H5LRYfubVXISrNu+ZAlKWlPfOw4BCqx+jV9uHGFBusOslrXe1XQ5G
         6BHQQvGps90JBMCku3Xz7twqEslonQOzZcRuG1Dxa6hGqVx8BoSw5vT5p3Obm5QJw4/8
         0J9qlX0T/KSicPdVrxSUZg4Fq6rcfdvUN3Hs7ebDBNQwXUS4HiWmDWGpW1fObL0CEiCA
         fw/DtwSt8gjtQGdJkMw5mtrsy5WuDqZMK+BFwt4o0x7TTc95hSj07mwEIZAFbPljlygF
         h3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774370439; x=1774975239;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gBMTqCLRvm3uqegKLoybGB22QvW/ii0uVVkQCijjJks=;
        b=W1ZKkgQmL17M3STKU0B7w4p2GBNYIASIGimFw259lId3z3uCFCHX7vtRSzJA+nPWkE
         9kbXpuoCpvbmacW2EyzvglG+9uhF/xnX8pQJr3Ke0nCmP5Ad8k/rb4PAYyb0zmDxGxfW
         ddUrY3otU9Q1k0y2M4++Gg3y3i+3/MG62bYbY+G+BNyD++87JcvibYDyeRFgE6wwoPsE
         V/IONY5PPjcf5k9Q5Xm4cWeT5+fMNyoeTFdIQWLWfEeWlWEr0RWo/Jz007dF8ro8nAnM
         Z1QmlA7G55Zci4BoEoAn3sFJeCGWfhdQ2j4ipG1rre3qrcfsdpCfeKrsumR4A4tTzRJ4
         +f0g==
X-Forwarded-Encrypted: i=1; AJvYcCXNcsofkhGZn6OTcLiG/FtSMfh/8++agpCFetv03MXV8neDpIvhXa2HlcYcNHSouLiX/qk3Pnt+Exm+Ia5t@lists.linaro.org
X-Gm-Message-State: AOJu0Yy8JDPDV4ZciNM2BiR7JdNRi2qW2FLG177UIwS9m3qaiQtwfA72
	nxWKRTkQ9zf7Fb0dO9tEbZxotjFaih5P2bmJvNyX+Ybip7Vu9/fwUUzpKayMDlAsf7McsEZx05Z
	PtrQ9JJ1/A/NOFk3KWUqErd/QMoZCcmdyyJBN5h1U3A==
X-Gm-Gg: ATEYQzyzoeWK5Z9VA932mVPXtI5mG9S1G471QGxSkRYjPcDTKmaEVw06E4cGT0/MeEV
	33CUBSxIb/cflTBNx5OLQT3cEmMfUEaYLrnvWDxVKKiBz7GKC6rmC2j/6faOgvrXidBwQ3XxTpJ
	+yK3DMXQBEU0FDan4XEA8pAqQ/keU5ixJpkvBp9hQ9ytW7yUDwAD3GDuzKcunnMxeWt3k5RGXkF
	OO8+UZqiLxAKf378DtP8uLsabm+9xf17SSGXd+BxCJ+ocx1PqW7SJvP2ZjYFNbAHpePk+ztigP9
	znMLdQ==
X-Received: by 2002:a05:6214:4c88:b0:899:fd64:1b72 with SMTP id
 6a1803df08f44-89cc4a4b17bmr4992346d6.41.1774370438553; Tue, 24 Mar 2026
 09:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260306-neutron-v2-0-3019bd8c91ef@nxp.com> <CAAObsKDAzfib86rXqt9FjXV68yRkBzmijcyR+x=1MsPYd=MQWQ@mail.gmail.com>
 <PAXPR04MB9424214A1AA43BD0C36653E89448A@PAXPR04MB9424.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB9424214A1AA43BD0C36653E89448A@PAXPR04MB9424.eurprd04.prod.outlook.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 24 Mar 2026 17:40:27 +0100
X-Gm-Features: AaiRm53CbFc93InqoWPuzM7Hgdphk6hKiv7txs_-MYRf2g9yYwU08oSWn-vL4r0
Message-ID: <CAPsqS2QXcgbi9_e4QmCn1Cgkr-bOVsY-E9qpZsFw3WYWWLugEw@mail.gmail.com>
To: Ioana Ciocoi Radulescu <ruxandra.radulescu@nxp.com>
X-Spamd-Bar: ----
X-MailFrom: tomeu@tomeuvizoso.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AFOR5Z6OUT22ZBBGBEVFR2YLRTV3YCBS
X-Message-ID-Hash: AFOR5Z6OUT22ZBBGBEVFR2YLRTV3YCBS
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:32 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Frank Li <frank.li@nxp.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.li
 naro.org>, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Iulian Taran <alexandru.taran@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/9] accel: New driver for NXP's Neutron NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AFOR5Z6OUT22ZBBGBEVFR2YLRTV3YCBS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1226539277786636750=="
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[648];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tomeuvizoso.net];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	FROM_NEQ_ENVFROM(0.00)[tomeu@tomeuvizoso.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,nxp.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.li naro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[1.000];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 5EBFB4313AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============1226539277786636750==
Content-Type: multipart/alternative; boundary="000000000000b0ab92064dc7cfe5"

--000000000000b0ab92064dc7cfe5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 24, 2026 at 1:12=E2=80=AFPM Ioana Ciocoi Radulescu <
ruxandra.radulescu@nxp.com> wrote:

> On Saturday, March 21, 2026 at 7:19 PM, Tomeu Vizoso wrote:
> >
> > Hi Ioana,
> >
> > Looks like the userspace portion of the driver is closed source
> > (libNeutronDriver.so)?
> >
> > https://github.com/nxp-imx/tflite-neutron-delegate/blob/lf-6.12.49_2.2
> > .0/CMakeLists.txt
>
> Hi Tomeu,
>
> Yes, it's closed for now. We do plan to publish the source code
> on github, but I believe that's still a few months away.
>

I think you may want to sync with your userspace team sooner rather than
later, so you can comply with this requirement:

https://docs.kernel.org/gpu/drm-uapi.html#open-source-userspace-requirement=
s

It could be good to also share firmware code with other firmware-mediated
NPU drivers if possible, or at least the part of the rpmsg protocol that
makes sense to share.

You can see my submission for the Thames driver for a link to the firmware
code.

I would be happy to help consolidate code between this category of drivers
if you want.

Regards,

Tomeu


> Thanks,
> Ioana
>
> >
> > Regards,
> >
> > Tomeu
> >
> > On Fri, Mar 6, 2026 at 2:27=E2=80=AFPM Ioana Ciocoi-Radulescu
> > <ruxandra.radulescu@nxp.com> wrote:
> > >
> > > Introduce a new accel driver for the Neutron Neural Processing Unit
> > > (NPU), along with associated dt-bindings and DTS node.
> > >
> > > The first patch extends the GEM DMA helper APIs to allow bidirectiona=
l
> > > mapping of non-coherent DMA buffers. While not part of the Neutron
> > > driver, it's a prerequisite allowing us to use the GEM DMA helper.
> > >
> > > Neutron is a Neural Processing Unit from NXP, providing machine
> > > learning (ML) acceleration for edge AI applications. Neutron is
> > > integrated on NXP SoCs such as the i.MX95.
> > >
> > > The NPU consists of the following:
> > > - RISC-V core running a proprietary firmware
> > > - One or more Neutron cores, representing the main computation
> > >   engine performing ML operations
> > > - Dedicated fast memory (TCM)
> > > - DMA engine that handles data transfers between DDR and TCM
> > >
> > > The firmware is closed source and distributed as a binary here [1].
> > >
> > > The Neutron software stack also contains a userspace library [1] and =
a
> > > LiteRT custom delegate [2] that allow integration with standard LiteR=
T
> > > tools.
> > >
> > > [1] https://github.com/nxp-upstream/neutron/tree/upstream
> > > [2] https://github.com/nxp-imx/tflite-neutron-delegate
> > >
> > > Signed-off-by: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
> > > ---
> > > Changes in v2:
> > > - rebase on newer drm-misc-next
> > > - dt bindings: clock fixes and renames
> > > - update DTS to match new names
> > > - remove unnecessary fields from neutron_job structure
> > > - fix use of uninitialized variable
> > >
> > > - Link to v1:
> > > https://lore.kernel.org/r/20260226-neutron-v1-0-46eccb3bb50a@nxp.com
> > >
> > > ---
> > > Ioana Ciocoi-Radulescu (9):
> > >       drm/gem-dma: Add flag for bidirectional mapping of non-coherent
> GEM
> > DMA buffers
> > >       accel/neutron: Add documentation for NXP Neutron accelerator
> driver
> > >       dt-bindings: npu: Add NXP Neutron
> > >       accel/neutron: Add driver for NXP Neutron NPU
> > >       accel/neutron: Add GEM buffer object support
> > >       accel/neutron: Add mailbox support
> > >       accel/neutron: Add job submission IOCTL
> > >       accel/neutron: Add logging support
> > >       arm64: dts: imx95: Add Neutron node
> > >
> > >  Documentation/accel/index.rst                      |   1 +
> > >  Documentation/accel/neutron/index.rst              |  12 +
> > >  Documentation/accel/neutron/neutron.rst            | 131 ++++++++
> > >  .../devicetree/bindings/npu/nxp,imx95-neutron.yaml |  96 ++++++
> > >  MAINTAINERS                                        |  10 +
> > >  arch/arm64/boot/dts/freescale/imx95.dtsi           |  28 ++
> > >  drivers/accel/Kconfig                              |   1 +
> > >  drivers/accel/Makefile                             |   3 +-
> > >  drivers/accel/neutron/Kconfig                      |  16 +
> > >  drivers/accel/neutron/Makefile                     |  12 +
> > >  drivers/accel/neutron/neutron_debugfs.c            |  34 ++
> > >  drivers/accel/neutron/neutron_debugfs.h            |  15 +
> > >  drivers/accel/neutron/neutron_device.c             | 239 +++++++++++=
++
> > >  drivers/accel/neutron/neutron_device.h             | 155 +++++++++
> > >  drivers/accel/neutron/neutron_driver.c             | 262
> +++++++++++++++
> > >  drivers/accel/neutron/neutron_driver.h             |  16 +
> > >  drivers/accel/neutron/neutron_gem.c                | 116 +++++++
> > >  drivers/accel/neutron/neutron_gem.h                |  14 +
> > >  drivers/accel/neutron/neutron_job.c                | 372
> > +++++++++++++++++++++
> > >  drivers/accel/neutron/neutron_job.h                |  43 +++
> > >  drivers/accel/neutron/neutron_mailbox.c            |  47 +++
> > >  drivers/accel/neutron/neutron_mailbox.h            |  42 +++
> > >  drivers/gpu/drm/drm_gem_dma_helper.c               |   6 +-
> > >  include/drm/drm_gem_dma_helper.h                   |   3 +
> > >  include/uapi/drm/neutron_accel.h                   | 130 +++++++
> > >  25 files changed, 1801 insertions(+), 3 deletions(-)
> > > ---
> > > base-commit: 6716101ae42949e98ad4b9e71eeba08c055be410
> > > change-id: 20260226-neutron-c435e39d167f
> > >
> > > Best regards,
> > > --
> > > Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
> > >
>

--000000000000b0ab92064dc7cfe5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote gmail_quote_container"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 24, 2026 at 1:12=E2=80=AFPM Io=
ana Ciocoi Radulescu &lt;<a href=3D"mailto:ruxandra.radulescu@nxp.com">ruxa=
ndra.radulescu@nxp.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On Saturday, March 21, 2026 at 7:19 PM, Tomeu Vizoso =
wrote:<br>
&gt; <br>
&gt; Hi Ioana,<br>
&gt; <br>
&gt; Looks like the userspace portion of the driver is closed source <br>
&gt; (libNeutronDriver.so)?<br>
&gt; <br>
&gt; <a href=3D"https://github.com/nxp-imx/tflite-neutron-delegate/blob/lf-=
6.12.49_2.2" rel=3D"noreferrer" target=3D"_blank">https://github.com/nxp-im=
x/tflite-neutron-delegate/blob/lf-6.12.49_2.2</a><br>
&gt; .0/CMakeLists.txt<br>
<br>
Hi Tomeu,<br>
<br>
Yes, it&#39;s closed for now. We do plan to publish the source code<br>
on github, but I believe that&#39;s still a few months away.<br>
</blockquote><div><br></div><div>I think you may want to sync with your use=
rspace team sooner rather than later, so you can comply with this requireme=
nt:</div><div><br></div><div><a href=3D"https://docs.kernel.org/gpu/drm-uap=
i.html#open-source-userspace-requirements">https://docs.kernel.org/gpu/drm-=
uapi.html#open-source-userspace-requirements</a></div><div><br></div><div>I=
t could be good to also share firmware code with other firmware-mediated NP=
U drivers if possible, or at least the part of the rpmsg protocol that make=
s sense to share.</div><div><br></div><div>You can see my submission for th=
e Thames driver for a link to the firmware code.</div><div><br></div><div>I=
 would be happy to help consolidate code between this category of drivers i=
f you want.</div><div><br></div><div>Regards,</div><div><br></div><div>Tome=
u</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">T=
hanks,<br>
Ioana<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt; <br>
&gt; Tomeu<br>
&gt; <br>
&gt; On Fri, Mar 6, 2026 at 2:27=E2=80=AFPM Ioana Ciocoi-Radulescu<br>
&gt; &lt;<a href=3D"mailto:ruxandra.radulescu@nxp.com" target=3D"_blank">ru=
xandra.radulescu@nxp.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Introduce a new accel driver for the Neutron Neural Processing Un=
it<br>
&gt; &gt; (NPU), along with associated dt-bindings and DTS node.<br>
&gt; &gt;<br>
&gt; &gt; The first patch extends the GEM DMA helper APIs to allow bidirect=
ional<br>
&gt; &gt; mapping of non-coherent DMA buffers. While not part of the Neutro=
n<br>
&gt; &gt; driver, it&#39;s a prerequisite allowing us to use the GEM DMA he=
lper.<br>
&gt; &gt;<br>
&gt; &gt; Neutron is a Neural Processing Unit from NXP, providing machine<b=
r>
&gt; &gt; learning (ML) acceleration for edge AI applications. Neutron is<b=
r>
&gt; &gt; integrated on NXP SoCs such as the i.MX95.<br>
&gt; &gt;<br>
&gt; &gt; The NPU consists of the following:<br>
&gt; &gt; - RISC-V core running a proprietary firmware<br>
&gt; &gt; - One or more Neutron cores, representing the main computation<br=
>
&gt; &gt;=C2=A0 =C2=A0engine performing ML operations<br>
&gt; &gt; - Dedicated fast memory (TCM)<br>
&gt; &gt; - DMA engine that handles data transfers between DDR and TCM<br>
&gt; &gt;<br>
&gt; &gt; The firmware is closed source and distributed as a binary here [1=
].<br>
&gt; &gt;<br>
&gt; &gt; The Neutron software stack also contains a userspace library [1] =
and a<br>
&gt; &gt; LiteRT custom delegate [2] that allow integration with standard L=
iteRT<br>
&gt; &gt; tools.<br>
&gt; &gt;<br>
&gt; &gt; [1] <a href=3D"https://github.com/nxp-upstream/neutron/tree/upstr=
eam" rel=3D"noreferrer" target=3D"_blank">https://github.com/nxp-upstream/n=
eutron/tree/upstream</a><br>
&gt; &gt; [2] <a href=3D"https://github.com/nxp-imx/tflite-neutron-delegate=
" rel=3D"noreferrer" target=3D"_blank">https://github.com/nxp-imx/tflite-ne=
utron-delegate</a><br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Ioana Ciocoi-Radulescu &lt;<a href=3D"mailto:ruxan=
dra.radulescu@nxp.com" target=3D"_blank">ruxandra.radulescu@nxp.com</a>&gt;=
<br>
&gt; &gt; ---<br>
&gt; &gt; Changes in v2:<br>
&gt; &gt; - rebase on newer drm-misc-next<br>
&gt; &gt; - dt bindings: clock fixes and renames<br>
&gt; &gt; - update DTS to match new names<br>
&gt; &gt; - remove unnecessary fields from neutron_job structure<br>
&gt; &gt; - fix use of uninitialized variable<br>
&gt; &gt;<br>
&gt; &gt; - Link to v1:<br>
&gt; &gt; <a href=3D"https://lore.kernel.org/r/20260226-neutron-v1-0-46eccb=
3bb50a@nxp.com" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.or=
g/r/20260226-neutron-v1-0-46eccb3bb50a@nxp.com</a><br>
&gt; &gt;<br>
&gt; &gt; ---<br>
&gt; &gt; Ioana Ciocoi-Radulescu (9):<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0drm/gem-dma: Add flag for bidirectional=
 mapping of non-coherent GEM<br>
&gt; DMA buffers<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0accel/neutron: Add documentation for NX=
P Neutron accelerator driver<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dt-bindings: npu: Add NXP Neutron<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0accel/neutron: Add driver for NXP Neutr=
on NPU<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0accel/neutron: Add GEM buffer object su=
pport<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0accel/neutron: Add mailbox support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0accel/neutron: Add job submission IOCTL=
<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0accel/neutron: Add logging support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0arm64: dts: imx95: Add Neutron node<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 Documentation/accel/index.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A01 +<br>
&gt; &gt;=C2=A0 Documentation/accel/neutron/index.rst=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 12 +<br>
&gt; &gt;=C2=A0 Documentation/accel/neutron/neutron.rst=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 | 131 ++++++++<br>
&gt; &gt;=C2=A0 .../devicetree/bindings/npu/nxp,imx95-neutron.yaml |=C2=A0 =
96 ++++++<br>
&gt; &gt;=C2=A0 MAINTAINERS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 10 +<br>
&gt; &gt;=C2=A0 arch/arm64/boot/dts/freescale/imx95.dtsi=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 28 ++<br>
&gt; &gt;=C2=A0 drivers/accel/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =
=C2=A01 +<br>
&gt; &gt;=C2=A0 drivers/accel/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A03 +-<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 16 +<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 12 +<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_debugfs.c=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 34 ++<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_debugfs.h=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 15 +<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_device.c=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 239 +++++++++++++<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_device.h=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 155 +++++++++<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_driver.c=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 262 +++++++++++++++<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_driver.h=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 16 +<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_gem.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 116 +++++++<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_gem.h=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 14 +<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_job.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 372<br>
&gt; +++++++++++++++++++++<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_job.h=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 43 +++<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_mailbox.c=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 47 +++<br>
&gt; &gt;=C2=A0 drivers/accel/neutron/neutron_mailbox.h=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 42 +++<br>
&gt; &gt;=C2=A0 drivers/gpu/drm/drm_gem_dma_helper.c=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A06 +-<br>
&gt; &gt;=C2=A0 include/drm/drm_gem_dma_helper.h=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A03 +<br>
&gt; &gt;=C2=A0 include/uapi/drm/neutron_accel.h=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 130 +++++++<br>
&gt; &gt;=C2=A0 25 files changed, 1801 insertions(+), 3 deletions(-)<br>
&gt; &gt; ---<br>
&gt; &gt; base-commit: 6716101ae42949e98ad4b9e71eeba08c055be410<br>
&gt; &gt; change-id: 20260226-neutron-c435e39d167f<br>
&gt; &gt;<br>
&gt; &gt; Best regards,<br>
&gt; &gt; --<br>
&gt; &gt; Ioana Ciocoi-Radulescu &lt;<a href=3D"mailto:ruxandra.radulescu@n=
xp.com" target=3D"_blank">ruxandra.radulescu@nxp.com</a>&gt;<br>
&gt; &gt;<br>
</blockquote></div></div>

--000000000000b0ab92064dc7cfe5--

--===============1226539277786636750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1226539277786636750==--
