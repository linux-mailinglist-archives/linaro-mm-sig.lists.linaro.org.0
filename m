Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7228BB5CA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:34:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65718441B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:34:07 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id 1D14B40C4C
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 21:33:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=GxhqR+bH;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.46 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a598e483ad1so13925066b.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 14:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714772036; x=1715376836; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=H0cKj1/eeDlsag1nYyx5cuj3RktPC8YvvhuCxa/6SIc=;
        b=GxhqR+bHqRKZlZyvsyvMxbeUdAQjA81WP1qoFg0371Sou1MpOgpoIe1PkB8YnmMmxC
         BYV/ym0yLeii/MJGEK6XQTqGRwpmMqaS8mQiJEJuHfgUys3S0aFQSNxoRD92FedU+TTl
         xKHJhMeVDeXFL6Q1+WBRx5Y0QBbEFntV5THdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714772036; x=1715376836;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H0cKj1/eeDlsag1nYyx5cuj3RktPC8YvvhuCxa/6SIc=;
        b=FMMwzK6wLYXjOl700Sx9b+79nEzGm32CUnNL2Hfp/hXbwhA6qDlbAizGAY8TVloZlL
         TRD6BOEsQoJSFACf2kNtX6m06FJkLBgS8zMtU7YoeA3n3p/OeR7/ORBRN39ll43VI1Xe
         M7TuhDBI7bWJo3y2+yL0+3yb6KZhcUdNh01DLIb5GgBM+1sDlzwW426JrrtUQ7EDmnYF
         ghz5MoSBNiP4V93l3A3V/jDCJ62kxz0IeT0nNqE0pzrZeyGcoN8PSvW3Npr4LigN9JUT
         BBZntDDeqcWmTgQHTbTaDnqPDUWCV31YN3kIE0J/X7iTQNJvqChZG2Pd2zoUmWJGraVu
         7i5A==
X-Forwarded-Encrypted: i=1; AJvYcCXiIPM6Z9pSD/3FYllxxtQj9AkEsMut1ipRd82306iQB1Kp5UXETQjVM7U+mLssou7vKGVVhjupJfv04Q/aV6+K7fdyLAJvYvEerDbwi3k=
X-Gm-Message-State: AOJu0Yz7R3Dfq6FLj0hvPgt/0sH7nJZllADjl8gvGMMrPnRL/H8Fc2Ff
	AYJWSEgUBgDifBBssWJVHMzfqyfq0ok9WqoWLM8c72T97Na2W10WN+Lp0XBNxFzF0xRBlhu3FkG
	RxLaSyQ==
X-Google-Smtp-Source: AGHT+IG5q1P9biorxVQ1c2iDDpxqMfsHk96Om2qwedVkG/3U/TPg2v+cxq3jnUXSerQyVuWUM6qXIA==
X-Received: by 2002:a50:9e87:0:b0:572:7ea0:66ca with SMTP id a7-20020a509e87000000b005727ea066camr2453247edf.36.1714772035994;
        Fri, 03 May 2024 14:33:55 -0700 (PDT)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com. [209.85.218.44])
        by smtp.gmail.com with ESMTPSA id dd20-20020a056402313400b00572aa7664bdsm2140173edb.39.2024.05.03.14.33.54
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 14:33:54 -0700 (PDT)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a595199cb9bso10735166b.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 14:33:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXunGYqrtZqF+pwblFuNQJlYgy0M3uJ86eSZcnDt5PVEgHtYPcRiKRmVVIkAsS0dDjrEHeMbFrMQjWN07F8oPHlI+MRyasjjcXDdRc3qmg=
X-Received: by 2002:a17:906:2c50:b0:a59:761d:8291 with SMTP id
 f16-20020a1709062c5000b00a59761d8291mr2183947ejh.9.1714772033952; Fri, 03 May
 2024 14:33:53 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
In-Reply-To: <20240503212428.GY2118490@ZenIV>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 May 2024 14:33:37 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
Message-ID: <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1D14B40C4C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.83 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.03)[95.20%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.46:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	DNSWL_BLOCKED(0.00)[209.85.218.44:received,209.85.218.46:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 7FHFAPJC6PS7NLDSMOL6G7SAUID7EU3G
X-Message-ID-Hash: 7FHFAPJC6PS7NLDSMOL6G7SAUID7EU3G
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: keescook@chromium.org, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7FHFAPJC6PS7NLDSMOL6G7SAUID7EU3G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 3 May 2024 at 14:24, Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> Can we get to ep_item_poll(epi, ...) after eventpoll_release_file()
> got past __ep_remove()?  Because if we can, we have a worse problem -
> epi freed under us.

Look at the hack in __ep_remove(): if it is concurrent with
eventpoll_release_file(), it will hit this code

        spin_lock(&file->f_lock);
        if (epi->dying && !force) {
                spin_unlock(&file->f_lock);
                return false;
        }

and not free the epi.

But as far as I can tell, almost nothing else cares about the f_lock
and dying logic.

And in fact, I don't think doing

        spin_lock(&file->f_lock);

is even valid in the places that look up file through "epi->ffd.file",
because the lock itself is inside the thing that you can't trust until
you've taken the lock...

So I agree with Kees about the use of "atomic_dec_not_zero()" kind of
logic - but it also needs to be in an RCU-readlocked region, I think.

I wish epoll() just took the damn file ref itself. But since it relies
on the file refcount to release the data structure, that obviously
can't work.

                Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
