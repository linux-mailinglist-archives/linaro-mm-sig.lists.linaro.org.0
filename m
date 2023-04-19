Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B3A6F55CD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:17:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7B533EC67
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:17:49 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by lists.linaro.org (Postfix) with ESMTPS id 1A8383E923
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 00:10:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=B7j563x3;
	spf=pass (lists.linaro.org: domain of justinpopo6@gmail.com designates 209.85.160.182 as permitted sender) smtp.mailfrom=justinpopo6@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f182.google.com with SMTP id ey8so7368129qtb.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 17:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681863047; x=1684455047;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/2vIzbLiLymfxf2AgDpir16B8+TkBntySAPe1DAnU4w=;
        b=B7j563x3k3sFbQ8tcPKuW1KI8WAmt2BvMWhtVVwnSgSFmZLSng25KrLtgS22jcSMef
         f9ETGGwIUFO1nXdLmgnrrHrspOuMVWgFIfyhI7uMZarwU+XSoxl/LmlD9qDWbw0gaYbl
         +Pz6WVhv2rdPPNokLIcZ0MwlJDh7/Kyl3I3Opk+wD31KjOxFxlPjmtVYne6PJ71KXGco
         FK4dxm3Iid9PYfyrWuZpHvXqUJ5eWydwW4k49AgT7Hb/9fim64sqTjHltl/CFI/dXBkM
         5TVoYG2mEDgwQu2YyJpcYwAyP4HczGii417hwg1vE2jHvRNTvURD8UrVjE0TStsmjKJs
         xWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681863047; x=1684455047;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/2vIzbLiLymfxf2AgDpir16B8+TkBntySAPe1DAnU4w=;
        b=TMp1U76C8D/olGzdKSqS+B1eyMSgko5FtpmO7brPmfDlvzl5F1eq/RJg6FSErn0EUj
         X5srOUBbSSOyfH32gFFmEHmfzomydTxu0BuvNdHYUC8c3fUw8uObj/8drT5kjkmWRMOb
         Wq9aJ02wA5zgQcLZfntupW3Qy8YOFua6LURKLtQF7SSvoedUbuO8JRHQmFZIpK/5Audh
         2SjDmt6XUc+r+KZUbHL+eCTOBQXLRIUyydAaRhrINWID8BfNQavnniBwCok0JxWv/K36
         S0JIXNJtN2oHJxkbJS839hedCm3ULGy5lcg4WM+5H82zKkzf/hAADiq5Y0fDCHGElbk6
         So7g==
X-Gm-Message-State: AAQBX9cpmeKnQQplRj+v/oMsch/Ra5o0B31sKkh9qwBk9W2GRvE9xAeR
	4zTAwVnIg/3e8TK5WIbj2InhhPYdVy5tZg==
X-Google-Smtp-Source: AKy350YYX3xkMc3JUvVz099jJkT0BT8lDoC1lOhDKEvkClJkM1OMCPtW2W7AMXymPuhTaYfQABlMzg==
X-Received: by 2002:a05:622a:44c:b0:3e6:454f:9a89 with SMTP id o12-20020a05622a044c00b003e6454f9a89mr2958425qtx.14.1681863046793;
        Tue, 18 Apr 2023 17:10:46 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d14-20020a37680e000000b0074d1b6a8187sm2639035qkc.130.2023.04.18.17.10.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Apr 2023 17:10:46 -0700 (PDT)
From: Justin Chen <justinpopo6@gmail.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	bcm-kernel-feedback-list@broadcom.com
Date: Tue, 18 Apr 2023 17:10:17 -0700
Message-Id: <1681863018-28006-6-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.182:from];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1A8383E923
X-Spamd-Bar: -
X-MailFrom: justinpopo6@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 656V7OUBNV4C5UJJLFHPD6TO77BF4ZO4
X-Message-ID-Hash: 656V7OUBNV4C5UJJLFHPD6TO77BF4ZO4
X-Mailman-Approved-At: Wed, 03 May 2023 10:15:30 +0000
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next 5/6] net: phy: bcm7xxx: Add EPHY entry for 74165
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/656V7OUBNV4C5UJJLFHPD6TO77BF4ZO4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Florian Fainelli <f.fainelli@gmail.com>

74165 is a 16nm process SoC with a 10/100 integrated Ethernet PHY,
utilize the recently defined 16nm EPHY macro to configure that PHY.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 drivers/net/phy/bcm7xxx.c | 1 +
 include/linux/brcmphy.h   | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/net/phy/bcm7xxx.c b/drivers/net/phy/bcm7xxx.c
index 06be71ecd2f8..5c03c379cb5e 100644
--- a/drivers/net/phy/bcm7xxx.c
+++ b/drivers/net/phy/bcm7xxx.c
@@ -913,6 +913,7 @@ static struct phy_driver bcm7xxx_driver[] = {
 	BCM7XXX_28NM_GPHY(PHY_ID_BCM7278, "Broadcom BCM7278"),
 	BCM7XXX_28NM_GPHY(PHY_ID_BCM7364, "Broadcom BCM7364"),
 	BCM7XXX_28NM_GPHY(PHY_ID_BCM7366, "Broadcom BCM7366"),
+	BCM7XXX_16NM_EPHY(PHY_ID_BCM74165, "Broadcom BCM74165"),
 	BCM7XXX_28NM_GPHY(PHY_ID_BCM74371, "Broadcom BCM74371"),
 	BCM7XXX_28NM_GPHY(PHY_ID_BCM7439, "Broadcom BCM7439"),
 	BCM7XXX_28NM_GPHY(PHY_ID_BCM7439_2, "Broadcom BCM7439 (2)"),
diff --git a/include/linux/brcmphy.h b/include/linux/brcmphy.h
index 9e77165f3ef6..e11c2e9a5398 100644
--- a/include/linux/brcmphy.h
+++ b/include/linux/brcmphy.h
@@ -44,6 +44,7 @@
 #define PHY_ID_BCM7366			0x600d8490
 #define PHY_ID_BCM7346			0x600d8650
 #define PHY_ID_BCM7362			0x600d84b0
+#define PHY_ID_BCM74165			0x359052c0
 #define PHY_ID_BCM7425			0x600d86b0
 #define PHY_ID_BCM7429			0x600d8730
 #define PHY_ID_BCM7435			0x600d8750
-- 
2.7.4

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
