Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MgYCK6N4mkc7QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Apr 2026 21:44:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C425241E589
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Apr 2026 21:44:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70EEC3F716
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Apr 2026 19:44:40 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id B80B63F716
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Apr 2026 19:44:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="ScaF/hWL";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=lyude@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776455069;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4AUae5KcEeFvFh3msKQXl5hQJhIopamMvxo6YZ4ukss=;
	b=ScaF/hWLflWAYuk0Z4w1zIK1BB61+gW2jXF0SUApYSVe4x6/DlccDRXxhm43jDEX7nGOx9
	zpJDpXFvARmjPhSqh28hZWVRlV5edsVAyQnK5OAATzw/144O3EdunQlqWyGIvYlNIBil47
	UtPKuX9K10QLLhIKOqjAgb62EcvYM1s=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-93-qfkKa_JDOx2qal2qazzqsw-1; Fri, 17 Apr 2026 15:44:28 -0400
X-MC-Unique: qfkKa_JDOx2qal2qazzqsw-1
X-Mimecast-MFC-AGG-ID: qfkKa_JDOx2qal2qazzqsw_1776455068
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8d5010ea730so552429785a.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Apr 2026 12:44:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776455068; x=1777059868;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4AUae5KcEeFvFh3msKQXl5hQJhIopamMvxo6YZ4ukss=;
        b=qMVxDlSJxE/uSkr6GkmWWVkdAJ5s0oozf5ua8A8ODDvwDe4aQqL3r5jRgr6plEa20c
         RxT7tX48CwmpwohH8vdvwes9OB0yumkqAqUcKgNqtq4xvmyRt64y+iF+S/jyj8BaRwPk
         a9A5Y04XfRK9KweUyHH2Cbp7fPhZpjJv9g5ISJEaL//40l9dYs28SZLKJSQsl1mb9iSa
         oPSULa4Lip/MYvXbhXvxCETmxBBZvJgBLQMrjhXWHlhw39sDPkyOGaL/tk64A6vH69xI
         S6Rv4VcgLk3guQK5kBLdOjxZTa2fAjmOmE0DpCFJ7G+sUcEV0LAs72ZUjAftr/Gft6Ek
         NexA==
X-Forwarded-Encrypted: i=1; AFNElJ8zdFpB/iCrWtGR1gb4ZJ0KDOzxrRw2/OFcR3lUCUlTXdlZhxeqEXw/2BWPmXogD2XSzc0MY/Wfc9N/MYrM@lists.linaro.org
X-Gm-Message-State: AOJu0Yzq86iR6FG4Xxz+3L/+36ycfOqAKMSt36SC4IyT45JXHHvhWJNe
	zu2DVrwgggoYK47b6pKLPowt8pkS4cdzvh4JbLcg0oYzvgu3iyVmpCe6hUtSflXvMaZ77CWWkv7
	ZDEYJxc+HplHkag8300lJZ5FXqvv0tF2PzkEpyCaQi30JR5CYohX+12DJ+FeuZdP1ISqo
X-Gm-Gg: AeBDieu8W3U/YSkbJu54CzueVdZ7bMZi1wYAdIes0d2/p+TMEhz9/+amS1mZSEX03Q7
	NaRgDPk6/lACa17dhgnfHTGdLL7wQq6SsNVeV/QUhkAOEy+I6CIMAyxjqaV28Ail/5AsFjOuHff
	osYTl51myRPBdtes2fp0gTYSOFzH2PnupsLU16Zq4e+9saHYOk+pM4rwxmv2wIfKDvs7c2LDl0J
	7FsIAdN+0pSy+xBIMwhxvy0MKrTk//SwEpDBk2WgzgZYy/9xaFb5XzP3uJiOlaZNsX0FMKXonyN
	bHKBldyS0rYZH4zPIsb/lOMGamXdWsTurkg+o9lOY65v7wr6vXrvIBYwLe3B4hcNlcKqsmc3et6
	1tfF8FlSHJnEZa8G8ViH6H9WvYpMm
X-Received: by 2002:a05:620a:4408:b0:8d9:ca3b:5ca1 with SMTP id af79cd13be357-8e789c5ab1dmr528960185a.9.1776455067615;
        Fri, 17 Apr 2026 12:44:27 -0700 (PDT)
X-Received: by 2002:a05:620a:4408:b0:8d9:ca3b:5ca1 with SMTP id af79cd13be357-8e789c5ab1dmr528955585a.9.1776455067197;
        Fri, 17 Apr 2026 12:44:27 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8e7d9abce59sm243352085a.46.2026.04.17.12.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 12:44:26 -0700 (PDT)
Message-ID: <ba9d6fbd12a42d95e6349e232111d5e72e88e1d3.camel@redhat.com>
From: lyude@redhat.com
To: Alexandre Courbot <acourbot@nvidia.com>
Date: Fri, 17 Apr 2026 15:44:25 -0400
In-Reply-To: <DHPBAVQHIM11.XVBHOWYFRITF@nvidia.com>
References: <20260409001559.622026-1-lyude@redhat.com>
	 <20260409001559.622026-5-lyude@redhat.com>
	 <DHPBAVQHIM11.XVBHOWYFRITF@nvidia.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: kQhEObYushUai6ynNMu0eenuyiWLDrrfro_irpNbQjk_1776455068
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -
Message-ID-Hash: 3QEKCCHE6A4JH6EBUZ7QK5AIMNCKE37M
X-Message-ID-Hash: 3QEKCCHE6A4JH6EBUZ7QK5AIMNCKE37M
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3QEKCCHE6A4JH6EBUZ7QK5AIMNCKE37M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	NEURAL_HAM(-0.00)[-0.863];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C425241E589
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Just so it doesn't come as a surprise in the next respin - I don't
really see a reasonable way of using get_or_insert_with() here (though
I had no idea this was a thing!). However - I can get rid of all of the
ret = statements and also clean up the indenting a little bit with
block expressions as I forgot those exist.

On Fri, 2026-04-10 at 16:55 +0900, Alexandre Courbot wrote:
> 
> nit: let's use `let ret = if let Some(sgt_res) ...` to avoid the
> multiple `ret = `statements?
> 
> Or maybe even better, you might be able to use
> `Option::get_or_insert_with`.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
