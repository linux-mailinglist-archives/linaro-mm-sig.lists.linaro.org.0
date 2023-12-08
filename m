Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 962A3809F31
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Dec 2023 10:24:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A49F43CE9
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Dec 2023 09:24:01 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 9F0DC3F1AF
	for <linaro-mm-sig@lists.linaro.org>; Fri,  8 Dec 2023 09:23:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=IEFVVX8r;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 365E162310;
	Fri,  8 Dec 2023 09:23:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8611DC433C7;
	Fri,  8 Dec 2023 09:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702027430;
	bh=8OKSkc37GqD1hhdq1qHNAv72gT7ownApsTE4qDcF0aw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IEFVVX8rcnFCr8X12QXLAg/kSs1vQpQ0dB/O10eu0OqplaCbjSus2/W+zozrl4FXQ
	 xKoLedcf+mBEx8NYJNFyN2f6AGIg2+0mmFiSZah1wgL8DtNjPuGRyYaAFhR4FZyZGa
	 pU9V6b8voPW/3dUKQr6LBh9Y9iAYStW1GUPgUobBF6kKUZuzCXEW7NMkSfyOgeAU2R
	 gbefywtzFVCsu4lZJQXeMBS261j0cMnYGhHGaMbku40yAVybUoufMKdKEDx+Lvtc+Z
	 CxL98nX4fQ1U9US/6Nhd9mWiMchAgwlSSGtiPGGqtLInIRmvbc/m1cdEnO0NcOKmpy
	 x1ld9JOeh0FAw==
From: Maxime Ripard <mripard@kernel.org>
To: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 ivan.orlov0322@gmail.com, maarten.lankhorst@linux.intel.com,
 skhan@linuxfoundation.org, tzimmermann@suse.de,
 Ziqi Zhao <astrajoan@yahoo.com>
In-Reply-To: <20230721161446.8602-1-astrajoan@yahoo.com>
References: <20230716043411.4950-1-astrajoan@yahoo.com>
 <20230721161446.8602-1-astrajoan@yahoo.com>
Message-Id: <170202742812.13384.8140202310424410642.b4-ty@kernel.org>
Date: Fri, 08 Dec 2023 10:23:48 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-Rspamd-Queue-Id: 9F0DC3F1AF
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[4fad2e57beb6397ab2fc];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,lists.freedesktop.org,linux.intel.com,linuxfoundation.org,suse.de,yahoo.com];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JR3SQGHQC6DZXSI74H4476NMGS3XPOCT
X-Message-ID-Hash: JR3SQGHQC6DZXSI74H4476NMGS3XPOCT
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, glider@google.com, syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com, sumit.semwal@linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/crtc: Fix uninit-value bug in drm_mode_setcrtc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JR3SQGHQC6DZXSI74H4476NMGS3XPOCT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 21 Jul 2023 09:14:46 -0700, Ziqi Zhao wrote:
> The connector_set contains uninitialized values when allocated with
> kmalloc_array. However, in the "out" branch, the logic assumes that any
> element in connector_set would be equal to NULL if failed to
> initialize, which causes the bug reported by Syzbot. The fix is to use
> an extra variable to keep track of how many connectors are initialized
> indeed, and use that variable to decrease any refcounts in the "out"
> branch.
> 
> [...]

Applied to drm/drm-misc (drm-misc-fixes).

Thanks!
Maxime

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
