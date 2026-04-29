Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oF5+D7ddBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:17:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFC65320B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:17:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFDE83F820
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:17:09 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 0858C3F78A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 21:40:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=LuyuGTHZ;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of deborah.brouwer@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=deborah.brouwer@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1777498828; cv=none;
	d=zohomail.com; s=zohoarc;
	b=iIg3N6KVM9tGksa69tR+Rw1tKEpC6Drno8ArxLJ+CAFg1++FHLqbkE/kTIoPArU6/Zme/Z5PcBWTjDWJuP1LP5LMUgNPrh0uE+FY4rBjxlsNHCqIQTFTE416t+j0Iu8NgXAyPnFFLs2nj3vXx5l1sAgt9hVUYIkk55j5eOeaxbw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1777498828; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=WJX7xHCfvTT+uoYdGdgResyGTcDES1g9sRJnLBitFRQ=;
	b=npG/D4rtyXZda4rONm0viZ5L1zr5IWnx9dwv0K6yYVWUiC0b5+GRxvYd2rBAK8elrBhRwiXJ3Etk0vCGml+7DGylGGXSjmFMauds/0KMrzTAv4dWkbK6W2B15uuoq8Zeq4s3llV1WuopU3VyBeYfcpCjzqkUuKg+Bjn2oSk/6fQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=deborah.brouwer@collabora.com;
	dmarc=pass header.from=<deborah.brouwer@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1777498828;
	s=zohomail; d=collabora.com; i=deborah.brouwer@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=WJX7xHCfvTT+uoYdGdgResyGTcDES1g9sRJnLBitFRQ=;
	b=LuyuGTHZLbfXwpbIMZKOdT6zYqCBj4Na+Yeg3vPMSnUTr5q4KBF+YBb76zVsjYa4
	ePRNj3SgjFJgMyEqoS5x68X1qTdST/sl+8Bv4BOw0/hi5T6oyHrxfEyiyXLg+t3DbjQ
	wYI48w5ZSKE6nIzfZEaA3wuQBkZvkj+lQoOk/OLo=
Received: by mx.zohomail.com with SMTPS id 1777498826399615.4481576439005;
	Wed, 29 Apr 2026 14:40:26 -0700 (PDT)
Date: Wed, 29 Apr 2026 14:40:25 -0700
From: Deborah Brouwer <deborah.brouwer@collabora.com>
To: Alice Ryhl <aliceryhl@google.com>
Message-ID: <afJ6ySox_f7g0sfn@um790>
References: <20260428190605.3355690-1-lyude@redhat.com>
 <20260428190605.3355690-5-lyude@redhat.com>
 <afG_HUjCMH2qKjPS@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <afG_HUjCMH2qKjPS@google.com>
X-Spamd-Bar: ----
X-MailFrom: deborah.brouwer@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JIZKS4ZSFFL2S6I7Q23GQ444GGGRMK7T
X-Message-ID-Hash: JIZKS4ZSFFL2S6I7Q23GQ444GGGRMK7T
X-Mailman-Approved-At: Wed, 13 May 2026 11:15:57 +0000
CC: Lyude Paul <lyude@redhat.com>, nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v13 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JIZKS4ZSFFL2S6I7Q23GQ444GGGRMK7T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: CFFC65320B9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[325];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FROM_NEQ_ENVFROM(0.00)[deborah.brouwer@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.256];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

On Wed, Apr 29, 2026 at 08:19:41AM +0000, Alice Ryhl wrote:
> On Tue, Apr 28, 2026 at 03:03:44PM -0400, Lyude Paul wrote:
> > In order to do this, we need to be careful to ensure that any interface we
> > expose for scatterlists ensures that any mappings created from one are
> > destroyed on driver-unbind. To do this, we introduce a Devres resource into
> > shmem::Object that we use in order to ensure that we release any SGTable
> > mappings on driver-unbind. We store this in an UnsafeCell and protect
> 
> Outdated? No longer UnsafeCell.
> 
> > access to it using the dma_resv lock that we already have from the shmem
> > gem object, which is the same lock that currently protects
> > drm_gem_object_shmem->sgt.
> > 
> > We also provide two different methods for acquiring an sg table:
> > self.sg_table(), and self.owned_sg_table(). The first function is for
> > short-term uses of mapped SGTables, the second is for callers that need to
> > hold onto the mapped SGTable for an extended period of time. The second
> > variant uses Devres of course, whereas the first simply relies on rust's
> > borrow checker to prevent driver-unbind when using the mapped SGTable.
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> 
> >      obj: Opaque<bindings::drm_gem_shmem_object>,
> >      /// Parent object that owns this object's DMA reservation object.
> >      parent_resv_obj: Option<ARef<Object<T>>>,
> > +    /// Devres object for unmapping any SGTable on driver-unbind.
> > +    /// TODO: Drop the mutex once we can use Init with SetOnce.
> > +    #[pin]
> > +    sgt_res: Mutex<SetOnce<Devres<SGTableMap<T>>>>,
> 
> As far as I can tell, you don't need this Mutex. Also, it causes
> problems like requiring the reference transmute below.

I think it is also causing a lockdep warning pointing to this sgt_res mutex.
It only happens when KUnit tests are enabled.
If the KUnit tests register a lock class for this mutex first, then when Tyr
later locks it via sg_table(), lockdep complains about the same key being used
for a different class.

> 
> Alice
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
