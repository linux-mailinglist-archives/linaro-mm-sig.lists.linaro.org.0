Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Ced9NJwI4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:04:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E6041151B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:04:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D463405D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:04:43 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	by lists.linaro.org (Postfix) with ESMTPS id A7E643F992
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 19:37:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel-dk.20230601.gappssmtp.com header.s=20230601 header.b=zHCnlNeY;
	spf=pass (lists.linaro.org: domain of axboe@kernel.dk designates 209.85.216.54 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
	dmarc=none
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-343ea89896eso1593194a91.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 11:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1765568276; x=1766173076; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=StTVbGf1mPsXgZZ3d28QJjsQQzKmymRGuXpSNQalBC0=;
        b=zHCnlNeYKTfAcouL/jwJYdpgMJZIrOB3i3GnyU9zDa2DZbBrwqJpladpx41lVYDNfZ
         B/51VoZnxNcr/uyrXgrZF4Qudfshcxq+FLRsdcaRT+phqkLs6NGerCVI7SlIHcDcQicf
         xknHb6tlDYtlYr46cUgf4QdXezD52IaeF80Qi4oXcNReVCoJ7GyxvTeC4lwvwzGg7pbe
         f3HpzUwGiCAqmk5CclIbeXq07yRcUNg5JB7E3sNG8HCYvsmMyelfEDuLUpJ86tUBfVyM
         pG8TbxQEzUONPQGnIDJaLMyXvIfFIwbMQrDYugh7gPhPO7k+iVJ20ZqOemATXdBAPXjB
         mJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765568276; x=1766173076;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=StTVbGf1mPsXgZZ3d28QJjsQQzKmymRGuXpSNQalBC0=;
        b=jC6Smw3sFrDN2Eh6XUrBN7RvNlG4oBGTNOsBaVD2UzwahSZ47xsEgNIxdCkP8mf4H2
         4LFNGg2EcY3+imxdVeZXijSwDWkWDygYShLZPVflZ4ELWJq2/dI/LUpEZtPsebZaP/DV
         kwj1J7exrgtHaLCuCCn/akjYwu+dQyExB+qcy/oGYUI9lWIvx3NUtOzhlk5JboPdsfs4
         E1siG3bKs1y0OLr6a+LgGqcUqdUeAciq8Ml4/onziBhvH0AoErH3SHRYFkShjOhRrpTu
         JdkXiTRiMzMiOD/PUfIXvfTysQBAQ/ZCe8qCeldUjRgiVMiY3KhNczl2DOrxNRcXr+ca
         GW1g==
X-Forwarded-Encrypted: i=1; AJvYcCW2OsMEk1JsO7qEdDWP5fub+MzvmSvEm0NwhmpWRhVO53H9baVTokll+bQNDlK0MvoNDWg/GPOwSZqOyfiO@lists.linaro.org
X-Gm-Message-State: AOJu0YyQzehVu165ADyIwgC4AMLVYKDZ9BG8bTSd6Iksgq6AdO5Nbw1X
	CMZVbRXaNgkqxkGGsX1O0wz19CYDBRT3OxBhNQRvvIqsVuhraBi4QPhwXEdceTzUfDA=
X-Gm-Gg: AY/fxX68OQcCsdpUjqxHlhmsPoGVuUcUckrpqdASaKLKl7LlGRcPWvC1gv/LB34oCjy
	pyMS1+qkRllkUI6PQgKMriNZUH9NYKDGuoNnqztAg7tVeRRRqg27W579v5CMbikbsLYYzZVT5qV
	brjnxMqCH6qpA8acKDJyDlNIpVt+kQDsBU4A+EyEYeXVQUMoIl7ybqky3zElVLKDjFCfeI3rOXw
	zCF+pPoyKMToM58y8Wq73Z7Iu7AUUSFzPo4phMm7uIPQkjN0QemX+xEHEtDTBSXCmORViBLP3IU
	8azhZakjSKK+4JCYW78CCkb58J/hAYDbh8WihmfHLvQSY0jZaMmiExMNgvCPLEKkm8xYNl3ZR8t
	bK0goI3XghaBdqQgedocqgWcnWnCELKGFVtXc+mbCQux13MA0UJkAUHI5RUk70Ivi14b88E4AuZ
	owejPKbhhMoo69kKEuLSdIl1qBlRZAY2L5o1ijH6pgwX6KZHPBlydCFZSL
X-Google-Smtp-Source: AGHT+IGRg2Nd8ny+lEY1UTB7dhC5oApF/NmRzRo0kswvAor/xhBJns1Qxh+lICHO2/Y0nRHD/a4u7Q==
X-Received: by 2002:a05:7022:e1c:b0:11e:354:32cb with SMTP id a92af1059eb24-11f34c39abemr3023356c88.49.1765568275584;
        Fri, 12 Dec 2025 11:37:55 -0800 (PST)
Received: from [127.0.0.1] (221x255x142x61.ap221.ftth.ucom.ne.jp. [221.255.142.61])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2b4867sm20294552c88.6.2025.12.12.11.37.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 11:37:54 -0800 (PST)
From: Jens Axboe <axboe@kernel.dk>
To: linux-block@vger.kernel.org, io-uring@vger.kernel.org,
 Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <cover.1763725387.git.asml.silence@gmail.com>
References: <cover.1763725387.git.asml.silence@gmail.com>
Message-Id: <176556827123.851918.9976241171726294701.b4-ty@kernel.dk>
Date: Fri, 12 Dec 2025 12:37:51 -0700
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Spamd-Bar: --
X-MailFrom: axboe@kernel.dk
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PB2EISH7IQSHTPVDZ3C32V6NJQCAIQI6
X-Message-ID-Hash: PB2EISH7IQSHTPVDZ3C32V6NJQCAIQI6
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:40 +0000
CC: Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [RFC v2 00/11] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PB2EISH7IQSHTPVDZ3C32V6NJQCAIQI6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2996];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[kernel.dk];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.879];
	FROM_NEQ_ENVFROM(0.00)[axboe@kernel.dk,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 50E6041151B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Sun, 23 Nov 2025 22:51:20 +0000, Pavel Begunkov wrote:
> Picking up the work on supporting dmabuf in the read/write path. There
> are two main changes. First, it doesn't pass a dma addresss directly by
> rather wraps it into an opaque structure, which is extended and
> understood by the target driver.
> 
> The second big change is support for dynamic attachments, which added a
> good part of complexity (see Patch 5). I kept the main machinery in nvme
> at first, but move_notify can ask to kill the dma mapping asynchronously,
> and any new IO would need to wait during submission, thus it was moved
> to blk-mq. That also introduced an extra callback layer b/w driver and
> blk-mq.
> 
> [...]

Applied, thanks!

[03/11] block: move around bio flagging helpers
        commit: d9f514d3e6ee48c34d70d637479b4c9384832d4f

Best regards,
-- 
Jens Axboe



_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
