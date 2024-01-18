Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2F88320B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 22:06:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1AA83F52E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 21:06:00 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id 05E4A3F37C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 21:05:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=HNLNO9it;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.49) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a2eb3f55e8bso1615766b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 13:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1705611932; x=1706216732; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PZPqhSqiOt0JRfQnRN98wlvsswWfN9ZeCPuTDyzxmuA=;
        b=HNLNO9itf8iVuSQWs5L6UFRUHBudKB0M2nNN0X3R9SkKte1AO8r37ncP1DUY9v4EYt
         EWQHKKyW6kPcYwuyccApdzTCESkL8KOeC7z4WKnmrCe5jeGH+vGTuK8LzPGwc0PM3bR4
         iTiMeVrsyec4HUtY3z/FqeFY7Bkl8ttWdTa4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705611932; x=1706216732;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PZPqhSqiOt0JRfQnRN98wlvsswWfN9ZeCPuTDyzxmuA=;
        b=eLHrXMIR9P2t1Vn83+C3Sc91ZWWu+QHRIUOpvRgzu+lGTcdYS5JDGLh2bBJNBM5Ty4
         LbqxlEYq7Wnv2axHBuMCFlsEQWTTWdlr4RYguwIXB3uBxhsn+qvScCrUZT8bZIyfJFNu
         8gAym6D7djEYuZNNOL97qTtOxUUNZyaAOGiULWoRetFxAdI4BLZANFXPmXctWn3ZEa9Z
         ugY2sPIowOTi7tFLV2Ki9jwy0N1oVQr+s6Ta+ynHLPZu9Cp4+8Fon/CRZNNio9nvwArK
         a9cq4PXAxiOnjzIfbxp2XDUBs8waApDzidrevOsHV/1UxL5O9RFmXH0Wm2XP9/UQSqcQ
         3RSA==
X-Gm-Message-State: AOJu0Ywl4dCwjR2+qRg/SNyfgLVKouiyRYA6b9Oar28Y2CV0OO3s+BGt
	VzB1G76oLfsg4fTScu+K8xwvcRB+wH2KndgWAz7nfwASvdpcp/aPRjuXQMi04Xs=
X-Google-Smtp-Source: AGHT+IHiHmXpEt+JRTxUTfuV+oFuGQPARbLPHLNi9Hhl0xodHpfg/LtRNouEZV95uQdlCocd1vJ7IA==
X-Received: by 2002:a17:906:852:b0:a2b:d12c:ee48 with SMTP id f18-20020a170906085200b00a2bd12cee48mr242078ejd.1.1705611931741;
        Thu, 18 Jan 2024 13:05:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id bm19-20020a170906c05300b00a2362c5e3dbsm9504903ejb.151.2024.01.18.13.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 13:05:31 -0800 (PST)
Date: Thu, 18 Jan 2024 22:05:29 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <ZamSmZuOIMMRyWEL@phenom.ffwll.local>
Mail-Followup-To: Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-doc@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	linaro-mm-sig@lists.linaro.org,
	Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>,
	Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
References: <a44aca93adc60ce56a64c50797a029631900172e.camel@crapouillou.net>
 <ZZwU827NMHbx7bsO@phenom.ffwll.local>
 <2c0d4ef1b657c56ea2290fe16d757ce563a3e71b.camel@crapouillou.net>
 <ZZxKvR9gjH8D5qxj@phenom.ffwll.local>
 <31e56028b4d865c60b7c01b2a305b3dd8a21ff7a.camel@crapouillou.net>
 <ZZ1Dx1Jqbi61_Afb@phenom.ffwll.local>
 <c100b5f75b12de4a331dd36de3573483dbde915f.camel@crapouillou.net>
 <ZakuD-ns-5UJmrRi@phenom.ffwll.local>
 <Zakupp1GCZMk5aDT@phenom.ffwll.local>
 <cb64afbb0aae887520f471f09c83b29a08214bfd.camel@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb64afbb0aae887520f471f09c83b29a08214bfd.camel@crapouillou.net>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.49:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,linuxfoundation.org,linaro.org,amd.com,lwn.net,analog.com,vger.kernel.org,lists.freedesktop.org,collabora.com,lists.linaro.org,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 05E4A3F37C
X-Spamd-Bar: -----
Message-ID-Hash: 7JKUFYDLFYE6K5EQ72MPSU335A7GLWPI
X-Message-ID-Hash: 7JKUFYDLFYE6K5EQ72MPSU335A7GLWPI
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linaro-mm-sig@lists.linaro.org, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/4] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7JKUFYDLFYE6K5EQ72MPSU335A7GLWPI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 18, 2024 at 08:39:23PM +0100, Paul Cercueil wrote:
> Hi Daniel / Sima,
>=20
> Le jeudi 18 janvier 2024 =E0 14:59 +0100, Daniel Vetter a =E9crit=A0:
> > On Thu, Jan 18, 2024 at 02:56:31PM +0100, Daniel Vetter wrote:
> > > On Mon, Jan 15, 2024 at 01:54:27PM +0100, Paul Cercueil wrote:
> > > > Hi Daniel / Sima,
> > > >=20
> > > > Le mardi 09 janvier 2024 =E0 14:01 +0100, Daniel Vetter a =E9crit=
=A0:
> > > > > On Tue, Jan 09, 2024 at 12:06:58PM +0100, Paul Cercueil wrote:
> > > > > > Hi Daniel / Sima,
> > > > > >=20
> > > > > > Le lundi 08 janvier 2024 =E0 20:19 +0100, Daniel Vetter a
> > > > > > =E9crit=A0:
> > > > > > > On Mon, Jan 08, 2024 at 05:27:33PM +0100, Paul Cercueil
> > > > > > > wrote:
> > > > > > > > Le lundi 08 janvier 2024 =E0 16:29 +0100, Daniel Vetter a
> > > > > > > > =E9crit=A0:
> > > > > > > > > On Mon, Jan 08, 2024 at 03:21:21PM +0100, Paul Cercueil
> > > > > > > > > wrote:
> > > > > > > > > > Hi Daniel (Sima?),
> > > > > > > > > >=20
> > > > > > > > > > Le lundi 08 janvier 2024 =E0 13:39 +0100, Daniel Vetter
> > > > > > > > > > a
> > > > > > > > > > =E9crit=A0:
> > > > > > > > > > > On Mon, Jan 08, 2024 at 01:00:55PM +0100, Paul
> > > > > > > > > > > Cercueil
> > > > > > > > > > > wrote:
> > > > > > > > > > > > +static void ffs_dmabuf_signal_done(struct
> > > > > > > > > > > > ffs_dma_fence
> > > > > > > > > > > > *dma_fence, int ret)
> > > > > > > > > > > > +{
> > > > > > > > > > > > +	struct ffs_dmabuf_priv *priv =3D
> > > > > > > > > > > > dma_fence-
> > > > > > > > > > > > > priv;
> > > > > > > > > > > > +	struct dma_fence *fence =3D &dma_fence-
> > > > > > > > > > > > >base;
> > > > > > > > > > > > +
> > > > > > > > > > > > +	dma_fence_get(fence);
> > > > > > > > > > > > +	fence->error =3D ret;
> > > > > > > > > > > > +	dma_fence_signal(fence);
> > > > > > > > > > > > +
> > > > > > > > > > > > +	dma_buf_unmap_attachment(priv->attach,
> > > > > > > > > > > > dma_fence-
> > > > > > > > > > > > > sgt,
> > > > > > > > > > > > dma_fence->dir);
> > > > > > > > > > > > +	dma_fence_put(fence);
> > > > > > > > > > > > +	ffs_dmabuf_put(priv->attach);
> > > > > > > > > > >=20
> > > > > > > > > > > So this can in theory take the dma_resv lock, and
> > > > > > > > > > > if the
> > > > > > > > > > > usb
> > > > > > > > > > > completion
> > > > > > > > > > > isn't an unlimited worker this could hold up
> > > > > > > > > > > completion
> > > > > > > > > > > of
> > > > > > > > > > > future
> > > > > > > > > > > dma_fence, resulting in a deadlock.
> > > > > > > > > > >=20
> > > > > > > > > > > Needs to be checked how usb works, and if stalling
> > > > > > > > > > > indefinitely
> > > > > > > > > > > in
> > > > > > > > > > > the
> > > > > > > > > > > io_complete callback can hold up the usb stack you
> > > > > > > > > > > need
> > > > > > > > > > > to:
> > > > > > > > > > >=20
> > > > > > > > > > > - drop a dma_fence_begin/end_signalling annotations
> > > > > > > > > > > in
> > > > > > > > > > > here
> > > > > > > > > > > - pull out the unref stuff into a separate
> > > > > > > > > > > preallocated
> > > > > > > > > > > worker
> > > > > > > > > > > (or at
> > > > > > > > > > > =A0 least the final unrefs for ffs_dma_buf).
> > > > > > > > > >=20
> > > > > > > > > > Only ffs_dmabuf_put() can attempt to take the
> > > > > > > > > > dma_resv and
> > > > > > > > > > would
> > > > > > > > > > have
> > > > > > > > > > to be in a worker, right? Everything else would be
> > > > > > > > > > inside
> > > > > > > > > > the
> > > > > > > > > > dma_fence_begin/end_signalling() annotations?
> > > > > > > > >=20
> > > > > > > > > Yup. Also I noticed that unlike the iio patches you
> > > > > > > > > don't
> > > > > > > > > have
> > > > > > > > > the
> > > > > > > > > dma_buf_unmap here in the completion path (or I'm
> > > > > > > > > blind?),
> > > > > > > > > which
> > > > > > > > > helps a
> > > > > > > > > lot with avoiding trouble.
> > > > > > > >=20
> > > > > > > > They both call dma_buf_unmap_attachment() in the "signal
> > > > > > > > done"
> > > > > > > > callback, the only difference I see is that it is called
> > > > > > > > after
> > > > > > > > the
> > > > > > > > dma_fence_put() in the iio patches, while it's called
> > > > > > > > before
> > > > > > > > dma_fence_put() here.
> > > > > > >=20
> > > > > > > I was indeed blind ...
> > > > > > >=20
> > > > > > > So the trouble is this wont work because:
> > > > > > > - dma_buf_unmap_attachment() requires dma_resv_lock. This
> > > > > > > is a
> > > > > > > somewhat
> > > > > > > =A0 recent-ish change from 47e982d5195d ("dma-buf: Move
> > > > > > > =A0 dma_buf_map_attachment() to dynamic locking
> > > > > > > specification"), so
> > > > > > > maybe
> > > > > > > =A0 old kernel or you don't have full lockdep enabled to get
> > > > > > > the
> > > > > > > right
> > > > > > > =A0 splat.
> > > > > > >=20
> > > > > > > - dma_fence critical section forbids dma_resv_lock
> > > > > > >=20
> > > > > > > Which means you need to move this out, but then there's the
> > > > > > > potential
> > > > > > > cache management issue. Which current gpu drivers just
> > > > > > > kinda
> > > > > > > ignore
> > > > > > > because it doesn't matter for current use-case, they all
> > > > > > > cache
> > > > > > > the
> > > > > > > mapping
> > > > > > > for about as long as the attachment exists. You might want
> > > > > > > to do
> > > > > > > the
> > > > > > > same,
> > > > > > > unless that somehow breaks a use-case you have, I have no
> > > > > > > idea
> > > > > > > about
> > > > > > > that.
> > > > > > > If something breaks with unmap_attachment moved out of the
> > > > > > > fence
> > > > > > > handling
> > > > > > > then I guess it's high time to add separate cache-
> > > > > > > management only
> > > > > > > to
> > > > > > > dma_buf (and that's probably going to be quite some wiring
> > > > > > > up,
> > > > > > > not
> > > > > > > sure
> > > > > > > even how easy that would be to do nor what exactly the
> > > > > > > interface
> > > > > > > should
> > > > > > > look like).
> > > > > >=20
> > > > > > Ok. Then I'll just cache the mapping for now, I think.
> > > > >=20
> > > > > Yeah I think that's simplest. I did ponder a bit and I don't
> > > > > think
> > > > > it'd be
> > > > > too much pain to add the cache-management functions for device
> > > > > attachments/mappings. But it would be quite some typing ...
> > > > > -Sima
> > > >=20
> > > > It looks like I actually do have some hardware which requires the
> > > > cache
> > > > management. If I cache the mappings in both my IIO and USB code,
> > > > it
> > > > works fine on my ZedBoard, but it doesn't work on my ZCU102.
> > > >=20
> > > > (Or maybe it's something else? What I get from USB in that case
> > > > is a
> > > > stream of zeros, I'd expect it to be more like a stream of
> > > > garbage/stale data).
> > > >=20
> > > > So, change of plans; I will now unmap the attachment in the
> > > > cleanup
> > > > worker after the fence is signalled, and add a warning comment
> > > > before
> > > > the end of the fence critical section about the need to do cache
> > > > management before the signal.
> > > >=20
> > > > Does that work for you?
> > >=20
> > > The trouble is, I'm not sure this works for you. If you rely on the
> > > fences, and you have to do cache management in between dma
> > > operations,
> > > then doing the unmap somewhen later will only mostly paper over the
> > > issue,
> > > but not consistently.
> > >=20
> > > I think that's really bad because the bugs this will cause are very
> > > hard
> > > to track down and with the current infrastructure impossible to
> > > fix.
> > >=20
> > > Imo cache the mappings, and then fix the cache management bug
> > > properly.
> > >=20
> > > If you want an interim solution that isn't blocked on the dma-buf
> > > cache
> > > management api addition, the only thing that works is doing the
> > > operations
> > > synchronously in the ioctl call. Then you don't need fences, and
> > > you can
> > > guarantee that the unmap has finished before userspace proceeds.
> > >=20
> > > With the dma_fences you can't guarantee that, it's just pure luck.
> >=20
> > Maybe a follow up: Double check you really need the cache management
> > between the dma operations from 2 different devices, and not for the
> > cpu
> > access that you then probably do to check the result.
> >=20
> > Because if the issue is just cpu access, then protecting the cpu
> > access
> > needs to use the begin/end_cpu_access dma-functions (or the
> > corresponding
> > ioctl if you use mmap from userspace) anyway, and that should sort
> > out any
> > issues you have for cpu access.
> >=20
> > Just to make sure we're not needlessly trying to fix something that
> > isn't
> > actually the problem.
>=20
> I am not doing any CPU access - I'm just attaching the same DMABUF to
> IIO and USB and use the new IOCTLs to transfer data.
>=20
> Can I just roll my own cache management then, using
> dma_sync_sg_for_cpu/device? I did a quick-and-dirty check with it, and
> it seems to make things work with cached mappings.

Nope, because you might have an sg list which does not work for these
apis. Only the exporter knows whether it's dma-api allocated (in which
case these are the right apis), or whether nothing is needed or something
driver private.

So I'm afraid, we need to wire these through. It shouldn't be too bad
though because we really only need to wire these through for the cases you
need them, not for all dma-buf exporters. The one tricky part would what
we call the functions, since I guess you need to call _for_cpu() after you
finished access by the first device, and then _for_device() before
starting the access on the next one? That's a bit confusing lingo in a
dma-buf context where you only move data ownership from one device to the
other, so I think for dma_buf we want maybe dma_buf_attachment_end_access (=
for
sync_for_cpu) and dma_buf_attachment_begin_access (for sync_for_device) to
be consistent with the cpu flush functions.

Well maybe drop the _attachment_ if you want since other functions like
dma_buf_pin are also not consistent with the naming.

Cheers, Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
