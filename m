Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I075CZRJKWrOTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:25:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC23A668BF6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:25:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=redhat.com header.s=mimecast20190719 header.b=gpMYDzpw;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2A4340A6A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:25:06 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id CDF55409BB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 18:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1780599230;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XsZqKqQ5apgHHhOX9Ab/NdIUELyx46yV4YngdL7eMI8=;
	b=gpMYDzpwrZWJCin7WksmVeUcMZR9dZOzTFigOwHu8zHay1kHDuPKV5rjWMzJKNj1kp/xVR
	N+mB2ISyoVvoiaFKuF+1CVjnYA6DA/RxwKVwa8FZPgGXQHZQhq8F6EzsX0FwQscRMPNSMS
	6l9u/0FHz648je6aOmIvcV3bf+0WHYA=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-392-U_oenkg5MPmgU7PM4GTwYw-1; Thu, 04 Jun 2026 14:53:47 -0400
X-MC-Unique: U_oenkg5MPmgU7PM4GTwYw-1
X-Mimecast-MFC-AGG-ID: U_oenkg5MPmgU7PM4GTwYw_1780599227
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-914c8954923so248617585a.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2026 11:53:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780599227; x=1781204027;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XsZqKqQ5apgHHhOX9Ab/NdIUELyx46yV4YngdL7eMI8=;
        b=QeromgvgESwl9IWsyOJA29IsViLMcKaf2enHeY5WXJhhwFRqmEUh2po7PZn5ziZ3hz
         nPMnX/QZlq6+w5WNgvnmF0tJMU+D+raNCOzUvEPb09rCzJFuB4SOGx4Bc3f8ICS0w2ab
         r6beAC39+qEIoMjahsR4STz0LkuM9xG0VigfIEHxnSD5sCMXD9MnTAkDDagJierg+3w6
         V8xJ3YVzWfTzo+EX/+GFNBA0XUiw7isXJMIUd0h5yNbCFdoeBouzXL+lmuhYwYio5qGh
         E6n8CgWuTc0I46h6uUEaa6eL93oXSROHnQgL0SaPPuKUQr8x85fo9Xz956LhgWX/JnCg
         /cJQ==
X-Forwarded-Encrypted: i=1; AFNElJ8PMxMcfh9RK03gwVBzhssDYDO1yClNq/xa7L3GI0EVzL0ad+l/G/LEpcGczhYoWQkFhM0RZpaAdoX02/Uk@lists.linaro.org
X-Gm-Message-State: AOJu0YywsFBNq1UpU/qvPhYwY3lLQbzYlRpki40Q9ZYqGL8b/oQRQlid
	8fJVfAz9XdKZJkjROalma1yJyXIG+mMSlDZN2d/0WsBnQa3ZC/My15SsBZ+apRjxBUUs888Jmdi
	dntd1+eIssUMCX32jpvIGyreq0fAOmRkjPhqqF4jbrmd1wNK/MGfXpWGIlcnM/XY2udfp
X-Gm-Gg: Acq92OF5zoRwypix+vYfHi1hTf4NqIOxRr9UvCcULPgXwChAFGxlDDg1F7ubx5fpnmi
	rIze0F/FlZLY14Fr+pMJnTCRGvmD1rphSKGO98q358EHvr3cIHvWFjYt9W43omCrEhgPg+E6Z9i
	3OnyIe1VZE1/xIvzr5zcKm/At3bs47nfLjneMDGUzQ5uh4syqIKoelx3s0hiSk9VyuIEdwSxjUG
	8ijcn0jHJpSrt8cJA8ROwxzBx1GbIWo64KW2XxVUvnd4geWEshOaOX6qGGEvclVOTsc8CAMQpXM
	YTZSEeBLnrW6zKhMTOaKsQPmZgh++S3S4Jke7i8CdZGmuND5MGx6Q/bqiQe+PmSB69TCi6bZk8D
	tARWnuEXypyjjep53UVCVd6K84rZF
X-Received: by 2002:a05:620a:40d1:b0:915:a51d:5ee7 with SMTP id af79cd13be357-915a9c496b2mr73288385a.8.1780599226731;
        Thu, 04 Jun 2026 11:53:46 -0700 (PDT)
X-Received: by 2002:a05:620a:40d1:b0:915:a51d:5ee7 with SMTP id af79cd13be357-915a9c496b2mr73280485a.8.1780599226214;
        Thu, 04 Jun 2026 11:53:46 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9158a237330sm683172485a.16.2026.06.04.11.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 11:53:45 -0700 (PDT)
Message-ID: <dacbea5b8b7c289cd467774c40f3d888a1f1214a.camel@redhat.com>
From: lyude@redhat.com
To: Alice Ryhl <aliceryhl@google.com>
Date: Thu, 04 Jun 2026 14:53:44 -0400
In-Reply-To: <aiFoUauWYLz-Oyrx@google.com>
References: <20260603195210.693856-1-lyude@redhat.com>
	 <20260603195210.693856-6-lyude@redhat.com> <aiFoUauWYLz-Oyrx@google.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zB1U2jpXzVj3YS58yb95Cn7v0prgHmLaZaVIVXYMm58_1780599227
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: R52ZZX3PRSJTVPJCLRPAK7XUHD6BDSZ5
X-Message-ID-Hash: R52ZZX3PRSJTVPJCLRPAK7XUHD6BDSZ5
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:22:54 +0000
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Maxime Ripard <mripard@kernel.org>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v17 5/6] rust: sync: Add SetOnce::reset()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R52ZZX3PRSJTVPJCLRPAK7XUHD6BDSZ5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[136];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aliceryhl@google.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:mripard@kernel.org,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,ffwll.ch,linaro.org,lists.linaro.org,gmail.com,asahilina.net,collabora.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC23A668BF6

On Thu, 2026-06-04 at 11:58 +0000, Alice Ryhl wrote:
> On Wed, Jun 03, 2026 at 03:42:34PM -0400, Lyude Paul wrote:
> > This function simply drops the contents of the SetOnce, given a
> > mutable
> > reference - since that proves we have exclusive access to the
> > SetOnce.
> > Additionally, update the invariants for SetOnce to make it clear as
> > to why
> > this is safe.
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> 
> This isn't needed, you can just do:
> 
> unsafe { (*this).sgt_res = SetOnce::new() };

I realized after sending this I could also just be using ManuallyDrop
here instead of adding a reset function, which might be a bit clearer
anyhow

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
