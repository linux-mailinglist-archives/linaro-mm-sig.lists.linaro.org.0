Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aH5sFjJeBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:19:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF6E5320FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:19:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 718733F75E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:19:12 +0000 (UTC)
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	by lists.linaro.org (Postfix) with ESMTPS id 3F12A3F75A
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2026 12:25:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ONIshGPQ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 74.125.224.47 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-64d5a7926cfso5019904d50.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 May 2026 05:25:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777983935; cv=none;
        d=google.com; s=arc-20240605;
        b=OtVJGzDWW1mfTUGFJArAiVNvLjkKAyl/ez5NM4Bm2ClAJM7KgCdpT27rji5sbmol75
         js4VvE2UYH8KMV65UUevfzYnS/p0Psz2sRq6b1GkvdcP4f1io09272/Qw+d8mxqBdZOV
         Oh5OYjWHf4w1+gYXldkx6Gae09fKB4YdkabNmQrUSxDemCzcuxl5Wf2zrg5fzYsF1tDh
         EFkSnpNC2YchWKYRoAI1slalS4Th3fWVOHvav3puIYmHe3slJpZ5UYSiFX0y+NY+mD+X
         36I+mrNDGzr/n5DXt5Ll6PkhXk0uC4Tc3gC3CNcVQi/vnl4cgZ7PUtiLv/Zz2m3j270p
         gksQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=HZWYzWladWJeV9q+/l+O6PxJw3m9uSCSBP6PCqtZITI=;
        fh=hoYbAQQSU8wAU6QiFeaZTK+6v0pRBZyNf6WmKxcs6kA=;
        b=ECieGJAze1qLx5bvA58kYgxBhjNAizxkZ9Ijb3DO8zZrjc5LwK21xHY73Kr+FszSvL
         FdsWwbq1nJNsXtYvlkO0FJhvsfdvqV53beMf+rRqOhsu9AYJT6iT/JaLYLQ0Vg2OOWK9
         jOThyFvabw07WyGBgcYl3s7dTs2c0ENiUEP15WkE9yCwJ5RwUTzBzryu3Zc9tkT+p5K5
         EBZwZBFQxtcuSWic4bBoRFabqVCcUwwv354moZRPPmwSFOjmUv5QLcSdwE8W0w9PlPbU
         Xn520Ea6iY51Hcj0gpQulZoUevoakUtgClJuajF9/QKIaqkt8XsQ0QdkXFZc116OrE+j
         yBAw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777983935; x=1778588735; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HZWYzWladWJeV9q+/l+O6PxJw3m9uSCSBP6PCqtZITI=;
        b=ONIshGPQluRZv0hIsW4GIh4IzDfQiIq4cdiA2eQtZSMjTzL+RHv3t6yB4llJwKxYGC
         edkqCWDTEn1ccLORgA5bnBcAHzz/qY5FLB98I3dKavM5J/Qj4V8UDpjmHaCpoM/nweXo
         ZHt5bREX+iSL9trisW2mEIpIgiSy97hmPOOcfbmsXOuT0+Rs/BaGes+TNfw2LRGQqslb
         yzoG8Kl0U+syVtFIBhYfr1q0eKLBqRCh8YnKfNYdVkW6ZUeKDBSKGbKNg80dsTvgSYGY
         NFeDxuIZ5ixLdpXMwogIm7XcjIiZf2wkV+OrtWOcxFIhok9JAtkCGZ4RM8WWFCrYBKE8
         hdqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777983935; x=1778588735;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HZWYzWladWJeV9q+/l+O6PxJw3m9uSCSBP6PCqtZITI=;
        b=BU0ZPCcyr19wk43PlEnWD6K7cJ3c3IKjzUz1FOSQn0/miiXtdXR/kZ2rRVhK9y2Y0u
         U2QiRbO9dERKz5odXISRbGjsfAC06sMy3/9YvLhOiGADs3mhqIpvS6VrMM5IXnekLtlL
         +EyoMNI/8ThfuJFk0LFswQNHy0R7eTooDnSjpuqTahT2SHu73yrppOAZ+8nqMXOycuV/
         jYRlSZleHpmIFjfuSkM1OJiEqLvB+3J99ANP0CJ9n8cy/VmJ8zmLK2nBJeokZR2hSwWb
         n8Up4Q8331JIuh+vNU+oSy4POUOCw/51M6Zm81Z0mHz0/jbu/6GXiNx/Fwkz4kziiLF2
         He+A==
X-Forwarded-Encrypted: i=1; AFNElJ8UvSz3pCcWuLr8JsHdRSA+tDMqg2wSgbMRuImZIZukdPrhd8/wwyjrQXSmV5bmi9TN22X7yr+ahmiBAz0S@lists.linaro.org
X-Gm-Message-State: AOJu0YwG9FBC+svHufBYUl/S0H7M+6PXaoTeEAKpzGQkTIfSwnFITHDA
	wzxVvR+vgsx5kN6YgumTmxQ9QVSEJwhgZK4gyL2VSJD/pP2MUWQjoV0dDQQkoqEoUf61d5CGUt1
	GJOP7pC8SXJF/M6Y0pJI6JW49AohmHxg=
X-Gm-Gg: AeBDiet9ypeyEtaBwWN+EnQT+jpUyXUnXRFr7pVRlAWf//4IWIZv9WI4ntol0kkc90O
	HH9+XrlAvN3AN/7UsIjGkA0D/dmLZuOYYOonOSSMOMBn0Rs3+E2NQG/hYGd04a0+loSACMttxcF
	4jtcWGOZeAPslosENNQRCK1JDWYC+bAXJF0FLTyKCrhfi2FOiwI7lR8yVrOY/43+m8ZZ+7ZUfKE
	A1NjRAuDgx4BSrA5PrCzY7RPlfmi9MSFMqWrIXOqEyWtHt5mOqBMqOo2tjXwrurXcHyuyBEDTUS
	/3t3kGM6fPXVpjomC5Sb/Jm45RbdkhfDYVjOrqG/h12FhBkbOCfEPAakF0g=
X-Received: by 2002:a05:690e:bcc:b0:651:c642:92aa with SMTP id
 956f58d0204a3-65c3d96c23cmr13772518d50.4.1777983934692; Tue, 05 May 2026
 05:25:34 -0700 (PDT)
MIME-Version: 1.0
From: Julian Orth <ju.orth@gmail.com>
Date: Tue, 5 May 2026 14:25:23 +0200
X-Gm-Features: AVHnY4LL44QJqBkbe9sCcXJw21A8-75K1LYnugX0XOneV6VVtcfwiV6fhBeQKiE
Message-ID: <CAHijbEXhuVRgkkPA2dAC=njGBU7vpAbxAbsSmxvvPznO-ckVRA@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Spamd-Bar: ----
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MCW65GPEMZQUZB53MBTBPXNHWS6QZZRP
X-Message-ID-Hash: MCW65GPEMZQUZB53MBTBPXNHWS6QZZRP
X-Mailman-Approved-At: Wed, 13 May 2026 11:19:03 +0000
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, corbet@lwn.net, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Regression due to /sys/kernel/dmabuf/buffers removal
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MCW65GPEMZQUZB53MBTBPXNHWS6QZZRP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: ECF6E5320FD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[190];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.534];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juorth@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

In ab4c3dcf9a71582503b4fb25aeab884c696cab25 ("dma-buf: Remove DMA-BUF
sysfs stats") the /sys/kernel/dmabuf/buffer directory was removed.

I've been using this interface, specifically the exporter_name file,
to detect dmabufs created via udmabuf. Such dmabufs show "udmabuf" in
exporter_name. I've been doing this for two reasons: 1) to detect that
mmap on such buffers will be fast and 2) to detect that GPU access to
such buffers will be slow.

With the removal of that file, that detection mechanism no longer works.

I'm not particularly fond of that mechanism but it was the only one
providing that functionality that I could find at the time. If there
is another one, ideally an ioctl on the dmabuf, please let me know.

Shipping an entire BPF compiler in my application, which the original
patch suggests as the replacement, is not an option when the removed
alternative was simply reading a file.

Thanks, Julian
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
