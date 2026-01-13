Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QO0FMaAL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5289C411894
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7023A405D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:17:35 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id F21B43F7CF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 21:33:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=B7FLaRzu;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768339997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jP7f0lQJG9KXkNw18KBRK9Mc0gzLz/Z1noHFWbbNo8Y=;
	b=B7FLaRzuNGbLR+DyBjvJR3siQVd9paML071ZRvlYMIZliEIGWL3MVJI2bbpXJ9y/bd0/oN
	PB//AH0pYlGk8+OZl/LrWVmchAHE6uHMDGQ02wgQ+DCykRvmAmFtzZq/68el1GrpxIqhnT
	7qAeIj8e5JttXJXwjEFBbmqcEpYX8pM=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-482--nvvrPY2ONeVzwI5YqdoVg-1; Tue, 13 Jan 2026 16:33:16 -0500
X-MC-Unique: -nvvrPY2ONeVzwI5YqdoVg-1
X-Mimecast-MFC-AGG-ID: -nvvrPY2ONeVzwI5YqdoVg_1768339996
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee1b7293e7so311951351cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 13:33:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768339995; x=1768944795;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jP7f0lQJG9KXkNw18KBRK9Mc0gzLz/Z1noHFWbbNo8Y=;
        b=lrpdOVANCQ0fJYZvZVIgUdxCd4kG3SVrx4sKXZCyB1aoAhcGvmKYulvLekR25YjwDn
         tQUEb/EJTJGH084APIZF/KBC2r6ZPZh7BZ/s0Vj7ZbW1tsc0bS9rxivOigaMcH1SPMLf
         bhyK64c40FBDzQldII0lv0SN/xGBcUCywAx2KGuQyX3VljpBjnwdEDxkdLlB9uwM1T4M
         1a78jPlohGaward8KfyKOULnY4bZzpBpf/lHesks0u0P2N+9E7JjpN92MvDaYz7Qqsni
         ZI5tKL8raNJFHTB9PwmargbzEf1tQs1Byfe8M+RE5AEGF8ERs1CRm/ZvVdrQ6vIafxUF
         73gw==
X-Forwarded-Encrypted: i=1; AJvYcCWs0k0rwLX4k46F1VlOLLMv5+mW6Jchb9fvCrihjy06iadkgCgakxbuIH93mvWETP7Yhz1YZ8mdmmh85T+7@lists.linaro.org
X-Gm-Message-State: AOJu0YzXPwkM+cw1Wq24l24A6sB+odlLk6DB059VpwoJbNbAI9lgzNNQ
	/D6hPoVrMkwGKeGag7KM5liGVPw79rXyS71XIAA7ejjp3sxfqfGRcDIj70UnbzEAGOZq2rdUIBP
	uw9njF+mb11hl4WAcHfkgxYDv+RB6MGqzbM8o2d7o3yyz7t/lJgwkp6efraSZtJvJ1IV406de/C
	oaP6TYXavxmdL84CSpHc5GpoBNlhPHyGOLTYTep8OEnHt150XLO0JF
X-Gm-Gg: AY/fxX7biIpbqCiSAgTknUp3vLvIQHmoOoz5X3fKxbzD8Yj06LTsfQMEkzwM7PuCLua
	dPQGnLeXYMeIx+yQ9CcSBRuZBBub0COySKrhGZNybJFKF9YwzenDOYyTJMeiqaa7iqZBNFlTBbL
	RhtuY8CMPq1/fxZMU/cSG2Is7412eJ95/kl4tna/k5gHy1ixiV4rOcUv2ncwXHtHySXAQ3X6Gwo
	Yc4oUDdkZ0ThQZh21jFqrB1PAX+HA9n+jo1s5sK+G1muHBTYCFYgo1tFwJlXx8Kig2ydko2BWEZ
	ADKF2mF94XwEPNcyjvllHqHJTY+oxPhXUD1Jc+IejoTSB/auqSoj3PtclOMAMTIlIVBYuGkH1Ue
	P8f6n4f6lgDQJHnvdANEhNa4H05KVWWIx73b175VM1ZfSq+TCSFk=
X-Received: by 2002:a05:622a:c6:b0:4ee:19f2:9f1b with SMTP id d75a77b69052e-5014822bafemr8157001cf.37.1768339995183;
        Tue, 13 Jan 2026 13:33:15 -0800 (PST)
X-Received: by 2002:a05:622a:c6:b0:4ee:19f2:9f1b with SMTP id d75a77b69052e-5014822bafemr8156571cf.37.1768339994692;
        Tue, 13 Jan 2026 13:33:14 -0800 (PST)
Received: from localhost (pool-100-17-20-16.bstnma.fios.verizon.net. [100.17.20.16])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89077268016sm164280926d6.46.2026.01.13.13.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 13:33:14 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Tue, 13 Jan 2026 16:32:43 -0500
Message-Id: <20260113-dmabuf-heap-system-memcg-v2-0-e85722cc2f24@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/zXNQQ7CIBCF4as0s3YaoILVlfcwLkaYFha0DVCja
 Xp30cTlt3j/2yBzCpzh0myQ+BlymKcKdWjAeppGxuCqQQllhBQKXaTHOqBnWjC/c+GIkaMd0fa
 Gul46YzqCOl8SD+H1S9/u1UOaIxafmP5BLZWU8txJYdqT1sdeo0L+3q6Or4mdp9LaOcK+fwCrp
 AtLqAAAAA==
X-Change-ID: 20260102-dmabuf-heap-system-memcg-c86a381d663a
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Maxime Ripard <mripard@redhat.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: q1D-7eZMQUtWWFXDR7EnpKpkodzpctdC4LgZ83p8kFw_1768339996
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CD4WRQDB2T5Y26BURTLF6GZ76CTJJFAW
X-Message-ID-Hash: CD4WRQDB2T5Y26BURTLF6GZ76CTJJFAW
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:55 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Eric Chanudet <echanude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/2] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CD4WRQDB2T5Y26BURTLF6GZ76CTJJFAW/>
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
	DATE_IN_PAST(1.00)[2226];
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
	NEURAL_HAM(-0.00)[-0.850];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 5289C411894
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Capture dmabuf system heap allocations in memcg following prior
conversations[1][2]. Disable this behavior by default unless configured
by "dma_heap.mem_accounting" module parameter.

[1] https://lore.kernel.org/dri-devel/Z-5GZ3kJDbhgVBPG@phenom.ffwll.local/
[2] https://lore.kernel.org/all/CABdmKX2_UOENujpW0dXe0Z0x+4V3onfGDmHf1DMOXfDha6ddOA@mail.gmail.com/

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
 drivers/dma-buf/heaps/system_heap.c | 9 +++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)
---
base-commit: b71e635feefc852405b14620a7fc58c4c80c0f73
change-id: 20260102-dmabuf-heap-system-memcg-c86a381d663a

Best regards,
-- 
Eric Chanudet <echanude@redhat.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
