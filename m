Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDXgNMgK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:14:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7D041176E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:14:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C739B448A8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:13:59 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 1C2173F8F4
	for <linaro-mm-sig@lists.linaro.org>; Sun,  4 Jan 2026 01:43:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=PoTcfWJV;
	spf=pass (lists.linaro.org: domain of ming.lei@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767490997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JOHCJ6ws2PdEVpdMzUbfxY52ykfjA/AadGdfIrG4o2w=;
	b=PoTcfWJV85WHeakyRiNWorPyuFuDCSR3Vkyix2v9GiPm/9Chc2IRKmCWVqXioCwLZRhaxA
	kBd4BJ1+apm8nNvtWUiSFFitykgS/bI1VmoMvHs4qCco2AdRjFU8QJnCO96zaM7l/arn9P
	UntklbTyUkEbAtwvfO/Ze06sNGwWWVk=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-621-8xYrOUkAPh6aSHp3iCO0tw-1; Sat,
 03 Jan 2026 20:43:15 -0500
X-MC-Unique: 8xYrOUkAPh6aSHp3iCO0tw-1
X-Mimecast-MFC-AGG-ID: 8xYrOUkAPh6aSHp3iCO0tw_1767490993
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 62C001956080;
	Sun,  4 Jan 2026 01:43:12 +0000 (UTC)
Received: from fedora (unknown [10.72.116.132])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 36773180044F;
	Sun,  4 Jan 2026 01:43:00 +0000 (UTC)
Date: Sun, 4 Jan 2026 09:42:55 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <aVnFnzRYWC_Y5zHg@fedora>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com>
 <7b2017f4-02a3-482a-a173-bb16b895c0cb@amd.com>
 <20251204110709.GA22971@lst.de>
 <0571ca61-7b17-4167-83eb-4269bd0459fe@amd.com>
 <20251204131025.GA26860@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251204131025.GA26860@lst.de>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Spamd-Bar: ---
X-MailFrom: ming.lei@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AQD7SI3LYI3OATDALHO2O7ITZSS7FP3C
X-Message-ID-Hash: AQD7SI3LYI3OATDALHO2O7ITZSS7FP3C
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:11 +0000
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Pavel Begunkov <asml.silence@gmail.com>, linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/11] file: add callback for pre-mapping dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AQD7SI3LYI3OATDALHO2O7ITZSS7FP3C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2462];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,vger.kernel.org,intel.com,kernel.org,kernel.dk,grimberg.me,zeniv.linux.org.uk,linux-foundation.org,linaro.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ming.lei@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.464];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: AA7D041176E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Dec 04, 2025 at 02:10:25PM +0100, Christoph Hellwig wrote:
> On Thu, Dec 04, 2025 at 12:09:46PM +0100, Christian K=F6nig wrote:
> > > I find the naming pretty confusing a well.  But what this does is to
> > > tell the file system/driver that it should expect a future
> > > read_iter/write_iter operation that takes data from / puts data into
> > > the dmabuf passed to this operation.
> >=20
> > That explanation makes much more sense.
> >=20
> > The remaining question is why does the underlying file system / driver
> > needs to know that it will get addresses from a DMA-buf?
>=20
> This eventually ends up calling dma_buf_dynamic_attach and provides
> a way to find the dma_buf_attachment later in the I/O path.

Maybe it can be named as ->dma_buf_attach()?  For wiring dma-buf and the
importer side(nvme).

But I am wondering why not make it as one subsystem interface, such as nvme
ioctl, then the whole implementation can be simplified a lot. It is reasona=
ble
because subsystem is exactly the side for consuming/importing the dma-buf.
=20

Thanks,=20
Ming

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
