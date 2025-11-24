Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yA4KKQQA4WlIoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 54798410C05
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EE274095F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:28:03 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by lists.linaro.org (Postfix) with ESMTPS id CB27A3F752
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 13:36:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=RayrXQQq;
	spf=pass (lists.linaro.org: domain of anuj1072538@gmail.com designates 209.85.208.48 as permitted sender) smtp.mailfrom=anuj1072538@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-640a0812658so6950390a12.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 05:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763991393; x=1764596193; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E4Kvahk4sfkEzDMtaEQ+7t96X+5OMROz94rsckBU8Tk=;
        b=RayrXQQqIDmjutKkZp1uVBEyHaUEcEPWR4EJkrPQeU8aemyGKeMUSPe+i1xIIF6OKb
         sz9Ov5pRlg7j6m1i4RZFuqK+OHL0c6autGgYpJkMIKJYMKj3/nFLX6jBgARw0Y9EifTX
         6bbEM/hbOOR5boEDRXQM+b1Rw+DGHYzkXL7+YB9wpVFPGcTiaYFcUglRWzociAI4iK3o
         pcl2I9KH0VGvw1AFhu6U6qiAWyRPR29NWR9RxUpCFTMRRkADQAA5uEm94cvaPHadjjxB
         bnpy2agON0tCL2GuBcsVBh7Dkw4a920aNJ/VjjZllwD9pDm2m+zCRZxzr6FjhKzZYxCu
         74yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763991393; x=1764596193;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4Kvahk4sfkEzDMtaEQ+7t96X+5OMROz94rsckBU8Tk=;
        b=BtKlleIkgk1MqO8SamIyBHWKHzKB2Jde9AQ2SIoXvp4KUAdRJF8NxwMXrRYn8zRnId
         CFFJwxHRl0aUVx/6L5zfuAgPnAR8Nu+f+3Q1HY5jZUsN1GrdvIRPtH5ezV6aU/JI3aoP
         3HKa3wDo5ZZszYlI8DrjjqG2bNBYQsbZArbI35SJdxf+yn3qOVJcdwbmZQetFOEY1Yy0
         PqUdc/hzsDPi6Ltw3PbxCZ7zxrCHdsMsF80eWluMrliOjjqXmpoV5S7GyR5m3sNSPabo
         4MX8hhLeEN7p/BGI4O3rvm+MabSkvJTtTD6FIzBaiPZIIMFGTeMqs3lMlYOMTtH3OCGA
         fR7w==
X-Forwarded-Encrypted: i=1; AJvYcCWNJFzj8mXT5SLmOlKIW4/H2ISUlVS7OImubZIH6hZfDKijwjkfGI7E0FppdOM1hZHgKATzBAkfPqEW+epn@lists.linaro.org
X-Gm-Message-State: AOJu0YwOCqjZwhqaO5ZabPcBXLMHFWDWIWzwEDlzrvqjakWMFkugF/xY
	wIaNb4kbq5YHB75NQT90FrGn7PL3PMxemNYdzB0aKiVJqVrGgf5JBmJrvLGhDJVep38JKVfsHQA
	SwJl1EkYJWNDOztmnXzUjnbp7e6DfHw==
X-Gm-Gg: ASbGnctEsyrpJhAqdUtoOoLi5FoHLubXVGsZsmUJ90YHAuvq90NCShR67cf0gaYJi7w
	RFserWmZsI7KHL4c4Cj3v67ghnY+6HGi7WoPoGBIgFx8+HmS3+/bCo6qotE2jqyqMjvwQiqi20c
	Sk5/UZEZnDhr5gO9y5S9/a7s7qkNn1l7TyONvMRH0jg6FdTxdajJv4+mZfKDehK0Rc+OSUCvWr3
	B8PNHUFX1l4Lmky0UdsmBIFmKiAAkGcUwPp1gJFriO66SNJ9u7aL4jP1M/TmvIbj7sy6KASaRwV
	Dn1tqgvoIucFu5LuNU33RuQXY+6KwrsLQ1r5ecL2AGfXwnCYq1M9U20+uHC+tu/aEDo=
X-Google-Smtp-Source: AGHT+IEnG4Z6JyAnZPsc9zRPIurpTL3mzwNg7U8txyPxgdZYEAlachoenhHzENGex2kidp1+A4wUbZCJxBRlVZeptSQ=
X-Received: by 2002:a05:6402:34c7:b0:640:edb3:90b5 with SMTP id
 4fb4d7f45d1cf-645543493b7mr10042269a12.7.1763991392543; Mon, 24 Nov 2025
 05:36:32 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763725387.git.asml.silence@gmail.com>
In-Reply-To: <cover.1763725387.git.asml.silence@gmail.com>
From: Anuj gupta <anuj1072538@gmail.com>
Date: Mon, 24 Nov 2025 19:05:54 +0530
X-Gm-Features: AWmQ_bkynwx2lMdwns4GsIfVtYmI6CqY40r8-Afst6-_o29b3r6t6sfqC-dnOGU
Message-ID: <CACzX3Au7PW2zFFLmtNgW10wq+Kp-bp66GXUVCUCfS4VvK3tDYw@mail.gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: anuj1072538@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IDO2BYTBEAEWA3ATA5PY6X7N6X742UJE
X-Message-ID-Hash: IDO2BYTBEAEWA3ATA5PY6X7N6X742UJE
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:51 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 00/11] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IDO2BYTBEAEWA3ATA5PY6X7N6X742UJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3433];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.946];
	FROM_NEQ_ENVFROM(0.00)[anuj1072538@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 54798410C05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series significantly reduces the IOMMU/DMA overhead for I/O,
particularly when the IOMMU is configured in STRICT or LAZY mode. I
modified t/io_uring in fio to exercise this path and tested with an
Intel Optane device. On my setup, I see the following improvement:

- STRICT: before = 570 KIOPS, after = 5.01 MIOPS
- LAZY: before = 1.93 MIOPS, after = 5.01 MIOPS
- PASSTHROUGH: before = 5.01 MIOPS, after = 5.01 MIOPS

The STRICT/LAZY numbers clearly show the benefit of avoiding per-I/O
dma_map/dma_unmap and reusing the pre-mapped DMA addresses.
--
Anuj Gupta
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
