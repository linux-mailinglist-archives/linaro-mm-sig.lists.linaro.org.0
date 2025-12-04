Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A4958CA4217
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 16:00:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3F4340150
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 15:00:27 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id 56FB33F690
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 14:59:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=a5E3po+U;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42e2e3c3a83so549115f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Dec 2025 06:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764860395; x=1765465195; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xFWFQJyqNEArb97bML7scQOt1LXkeAlqXlQJNt06ohg=;
        b=a5E3po+UMHH1L9uUhp2C4eepatYltDhKm8XzDNvF08DXtc7VTxtW0U0wFNH4Y7jcf8
         vwumqjkGIO4YcS4Ktstq1X+RL+gakotNb16kgx/Dwc5pkvAer25VaPbpIpiVxxJLeibP
         lU9AskAmOZhMLDby011M6gRR63OZIzeYhQi94kiFU8KETFcknN719hmpTDg3YiZ4O3bd
         zNM95xSv0IfzK1Q5ruU0Oi5pbzhxKXpj3FJzoO9rme6J1MC/ZpBE7ACuieRuDtKOpuVk
         vdCN5FnBbbP3sg756lKUgUATZgHsOm5UViEfXQk8HeDq9/Q2lU8MSWYcnPLPLjGQDy3f
         iKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764860395; x=1765465195;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xFWFQJyqNEArb97bML7scQOt1LXkeAlqXlQJNt06ohg=;
        b=oFaOHI1EjL5YPYC6Cpbl0MEjd9HMCZzqcOa6XYz6j+BaNK2joOoOhixvHLb6qUfCDn
         5XcFaHrHpS7iYsrXWDNjX14qvQeizZvWpEzDIll3lY4S95sdic6quENdz+TV7kA3zMI8
         tdqnyXaOjyLgQlvjLAkF6aIj7rGwWG8Ohd3qV6VrHwvwD8KiqQGRbUayw/vWxbMjW/kq
         foGYMmiiU2JuH57WjZw8KmA9lw9DYYbdwifCg5/5uSRAIulvhnPJR1WD26Yd9X6wIRkn
         5LOkfqD6/PnYAox+l9ueGgdfreaePVF91r+eeEfyxOH9qMikR2aZB9P/7r5iPYv+gF9K
         dvLA==
X-Forwarded-Encrypted: i=1; AJvYcCVL2peB5zPFwO/Omyb5F4yJ6e+lDXGz0j3yApc2Cp0i97EK1FzhBY66ZGV+AJS/qs/fzBuS/krkJidlC6X/@lists.linaro.org
X-Gm-Message-State: AOJu0YyKaXniIDBKfZED/ZZbIM//v8NZWDk9WLHx/Nhgmf7tq3Izfpbq
	ASImjEf9AD1ndROCLyL1TCZOpSklHsZpV0AzrGEu6V3JLkZJjAjtLK8F
X-Gm-Gg: ASbGnctUj+61EbStgxWGGTKJobMwACT5vsluSliC9qe7yhWeCbtcM6VMAsfvh6mLScR
	ixq94EpmAMHkxCxI6G4/F/3g0j/woEwIMjh081NprZax2tHGD4MnyuEHNN/LfY20nF++2u45dGf
	AGVf2Ds+JtlRYfGsmaC0i1K+m282U67ZuwajmO5nlKizxyeJhgFYwDAeU3/di6AGIiRsJnWLjpH
	Up1Gl2HX+GMa1HGW6nQUr8Sc9W/HXm+oCD3rVxLwwKy309nTOyX8nFyTVD+RE8/PssEKSxkogeu
	xZ9VEVD7v1nGZtSyEGon+E93bj/EPLDUkBFwxs/Q55r6nOpuyJuiUke5QeXYLy+y/9pxwDUzqNi
	hHxTru9J94WWJdda2FzdlOKv+p5jQXK7qNiHOQA0J4H3g02lpLCvgEfcYcZccg6C33QUUbuqyqt
	fpW5TS0tcBPJh4pVDkr+tgqAXJoCprpXGipQ==
X-Google-Smtp-Source: AGHT+IG9v9h20E8VTHUoLcKatGxvnYbRKazdI61G/E6P5Z/sBf3V209yQKFoFn/ZFKs2knJoDlVqew==
X-Received: by 2002:a05:6000:2905:b0:429:b8f9:a887 with SMTP id ffacd0b85a97d-42f73171e51mr7463511f8f.6.1764860395251;
        Thu, 04 Dec 2025 06:59:55 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1591:1600:c95:ff70:a9ae:a00c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331af5sm3473291f8f.31.2025.12.04.06.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 06:59:54 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	simona.vetter@ffwll.ch
Date: Thu,  4 Dec 2025 15:59:52 +0100
Message-ID: <20251204145952.7052-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251204145952.7052-1-christian.koenig@amd.com>
References: <20251204145952.7052-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.46:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[209.85.221.46:server fail];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	URIBL_BLOCKED(0.00)[mail-wr1-f46.google.com:rdns,mail-wr1-f46.google.com:helo];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 56FB33F690
X-Spamd-Bar: ----
Message-ID-Hash: YPSRBWIXTRWJNZGZIIZK66UZSKWOP7DL
X-Message-ID-Hash: YPSRBWIXTRWJNZGZIIZK66UZSKWOP7DL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-buf: enable DMABUF_DEBUG by default on DEBUG kernels
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YPSRBWIXTRWJNZGZIIZK66UZSKWOP7DL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIG92ZXJoZWFkIG9mIGVuZm9yY2luZyB0aGUgRE1BLWJ1ZiBydWxlcyBmb3IgaW1wb3J0ZXJz
IGlzIG5vdyBzbyBsb3cNCnRoYXQgaXQgc2F2ZSB0byBlbmFibGUgaXQgYnkgZGVmYXVsdCBvbiBE
RUJVRyBrZXJuZWxzLg0KDQpUaGlzIHdpbGwgaG9wZWZ1bGx5IHJlc3VsdCBpbiBmaXhpbmcgbW9y
ZSBpc3N1ZXMgaW4gaW1wb3J0ZXJzLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvS2NvbmZp
ZyB8IDIgKy0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkN
Cg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnIGIvZHJpdmVycy9kbWEtYnVm
L0tjb25maWcNCmluZGV4IGI0NmViOGE1NTJkNy4uZmRkODIzZTQ0NmNjIDEwMDY0NA0KLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnDQpA
QCAtNTUsNyArNTUsNyBAQCBjb25maWcgRE1BQlVGX01PVkVfTk9USUZZDQogY29uZmlnIERNQUJV
Rl9ERUJVRw0KIAlib29sICJETUEtQlVGIGRlYnVnIGNoZWNrcyINCiAJZGVwZW5kcyBvbiBETUFf
U0hBUkVEX0JVRkZFUg0KLQlkZWZhdWx0IHkgaWYgRE1BX0FQSV9ERUJVRw0KKwlkZWZhdWx0IHkg
aWYgREVCVUcNCiAJaGVscA0KIAkgIFRoaXMgb3B0aW9uIGVuYWJsZXMgYWRkaXRpb25hbCBjaGVj
a3MgZm9yIERNQS1CVUYgaW1wb3J0ZXJzIGFuZA0KIAkgIGV4cG9ydGVycy4gU3BlY2lmaWNhbGx5
IGl0IHZhbGlkYXRlcyB0aGF0IGltcG9ydGVycyBkbyBub3QgcGVlayBhdCB0aGUNCi0tIA0KMi40
My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
