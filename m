Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNsyOA8A4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B972E410C23
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79BC840A1A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:28:14 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id D88383F719
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 13:38:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=cG4sEwFt;
	spf=pass (lists.linaro.org: domain of anuj1072538@gmail.com designates 209.85.208.46 as permitted sender) smtp.mailfrom=anuj1072538@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-640e9f5951aso5243990a12.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 05:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763991534; x=1764596334; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fGnf1zvNYnk55vDoYwHQmt5WFO2pnbA0Jle9HXGkL5k=;
        b=cG4sEwFtz4CyJW1D6OD/Ny7OYLzZCOOus0QwcwM+/09Jvz3P/m2sahD6SrTpryGy86
         hTXw2u1FfGiAhvRAKQMBg/GrMUsfTr4IELFxGXpalqc81e7dzvU5GVa+dzZmmoItHP66
         h85gfVi6qX9kF1b0jXdFXn+KX6PBYYq6OUzLIiTLnrd0T1iR0SRyTaIOA9YHXUKDqRjo
         TAixcYE+Pck32qA6ZMuk4tKUonCfljBSJqjYaSGuNQqwapBvRugi9j7FmD47VU44pZ4Y
         1d+LIXbQilORClZ9TKC9Pqjo/TIjC/is22sjL6zknZwlaVeL3ut5/GhDqfWkLjxN0jN9
         xvbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763991534; x=1764596334;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fGnf1zvNYnk55vDoYwHQmt5WFO2pnbA0Jle9HXGkL5k=;
        b=EHgbIq0JQcmTu6fkvV34QoHgEwoy5QZ1rnTfB0Kei6Y34IlcnOAd1tvqZ+QJFGWxdi
         tIGAY92BTJNf2KB04UId7+T2J+po6DCk8+yZTqmulgMR3Rd983Fbjiu8GkuX5sfJ9L3M
         xHHiVb/984ReYeN23itS94Hi5n6DAQMhZL2Z//VT9SrLbfEOAg+Nxl1ywibY/XG1PbuF
         9/Cbqhl8hrJ08fuOqEMw2cJ4rEwLuD8jZcLuG49h3XMZzjqoZmT25Iv2M5OeGjIj6LtX
         8U4+wkSNSdETY5xKudcoMHumc3JcY+kxnJSAxpxMmY4C6xM66v4yCWMWn6ECXcTmD0Mh
         LbFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW23FHGNO0/QSvPVcdmYwulSJlPP+t9/QGLHZXFAmUsNSZKazSYiDN6bNDYJKOG8VUDf8bNBQ51u+4o3Vwf@lists.linaro.org
X-Gm-Message-State: AOJu0YyCg+x1pWAwr15HpZCwqO6ZPUGRDePt4bLJNu9zKvf73eRl8dt9
	qB/WkJrpvr3k5VV2oa6JBcEMH05YEr/Uv8NOwoxFD7QgfsPDF5JAVMOqqVuMjGx3tTCP9SIYMnN
	hD6ohyOYKmF4D/5ZqS4P3bQWzC7XcDg==
X-Gm-Gg: ASbGncuVFp8dAju08PSddZ1nXGrGQSTdGNbsfZubAkHMh0I+17485/LBuRXDX43EgBP
	U4PCbkJ/xZeEDi3ZwNpziklia0ogRjbbpxRYSCstBOxsQOK39CmmsZv1ATK4Vsl/M5SyLpYhF7L
	1MFpH3yk7QnU0sIa0ZzkCrQZUSO3q3CPNhTSa/oFaUxset1LIUrjQFZ8EWIQ0PIs8jE68vqW1Ke
	JKpxIdsbSSsd3sjm9nFKlI3gIsukEFbZBPFKdF9IpSsRTtuUgj+Pokbl1ajjo3qVC6CYi/R6ipo
	8klmX93Al0IZH8yjAf57B4BqjFhRFctEaeOLvVR+qmTh/p+3Owp8gDqzfJCDlbKzMPA=
X-Google-Smtp-Source: AGHT+IEIrrPvcFC3+rTLrgAPrW5zl0/cNdfSGGH+WdJU8CBkNncTEWdpxNp4QGdNjnbB8MXP5BRq+4un+OL6bxIbhcQ=
X-Received: by 2002:aa7:d814:0:b0:640:93ea:8ff3 with SMTP id
 4fb4d7f45d1cf-6453969fc53mr9852940a12.13.1763991533736; Mon, 24 Nov 2025
 05:38:53 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763725387.git.asml.silence@gmail.com> <51cddd97b31d80ec8842a88b9f3c9881419e8a7b.1763725387.git.asml.silence@gmail.com>
In-Reply-To: <51cddd97b31d80ec8842a88b9f3c9881419e8a7b.1763725387.git.asml.silence@gmail.com>
From: Anuj gupta <anuj1072538@gmail.com>
Date: Mon, 24 Nov 2025 19:08:16 +0530
X-Gm-Features: AWmQ_bnDcYvcgkdgCo-kXgELlQbBhcvXrCXwL82qa0EngBmCaaIoNiIBz4Az0nk
Message-ID: <CACzX3As+CR4K+Vxm2izYYTGNo1DezNcVwjehOmFjxTqaqLrDGw@mail.gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: anuj1072538@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EOHCJCTR6QKQIQIIFSTTNPM2WJC4ZBFL
X-Message-ID-Hash: EOHCJCTR6QKQIQIIFSTTNPM2WJC4ZBFL
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:52 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 05/11] block: add infra to handle dmabuf tokens
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EOHCJCTR6QKQIQIIFSTTNPM2WJC4ZBFL/>
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
	NEURAL_SPAM(0.00)[0.939];
	FROM_NEQ_ENVFROM(0.00)[anuj1072538@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: B972E410C23
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> +void blk_mq_dma_map_move_notify(struct blk_mq_dma_token *token)
> +{
> +       blk_mq_dma_map_remove(token);
> +}
this needs to be exported as it is referenced from the nvme-pci driver,
otherwise we get a build error
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
