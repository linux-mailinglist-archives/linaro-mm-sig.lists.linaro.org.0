Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Hb3GGEL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:16:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C08411834
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:16:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15B34406EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:16:32 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 61CFD40176
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Jan 2026 02:11:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=UoMEMf1O;
	spf=pass (lists.linaro.org: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767924686;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=09fZuRtKBthvUPFZRfmDU+5G5cxlC+xjTolnVnh0EhI=;
	b=UoMEMf1O40LkIi6WANFNaI48z5sSTvurS70UcDmTVf+yt5szkHp2MST3ee/KR8Kvw3grfA
	plQqPfhGjFQ5KmotLcHbmy468h2sW52B7eEfDiTQVnGHGkLViFaxJm8mSviHC17SuExv8k
	liyt8WXRWad4aDfPnjqKFN6iBqTPj2I=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-264-A_n-5HUKMWaEy_K0o4HrYg-1; Thu,
 08 Jan 2026 21:11:20 -0500
X-MC-Unique: A_n-5HUKMWaEy_K0o4HrYg-1
X-Mimecast-MFC-AGG-ID: A_n-5HUKMWaEy_K0o4HrYg_1767924676
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5CBA9195608F;
	Fri,  9 Jan 2026 02:11:14 +0000 (UTC)
Received: from fedora (unknown [10.72.116.172])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E4C1230002D5;
	Fri,  9 Jan 2026 02:11:02 +0000 (UTC)
Date: Fri, 9 Jan 2026 10:10:57 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <aWBjsa2RZ_uaO9Ns@fedora>
References: <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com>
 <7b2017f4-02a3-482a-a173-bb16b895c0cb@amd.com>
 <20251204110709.GA22971@lst.de>
 <0571ca61-7b17-4167-83eb-4269bd0459fe@amd.com>
 <20251204131025.GA26860@lst.de>
 <aVnFnzRYWC_Y5zHg@fedora>
 <754b4cc9-20ab-4d87-85bf-eb56be058856@amd.com>
 <20260107160151.GA21887@lst.de>
 <aV8UJvkt7VGzHjxS@fedora>
 <20260108101703.GA24709@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108101703.GA24709@lst.de>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Spamd-Bar: ----
X-MailFrom: ming.lei@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7Y2JO5EGOWJET7SOPL2G45SLPGPTYMTL
X-Message-ID-Hash: 7Y2JO5EGOWJET7SOPL2G45SLPGPTYMTL
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:50 +0000
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Pavel Begunkov <asml.silence@gmail.com>, linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/11] file: add callback for pre-mapping dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7Y2JO5EGOWJET7SOPL2G45SLPGPTYMTL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2342];
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
	NEURAL_SPAM(0.00)[0.452];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 01C08411834
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Jan 08, 2026 at 11:17:03AM +0100, Christoph Hellwig wrote:
> On Thu, Jan 08, 2026 at 10:19:18AM +0800, Ming Lei wrote:
> > > The feature is in no way nvme specific.  nvme is just the initial
> > > underlying driver.  It makes total sense to support this for any high
> > > performance block device, and to pass it through file systems.
> > 
> > But why does FS care the dma buffer attachment? Since high performance
> > host controller is exactly the dma buffer attachment point.
> 
> I can't parse what you're trying to say here.

dma buffer attachment is simply none of FS's business.

> 
> > If the callback is added in `struct file_operations` for wiring dma buffer
> > and the importer(host contrller), you will see it is hard to let it cross device
> > mapper/raid or other stackable block devices.
> 
> Why?
> 
> But even when not stacking, the registration still needs to go
> through the file system even for a single device, never mind multiple
> controlled by the file system.

dma_buf can have multiple importers, so why does it have to go through FS for
single device only?

If the registered buffer is attached to single device before going
through FS, it can not support stacking block device, and it can't or not
easily to use for multiple block device, no matter if they are behind same
host controller or multiple.


Thanks,
Ming

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
