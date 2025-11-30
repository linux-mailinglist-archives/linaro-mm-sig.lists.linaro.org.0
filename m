Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ff2KLUB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 82601410F36
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99AF4445AE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:35:16 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by lists.linaro.org (Postfix) with ESMTPS id 57F013F757
	for <linaro-mm-sig@lists.linaro.org>; Sun, 30 Nov 2025 10:54:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=iqHwHsuu;
	spf=pass (lists.linaro.org: domain of linus.walleij@linaro.org designates 209.85.167.42 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5942bac322dso3364569e87.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 30 Nov 2025 02:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764500089; x=1765104889; darn=lists.linaro.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dOSBjcoOnlyTQvfFFh+eu9Zfh6ZQd1i1HR+OFbVxZQc=;
        b=iqHwHsuun9XFHP9cbqpVU4lbPntnB3aPP/me8eo6ZL3lPRcE5MhI+/WcVSXd4QIoht
         Bt2IqWym0pDKWw6Y4SaWG8GF2erbwxitEYxM05UHstcO3szhQdkAoYKRZLxOUwTrQgPI
         kBXFKhIKZPU2jsx950s2sn/Aty9/9I4z/qiro1TBRb/dXOyjHcYuih9ZInIrJbRopH9b
         NP9JHtQ1N5TJwK0/2bmpUSqTAiFczyEyomBGZph5/fiGv3kiFltGMYHgOAajc4vivD/0
         H46aR2GGXhv41A8LZrtN+R58lJrIOswhwgxM7ahZZ8kYyFRGJAQfs+TZoiQ9tWiAl3sS
         zqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764500089; x=1765104889;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dOSBjcoOnlyTQvfFFh+eu9Zfh6ZQd1i1HR+OFbVxZQc=;
        b=JrZmr1uoSuzn8VhiO1VxAlHtVzk2yzXVNrtA3EzcTxwj0zU2l3Ts5GBCdI/EKxkoH5
         4hYpjhIM5TY65Sb9cP43LJljiMyi58i3/SSPwRKJYIiZS6FzKp2zGspGKuS8pbc38nrL
         gLZglXkV9ZpTvCZg4g9xyXdGQ5Yj3FqM80xzgTXztnziuXjIYM/QgJLXbgz1R+FWUfu0
         obpXG3UQ4MS1PdLEe7Lx8g4MU/kyBcEdMuHULT1/qAAY87aHX33gQ2o9y7qYccAAEHJf
         CaUUHsZg0roh9iz4m/BQTUkNnsWB9D69zhho6qWK2ZQ7JKkm+BKmvf25xFiQiFBEcH8/
         J7HQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQE/VLHftDnDUyX+CGpKgLi6w4OS3RCrit1tMDrI7PqRQ6XlTpEBFBdAhTggqVB7ViBeD+/ZCbbzep3Xbn@lists.linaro.org
X-Gm-Message-State: AOJu0YzlDziWTXWT/SV2Fk8co8nVEIieMzgQDsvXwd6gVtqntYRwaBLk
	o7/EWzHpXr/V9Syng1fhJo4VxhAoPORVSQKzxy5qZZ7UEgl9Zkk+ZUkB1LInhU+EBceHyw==
X-Gm-Gg: ASbGncukvJcZf3r2/SwMNgDIERJ5l4+jDZKHP66GohI4VKXoiieyNfjIa6OhBJ/vhC4
	qVVSt8CwiI4fVcUvm+tAZUotApE5XoeYIeuFRUCmV+pLIDudbIR+1Uka5ixHr3GPbxMj+sGIOGI
	B5JqnH14mQ4k02I93NxqBsiB1xnmOnZFnsi2xHLDu2FtGb1bpeWh1hvHpFQ/atwpx+sEm0StZvO
	vO9wG3z9xkwDGiZJlLqeJ8XaUPJZA9rmpHsKB60fEONAh8WTK1DDPAdbmq31MtPd0/Mxjkz7KlM
	7th+DKn+kUQ3ipiIyCV9Hq14Zy53yFB33JUrEE+LZHZN6ydx5nGodNzo9sATesyCtQ+rTnGexOl
	/BqHK/QJOY6U+9Ouom/g8G3+IwHNqWH//JTUfRM4wLsyvAo73ojFxJ1KzNLDpdgXXxN9oo/bxVp
	UuWMeQGQUQZ0LnDL0pbgfl9g==
X-Google-Smtp-Source: AGHT+IFq1IN29e+3yywBpe9PVvbAinfdw0+qXi1MtIWv/v8nCdlDFCMMUU2tdkAh+KiyaMZkqBd+jw==
X-Received: by 2002:a05:6512:3096:b0:594:546c:431f with SMTP id 2adb3069b0e04-596a3ee5548mr11152417e87.49.1764500088979;
        Sun, 30 Nov 2025 02:54:48 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bfa48cc8sm2710565e87.83.2025.11.30.02.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 02:54:48 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 30 Nov 2025 11:54:48 +0100
MIME-Version: 1.0
Message-Id: <20251130-dma-buf-heap-clear-page-v1-1-a8dcea2a88ee@linaro.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MQQqDMBAAvyJ7dsFsU7F+RXrYxE2zYDUkWAri3
 w0eB2bmgCJZpcDYHJDlp0W3tYJpG/CR14+gzpWBOnoaQy+cv4xuDxiFE/pFOGPiqpEdnKNHL9Z
 bqHXKEvR/n6f3eV4/1KeyaQAAAA==
X-Change-ID: 20251129-dma-buf-heap-clear-page-248bb236e4c4
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Spamd-Bar: ---
X-MailFrom: linus.walleij@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: D3RIGYNZMT7FITCNY5FZOXY4HBWN3YEE
X-Message-ID-Hash: D3RIGYNZMT7FITCNY5FZOXY4HBWN3YEE
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:27 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Clear CMA pages with clear_page()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D3RIGYNZMT7FITCNY5FZOXY4HBWN3YEE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.01 / 15.00];
	DATE_IN_PAST(1.00)[3292];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_SPAM(0.00)[0.597];
	FROM_NEQ_ENVFROM(0.00)[linus.walleij@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:mid,linaro.org:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 82601410F36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

clear_page() translates into memset(*p, 0, PAGE_SIZE) on some
architectures, but on the major architectures it will call
an optimized assembly snippet so use this instead of open
coding a memset().

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/dma-buf/heaps/cma_heap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 0df007111975..9eaff80050f2 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -315,7 +315,7 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 		while (nr_clear_pages > 0) {
 			void *vaddr = kmap_local_page(page);
 
-			memset(vaddr, 0, PAGE_SIZE);
+			clear_page(vaddr);
 			kunmap_local(vaddr);
 			/*
 			 * Avoid wasting time zeroing memory if the process

---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251129-dma-buf-heap-clear-page-248bb236e4c4

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
