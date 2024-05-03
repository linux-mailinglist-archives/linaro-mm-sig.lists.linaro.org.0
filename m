Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5368BB4D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 22:28:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F106D44850
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 20:28:50 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	by lists.linaro.org (Postfix) with ESMTPS id 00ED4401C4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 20:28:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=bJqWaITj;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.161.45 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5aa27dba8a1so68997eaf.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 13:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714768118; x=1715372918; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1iqzX4jEVf88YLxrEdDnezO793F37cz7yvxwfuzhVk4=;
        b=bJqWaITjj3VhVM/UOAmDVXG4oooRtkx+j7GsCU/2BsyzcKmZ/Ja9i8hi5TDEuMg89o
         EcItiwo3u1Aoy1P4F4ayVeYVVqYOQgaaqEladn7RFJ9/m3UjCvkY+DpBtJPzeSJXHT4b
         Plom2zDpnywCEc1DWOgmX7qWDKzu1yFvtnEyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714768118; x=1715372918;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1iqzX4jEVf88YLxrEdDnezO793F37cz7yvxwfuzhVk4=;
        b=b0SywM2PC4WWzszv370grRnDYhYidp37iJNxRlouSMrJsyGFFTwe5xtoIgDB7D2zkB
         aoniXZUwk9Uei/9jibs4owzXUBBF8/sLHncoK4aIjfgMu+V1XSaGitndZCjuOAp55d4e
         YBpKV4iWpO53U4uZGZsxbCE1QmAMzMfKNYG7rGJqIONG2nOQVhji2kckH1D9J2GDd2y0
         z3y9jtStrQl/Eq0oB5e8/CBdPEc/zfRdbQ2V3MEj9nPKnhiauEiQj/PK425Rc2f89o4s
         lH7Q4lh84uclusHCR9uFNCK1SPzHNtk7jD/UCUoP52RRzVgEas7lBHTqfeekJ7LZbap2
         wlLg==
X-Forwarded-Encrypted: i=1; AJvYcCUMM3A+LZCrpAXF+jzCKsVIxzDE0yYvxW3mY0Jl1XjMhAbCcSJlWMIql1qRry9Dn/QatZdMz6859L0W5FnDOxNEZ0v++jcDZ2/A9dW2fTI=
X-Gm-Message-State: AOJu0Yy2BA6KXZZGuOVCgIoZoatVH8/fLoEi6YH+vVl7S1awkXbiwnKe
	0BJg8KPP+KWxFy4aQuZiMmqYIyLyTII0s+tDBslDPbFcgDDMCAUUhH+swPud4Q==
X-Google-Smtp-Source: AGHT+IF94HWVpg+ieTREfKNo4EYCAREwn5FJES4sWZrWNDrTepMs4qAK9EBYEOGD6R0pN+rBpz049w==
X-Received: by 2002:a05:6358:9481:b0:183:645b:cfa4 with SMTP id i1-20020a056358948100b00183645bcfa4mr3887974rwb.16.1714768118230;
        Fri, 03 May 2024 13:28:38 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
        by smtp.gmail.com with ESMTPSA id n16-20020a63ee50000000b005f3d54c0a57sm3551694pgk.49.2024.05.03.13.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 13:28:37 -0700 (PDT)
Date: Fri, 3 May 2024 13:28:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <202405031325.B8979870B@keescook>
References: <0000000000002d631f0615918f1e@google.com>
 <7c41cf3c-2a71-4dbb-8f34-0337890906fc@gmail.com>
 <202405031110.6F47982593@keescook>
 <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
 <202405031207.9D62DA4973@keescook>
 <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
 <202405031237.B6B8379@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202405031237.B6B8379@keescook>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 00ED4401C4
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.90 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.45:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[gmail.com,zeniv.linux.org.uk,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name,linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	DNSWL_BLOCKED(0.00)[198.0.35.241:received,209.85.161.45:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Level: *
X-Rspamd-Action: no action
Message-ID-Hash: 7AB2V54YKU7I3LD3FVFYROK26TLIRKXN
X-Message-ID-Hash: 7AB2V54YKU7I3LD3FVFYROK26TLIRKXN
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bui Quang Minh <minhquangbui99@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, io-uring@vger.kernel.org, jack@suse.cz, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>, Linus Torvalds <torvalds@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7AB2V54YKU7I3LD3FVFYROK26TLIRKXN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 12:59:52PM -0700, Kees Cook wrote:
> So, yeah, I can't figure out how eventpoll_release() and epoll_wait()
> are expected to behave safely for .poll handlers.
> 
> Regardless, for the simple case: it seems like it's just totally illegal
> to use get_file() in a poll handler. Is this known/expected? And if so,
> how can dmabuf possibly deal with that?

Is this the right approach? It still feels to me like get_file() needs
to happen much earlier...

diff --git a/fs/eventpoll.c b/fs/eventpoll.c
index 882b89edc52a..c6c29facf228 100644
--- a/fs/eventpoll.c
+++ b/fs/eventpoll.c
@@ -991,9 +991,13 @@ static __poll_t ep_item_poll(const struct epitem *epi, poll_table *pt,
 	__poll_t res;
 
 	pt->_key = epi->event.events;
-	if (!is_file_epoll(file))
-		res = vfs_poll(file, pt);
-	else
+	if (!is_file_epoll(file)) {
+		if (atomic_long_inc_not_zero(&file->f_count)) {
+			res = vfs_poll(file, pt);
+			fput(file);
+		} else
+			res = EPOLLERR;
+	} else
 		res = __ep_eventpoll_poll(file, pt, depth);
 	return res & epi->event.events;
 }

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
