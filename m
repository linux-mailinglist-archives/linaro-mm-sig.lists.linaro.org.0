Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NbKLTQM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:20:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D63641197F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:20:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3916404E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:20:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 0A6F1401B1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 20:06:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=eSS9xI9c;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768593995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RvRBiNn3PA4K2OZWbkrvyWY2CSIU7KWGY6L6xdZjPVQ=;
	b=eSS9xI9cvTfGtbsMoCAMaUkNxVTNtzY09ZqTXSRG7s2pRWgaARMVRgUiG1YQFwaBqQCuSf
	dkSno2kG+eut38xDHuje641vY6Kcndk2Cu0PQOmiqEabgorFguRRpAkgmYtZhakbDKOE/H
	Iw4lpsmX7aZhveCIAYOvvmEiqfLHAp0=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-508-qc-KicejN_ijK6k38CviSg-1; Fri, 16 Jan 2026 15:06:34 -0500
X-MC-Unique: qc-KicejN_ijK6k38CviSg-1
X-Mimecast-MFC-AGG-ID: qc-KicejN_ijK6k38CviSg_1768593993
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50145d24ffcso67773341cf.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 12:06:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768593993; x=1769198793;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RvRBiNn3PA4K2OZWbkrvyWY2CSIU7KWGY6L6xdZjPVQ=;
        b=NA2bh/ranTtXMW0q/p9e8fqI1S/ZzlY3k5RMtsKArSdpJDkdY6xtpoNzxXg6Wm5bUk
         T75LP8I3Re5ZtsEHWVx98nAtcweK0EU6jx9rkJ3XiGDdqGIXBKM6qR2VAavC+kteYURL
         ISdUHOTW4nk57QyN7n+ODRYmE8ScmcdDD3sztOtFxSgIZdfQ0mXf4ccvCuR8DwtDSjhB
         Cs9T2ptfYubEhddEb1dP6AKH84+qwxnHCep7wh5EQvCkMH42ErCSY9BpueivUmFNFidR
         dIa8Skt0EOcap8w7n5FRFVeiEMRb/cUSHGdt19hBbXo5H1GlwQrjXT6jtYOspPbPbFxn
         4rsw==
X-Forwarded-Encrypted: i=1; AJvYcCUt4YBz4DhuCUWljCTzTZGUNDamz8a57nxDWoLjQcsD+2VPeevXCzGXZB8dt7MA83+JqByusIZI8CX27UQS@lists.linaro.org
X-Gm-Message-State: AOJu0YxMa6KL3b+a2Lien6MRVmayfsjCM8t3lox6/w0pdHROsYV5rYk9
	G83DCt/N5yHllZB/WO7Pzc/D/qC+tHQ1JbyGWByJLEnPm1UzQCdjMOntC0urjXoc8bRiu1VbTct
	cAwkNghLLKiaeMxGlg8NTpS1GeOE7ucWT48injtYs7peigRVKxPh78RN8Sz+KachNdYy8
X-Gm-Gg: AY/fxX6+RLvNdOFusgdlc3MA9T/SdJKU3VUbuqatWyRbmmBt9gy7xJBkMg4m68tNQqA
	7BSRo+2vEdXCKSiOO1OOw5wKWwYzijpUj8Q57ix/4APTezIcAJ0wzPdHr4GgYXnbMLwIC0ZoGwb
	DYti8s3/seVlj25Q4YHa/aY10KPI7VGtxBlcDSlTInOe6XSUdITSg6ExQVzi2hPSEKJuuBETIdk
	NvCFHqugJP/pNpDF83TPyMGfDePfFOenrPmKssmHEmKLBGL2FckrbdnRJlbkfSBeinfy8ep2UOr
	uILypXW69U/fts++e2TbpvfiwCjVP5D+0xOjnRDBf4KrQAoEwGH9rSOSdONIsySbPKLklF9eoEF
	nGzrTlPWEEsWfnHbB9oDGDRbOAUv7aqNZZ2DZwOqs6A0rddjGUjk=
X-Received: by 2002:a05:622a:283:b0:501:3aed:fa5f with SMTP id d75a77b69052e-5019f84ac6amr105058021cf.12.1768593993430;
        Fri, 16 Jan 2026 12:06:33 -0800 (PST)
X-Received: by 2002:a05:622a:283:b0:501:3aed:fa5f with SMTP id d75a77b69052e-5019f84ac6amr105057461cf.12.1768593992901;
        Fri, 16 Jan 2026 12:06:32 -0800 (PST)
Received: from localhost (pool-100-17-20-16.bstnma.fios.verizon.net. [100.17.20.16])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1d6dfaesm32711711cf.2.2026.01.16.12.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 12:06:32 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Fri, 16 Jan 2026 15:05:37 -0500
Message-Id: <20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WOsQ6CMBRFf4V09pH21RZ08j+MQ20ftEOBtEA0h
 n8XiCYujme4554Xy5QCZXYuXizRHHLouxXkoWDWm64lCG5lhhw1FxzBRXOfGvBkBsjPPFKESNG
 2YGttZC2c1tKwdT4kasJjV19vKzepjzD6ROYrVAKFECcpuC4rpY61AgTabidHl0TOm7G0fdxsP
 uSxT8+9c8bN+UkS8n/SjMCBalUhWosNHn+lt2VZ3idtdsb/AAAA
X-Change-ID: 20260102-dmabuf-heap-system-memcg-c86a381d663a
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Maxime Ripard <mripard@redhat.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: PenFcdY_VINfRJWjiEVDE3SW8cDeFLb_6ev2gpdQdQ8_1768593993
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NAM57UHOS77G5XX2FEKFW2LQWQGS2WDP
X-Message-ID-Hash: NAM57UHOS77G5XX2FEKFW2LQWQGS2WDP
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:08 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Eric Chanudet <echanude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/2] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NAM57UHOS77G5XX2FEKFW2LQWQGS2WDP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[2156];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.847];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 8D63641197F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Capture dmabuf system heap allocations in memcg following prior
conversations[1][2]. Disable this behavior by default unless configured
by "dma_heap.mem_accounting" module parameter.

[1] https://lore.kernel.org/dri-devel/Z-5GZ3kJDbhgVBPG@phenom.ffwll.local/
[2] https://lore.kernel.org/all/CABdmKX2_UOENujpW0dXe0Z0x+4V3onfGDmHf1DMOXfDha6ddOA@mail.gmail.com/

Changes in v3:
- Declare mem_accounting in include/linux/dma-heap.h, since it's
  intended for heap implementations. Make it __read_mostly while at it.
- Link to v2: https://lore.kernel.org/r/20260113-dmabuf-heap-system-memcg-v2-0-e85722cc2f24@redhat.com

Changes in v2:
- Add a module parameter to enable dma-buf cgroup accounting, disabled
  by default.
- Split system_heap logic in its own commit.
- Link to v1: https://lore.kernel.org/lkml/20251211193106.755485-2-echanude@redhat.com/

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
Eric Chanudet (2):
      dma-buf: heaps: add parameter to account allocations using cgroup
      dma-buf: system_heap: account for system heap allocation in memcg

 drivers/dma-buf/dma-heap.c          | 5 +++++
 drivers/dma-buf/heaps/system_heap.c | 7 +++++--
 include/linux/dma-heap.h            | 2 ++
 3 files changed, 12 insertions(+), 2 deletions(-)
---
base-commit: 983d014aafb14ee5e4915465bf8948e8f3a723b5
change-id: 20260102-dmabuf-heap-system-memcg-c86a381d663a

Best regards,
-- 
Eric Chanudet <echanude@redhat.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
