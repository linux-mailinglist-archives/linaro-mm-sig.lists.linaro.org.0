Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wH/aNVr/4Gk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:25:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AE66E410B11
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:25:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB02B4050B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:25:13 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by lists.linaro.org (Postfix) with ESMTPS id 7B03A3F92D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 01:24:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=CC3K6j52;
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.222.172 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8b2f2c5ec36so161123385a.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 17:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763688270; x=1764293070; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S501oRNPXFaui6LNQdJlEz7mEWZdKyDXXyx7cM9Nvjo=;
        b=CC3K6j529L4hqOe/UtE1Fc+NNaJcyqXPodVgxc1nrwxGRIj+TJglNqKthSAVJBHF8d
         Gc3Joc0tbN2loVxnRIT7+jNFEbRsGBfuq/k5JTQtgc87Lho68Bp6b3vbeci7Q1S7ue53
         KLn7mEPzKWtnSH7HAD3S89wix2Vh3jymgTUkAzIE21b2ISyXiDC1+AvFjXq1PB91MVJd
         K01Gpkt3j+p0uK0cG79m1N0L5l8YTWc9WAs4OxTuTd5lI396HVxD6tSSK/6ce1XL4P7p
         5ugk2dVTLdD+/hnXE/9NNAKG1WVwvAwx+ryia81aNy7ljcG/OYhl0nvz1VF7Gs3D08u/
         VJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763688270; x=1764293070;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S501oRNPXFaui6LNQdJlEz7mEWZdKyDXXyx7cM9Nvjo=;
        b=v8uiZH0k/haMS6Fu7ADmQ/V6VaOayAc2RI5klaEtYQOMlkDqr65i8VN7bgAQQVrrjD
         DetTG6THXKGAXq0vrfn/Kl6b7TMybLpKAeb8MEUL3EeUSeTDD2lSzwn6XD8DAypndt+j
         WGniQvjsYcaqs0ZzkLVkRchzu/p3FL9z0zt1VVEBZrLC0GPYyAkYsTjUky41qEJbRsJ1
         UGwuKM2ckMUqwHjRuPdYpCjlolnBwGckcZf2bpuSTLbOcriO34cyPEPeGz7w9vlNvhNN
         rRlFtlrjiDECtvnPKn8lo2MLVmcwyl/rYdc+iNsz+hUt6u5K4/1h7rf3F5ScPuqXKjKi
         jA6g==
X-Gm-Message-State: AOJu0YxKhM3c9/x4Md3xPSy0UWQoFEFbb2QBVIYcvHDbXcZmdteQ8guV
	wT4H9Kxs2/zSdv4qYixWsKH7p7xx1ZJ0xV+UY4zTL40epwjIfxzZEjumSCR/Po3oBEnGU0gyVih
	8HFcnZHXyzeDVCry/tjZsKraOGU7QMBD/S4oIjqs=
X-Gm-Gg: ASbGncsf/3RUgS1crVzBAp3ibBnzymXbx81FF7JX8wRx6UVNOfW2+9qCipeZkn78Obq
	9if4BCvhXy8k0KgvB3TlAJWIuIg8S2GHvPfIhOYFUzVMHQ7cRW17UpfqHYj5dQoAcZvFqqh+TPa
	Er0JJhuTlHN3QlsnWIzi+ISl7ZpNGmfc7c4nMU8x/MQiCzWw34+h4KcwHwKcoKufI9zDPmXzd+w
	kAc4LDcMxzDqiAaVTY1WXtmyXUkXyNR3fTSgiobBPoEzDUf+8bdQLdmmsLPsKzufO0iRQ==
X-Google-Smtp-Source: AGHT+IELR0Y8MMC2IUY4VhJkvLWnV/PwywUiJ5X5L6wH3I6vLbKEaD3LENPCPlOKpe35gSnMK7AKTvy6xnB8ca8uJ8A=
X-Received: by 2002:a05:620a:28cc:b0:8b2:e924:4db7 with SMTP id
 af79cd13be357-8b33d468f92mr51138585a.40.1763688269620; Thu, 20 Nov 2025
 17:24:29 -0800 (PST)
MIME-Version: 1.0
References: <20251021042022.47919-1-21cnbao@gmail.com>
In-Reply-To: <20251021042022.47919-1-21cnbao@gmail.com>
From: Barry Song <21cnbao@gmail.com>
Date: Fri, 21 Nov 2025 09:24:18 +0800
X-Gm-Features: AWmQ_bm-P1ruFcb-9PJ4wRhOHg5o1AnRHk24v2ra0lTOp-J1klyFcrWEtn5PclI
Message-ID: <CAGsJ_4zPrgkb37VCfY+C8Dn6dS4LmSMrHnfU7Oy4bR19yhxbAA@mail.gmail.com>
To: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, sumit.semwal@linaro.org
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IGXD3353G4HHWZKAH6ZPN3NBUEJYQCTX
X-Message-ID-Hash: IGXD3353G4HHWZKAH6ZPN3NBUEJYQCTX
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:10 +0000
CC: Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, tjmercier@google.com, v-songbaohua@oppo.com, zhengtangquan@oppo.com, marcin.slusarz@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: system_heap: use larger contiguous mappings instead of per-page mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IGXD3353G4HHWZKAH6ZPN3NBUEJYQCTX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3518];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.775];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: AE66E410B11
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sumit,

>
> Using the micro-benchmark below, we see that mmap becomes
> 3.5X faster:


Marcin pointed out to me off-tree that it is actually 35x faster,
not 3.5x faster. Sorry for my poor math. I assume you can fix this
when merging it?

>
> W/ patch:
>
> ~ # ./a.out
> mmap 512MB took 200266.000 us, verify OK
> ~ # ./a.out
> mmap 512MB took 198151.000 us, verify OK
> ~ # ./a.out
> mmap 512MB took 197069.000 us, verify OK
> ~ # ./a.out
> mmap 512MB took 196781.000 us, verify OK
> ~ # ./a.out
> mmap 512MB took 198102.000 us, verify OK
> ~ # ./a.out
> mmap 512MB took 195552.000 us, verify OK
>
> W/o patch:
>
> ~ # ./a.out
> mmap 512MB took 6987470.000 us, verify OK
> ~ # ./a.out
> mmap 512MB took 6970739.000 us, verify OK
> ~ # ./a.out
> mmap 512MB took 6984383.000 us, verify OK
> ~ # ./a.out
> mmap 512MB took 6971311.000 us, verify OK
> ~ # ./a.out
> mmap 512MB took 6991680.000 us, verify OK


Thanks
Barry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
