Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fUICK5FhSmpjCAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 05 Jul 2026 15:52:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3146270A2A9
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 05 Jul 2026 15:52:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=eXdXF+HT;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3C0B40A43
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 Jul 2026 13:52:15 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 7088D3F7BF
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 Jul 2026 13:52:05 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C48E2413C7;
	Sun,  5 Jul 2026 13:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C6B21F00A3D;
	Sun,  5 Jul 2026 13:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783259524;
	bh=hiXx0kh1llU+tqTb5cQLeELIhtzQB8YMaLGKmHcMmT8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=eXdXF+HTA76vk6XNS/vpiHTMSk+4FpMeNvRZmKgO8fO2droK6kJamzz2kJ8o2E9mW
	 UXXYCvFJ5fT1e2JQ+P9Tv3IJ76zYmA+czNJ9uy4Xg5XK1a0WoqHA3kDRrX+VbCFdU3
	 rqA9ifY2b9eHSUHyxfpweXEQCaU/cSUQ3At3MiJQt2DcC5sGzpskRjaDvjuNhV3vG5
	 BegQJHRNGJ59ocpzb/UbLmhFvM6KVGIZ1poDnVkzWlij5XbukRWorvucLvVJkqa5HG
	 hGxerQFd58E7/X1XZi9/7xfznMbhiXcZWtc7z0jwPrzdgjdKAdViUYJvlPraIvFsYE
	 2/qLQXFlaM9FQ==
From: Sasha Levin <sashal@kernel.org>
To: stable@vger.kernel.org,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Gustavo Padovan <gustavo@padovan.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Yunxiang Li <Yunxiang.Li@amd.com>
Date: Sun,  5 Jul 2026 09:51:58 -0400
Message-ID: <2026070416-stable-reply-0003@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260703-5-15-dma-fence-unwrap-v2-1-43d58ee68c6b@linaro.org>
References: <20260703-5-15-dma-fence-unwrap-v2-1-43d58ee68c6b@linaro.org>
MIME-Version: 1.0
X-Spamd-Bar: --------
Message-ID-Hash: KK2PAUN5PMDYQSL57MCZWAEZHWIESRIX
X-Message-ID-Hash: KK2PAUN5PMDYQSL57MCZWAEZHWIESRIX
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, peter.griffin@linaro.org, andre.draszik@linaro.org, jyescas@google.com, kernel-team@android.com, Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: remove unused dma-fence-unwrap.c (stable/linux-5.15.y only)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KK2PAUN5PMDYQSL57MCZWAEZHWIESRIX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stable@vger.kernel.org,m:sumit.semwal@linaro.org,m:gustavo@padovan.org,m:christian.koenig@amd.com,m:alexander.deucher@amd.com,m:Yunxiang.Li@amd.com,m:sashal@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:andre.draszik@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,m:tudor.ambarus@linaro.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashal@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashal@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3146270A2A9

On Thu, 2026-07-03 at 14:28 +0000, Tudor Ambarus wrote:
> The file drivers/dma-buf/dma-fence-unwrap.c was incorrectly added to
> the 5.15.y stable branch in commit 4e82b9c11d3c ("dma-buf: add
> dma_fence_timestamp helper") as a new file, but it was never enabled in
> the Makefile, and its header include/linux/dma-fence-unwrap.h was not
> present, making it uncompilable.

Queued for 5.15.y, thanks.

-- 
Thanks,
Sasha
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
