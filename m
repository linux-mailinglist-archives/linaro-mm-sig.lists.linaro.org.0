Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VTnrOnNSLGqIPQQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 20:39:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F6F67BCC6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 20:39:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=redhat.com header.s=mimecast20190719 header.b=gJqWBQgO;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78C2240A43
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 18:39:46 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 5239C3F97D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 18:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1781289574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9hjvIQdDCosfn7FQViIiZN3fmJqSK0XtflTNuA4kTRI=;
	b=gJqWBQgO1fNUmJ5E/GXTE7jw1xKsYo76pvJRmcu8r0dBrVhWfyN94F2gZLnzjHI8ItueSm
	iMLSwKXoGt8Ef9nWBOlDbuCtNVhSw852gM6koRIL0dH2xdE4w0Pq9gcxpWnZIHfq+UqEua
	2Ot7szzdZEGCr0eTMOmUSYQjpUMwqic=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-21-j-29LzHuNlOaG1HPo9PPOg-1; Fri, 12 Jun 2026 14:39:32 -0400
X-MC-Unique: j-29LzHuNlOaG1HPo9PPOg-1
X-Mimecast-MFC-AGG-ID: j-29LzHuNlOaG1HPo9PPOg_1781289572
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-9157d38ab37so123822585a.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 11:39:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781289572; x=1781894372;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9hjvIQdDCosfn7FQViIiZN3fmJqSK0XtflTNuA4kTRI=;
        b=opN7k7kUPr4kqO0qj6iRkR9kBHul0NTotf85LjIz8LIG6ZDoJ6B25N7a5PfPR5EYKY
         OZ75gzg9hXEILCNSLlm02Z3j6wIwtE8iBLNSnQltFzd+HJPKhGEJ++KAc6JMOeQljoce
         KUsHgvDtEGijHtdL+WNCAaEkt3m/fFemQsprJkLmHPE8URJuAFpW1ULKKNEgv58GCNtX
         +qVPl0zIhNot2ON8eoEVXhqXVVIkJSgM27DqoMrMWvLlALgHQ8dUABw5Qg91QHR9UC71
         m6JNnxz5AdJQSiLd1eIPLfb68BdR6lfEfvQ0n7Ap083fCazRPoXPlue3q82vCy2zQ35F
         9VgQ==
X-Forwarded-Encrypted: i=1; AFNElJ8aFvWECNdJzH6HoLbMfiU9IzhsMltsFb8rZCaZz9MmTBkdvqG399sWavIhLLDaS2wydMatbbjJ54z9vVsF@lists.linaro.org
X-Gm-Message-State: AOJu0YySMe8hkNXnjygXKldOn+KduiNs2TyN4vcNkQrCcTVd3IYlEpIT
	UC+LN1bI/N7uzkXs4moA8ua0OJmCZ07I+2MQwVZ7OhrrCxQCpes4dNLYQylzFTnQr75oCvaRnft
	fZug5HdUGpAybIXuss11uVxsXug/rmDe4i6Gn+L2fksza+v9ZV0t6exOCd6+jQOGugG/U
X-Gm-Gg: Acq92OEWnErwymC8CIJ3JtT7py+HRkcuS+dXxnbrYcn/8sslmgTb7kxsCsr78jvy+Sv
	t6VJd50YY3xKKBESx5TDQmHLcXwvY8Ytj6zYLyvnQMxbxp1HQVNJwaPqdgV8cOp6oTkHTKs6Ejg
	Mux1xGOEZGQTdL7PW2oibGkjJswLkIVUjHcHOXpK6DOEoHnEZN+DPJBazHgmqSihw5KPFhanf8G
	SeqqkU+L9bVD+OYb0ZPcpzi9NraMtiPNGgQvSrZ982fU1ZR6Q8nlo2UFXlGlghDujbndn4GGhj3
	/++uk9HOsudagn0rcZo2CQvZzDECEyxbMUpsIhEbQ9xr2QYz3pFcFhP176rUruTNzQIxA+MhKYr
	ARaXNocIangIUellURQ==
X-Received: by 2002:a05:620a:8012:b0:914:c032:5870 with SMTP id af79cd13be357-9161bd604f9mr617289485a.38.1781289571990;
        Fri, 12 Jun 2026 11:39:31 -0700 (PDT)
X-Received: by 2002:a05:620a:8012:b0:914:c032:5870 with SMTP id af79cd13be357-9161bd604f9mr617282985a.38.1781289571521;
        Fri, 12 Jun 2026 11:39:31 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a03d6fcsm272275585a.35.2026.06.12.11.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 11:39:30 -0700 (PDT)
Message-ID: <da0dd5cf287f8739d6b099646b3fb98153670f3b.camel@redhat.com>
From: lyude@redhat.com
To: Deborah Brouwer <deborah.brouwer@collabora.com>
Date: Fri, 12 Jun 2026 14:39:29 -0400
In-Reply-To: <airp4AHxiJKWn5tr@um790>
References: <20260610162433.923550-1-lyude@redhat.com>
	 <20260610162433.923550-3-lyude@redhat.com> <airp4AHxiJKWn5tr@um790>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: QuNrb5NpxDej5p6Vf-AKgumRkJkTrmD3RREUuEDNhJE_1781289572
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ---
Message-ID-Hash: AUCXI22H4K6BCLWHC7VW4FLY455MCEBW
X-Message-ID-Hash: AUCXI22H4K6BCLWHC7VW4FLY455MCEBW
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v20 2/4] rust: drm: gem: shmem: Add vmap functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AUCXI22H4K6BCLWHC7VW4FLY455MCEBW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:deborah.brouwer@collabora.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81F6F67BCC6

On Thu, 2026-06-11 at 10:01 -0700, Deborah Brouwer wrote:
> 
> Hi Lyude, i've got a clippy error here that "into_iter()" is
> redundant
> because it converts a Range<usize> into a Range<usize>.

Yep, that's completely correct! It looks like I was running my kunit
tests without WERROR and CLIPPY by mistake, which would explain how I
missed this :).

Will fix in the next respin in just a moment

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
