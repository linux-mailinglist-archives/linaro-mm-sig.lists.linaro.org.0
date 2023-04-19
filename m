Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 140E16F55C0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:16:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2320F3F95B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:16:09 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by lists.linaro.org (Postfix) with ESMTPS id 3DBAB3E923
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 00:10:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=ZHXM1vJB;
	spf=pass (lists.linaro.org: domain of justinpopo6@gmail.com designates 209.85.160.174 as permitted sender) smtp.mailfrom=justinpopo6@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id l11so31842422qtj.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 17:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681863029; x=1684455029;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rE1EEDO+fEqLoZiLrhfSx85AyW8A+vdoa/Snn4cvZO8=;
        b=ZHXM1vJBIY5/tmjJT0bVpzwkzgcuj3UqE6ZuAM+WopWTizO0zDdpKa7LVRnsmGTn1d
         dNzyQC1wJv2vOr86Nkl6+DausEEP53FrPRiRv4UhVQurNRPpO1CmxFUxHDSvYCh0/r4L
         STAJGBMIzP8mz/nBypYUlSeBjFBmmgYZ34WTb9Sd6ekjELm6Sq0Us2ZOuGOcqa6R7okN
         2jNHKJT6OPVZCX1v4iC9zXkRhVV+lHS8I1FE7A1UBj5sBxKKNp3qwrF86F1KMEggt5SN
         XY0Sxw8Awni/NHCWXYhwkKcyE6nH1rM9D1QcXbrpE5pYEXAY0ipeoblBZlUd07Kvxxbt
         q+Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681863029; x=1684455029;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rE1EEDO+fEqLoZiLrhfSx85AyW8A+vdoa/Snn4cvZO8=;
        b=EpNl9D2HSVwM4f1Id5Nulkc1X2kaSWvTVgGO/KFabB4SgaKenNiiU849sEKfCb7ybS
         CkzVaeRy+1QoiAjoeVJf3p0lIgBNMmA+pEv21uj6q/7yadPFKw435BAv93AqdiGDCvsE
         o4g65AQGMmI4FQI4pIF42PBq3RkG5Xr7g5Zo6dRgoGWzQ0X4i+JavyTzQ4peJE2JZxtq
         KYskWVPMUMv4uPGgIawbC5JQRLW1wRjbAnjk9J23Pha9KUBCxGtDt2ciGIjn/2N7gVV2
         LSeV/qwyswA61XMlHHD2lYDxGTC2f3290QOt1qntR5Pg6K32TmLB2BNMNZJgPYTPEI2C
         UUEw==
X-Gm-Message-State: AAQBX9fr1weSTO6dQf9OiDTF6uUA5JY4wo93CT/3jIcHdvb3caUZYnSY
	3Z2/KTSj642Oadfh3hyzHcI=
X-Google-Smtp-Source: AKy350aJZdwTEBQKh+v50v7gsPOE+8maA9oyygbdcVRFgplCIK6a3+p7/GpmoeTI1M2smoh5fZHNFg==
X-Received: by 2002:ac8:5e4d:0:b0:3e6:4fab:478e with SMTP id i13-20020ac85e4d000000b003e64fab478emr3325666qtx.33.1681863028798;
        Tue, 18 Apr 2023 17:10:28 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d14-20020a37680e000000b0074d1b6a8187sm2639035qkc.130.2023.04.18.17.10.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Apr 2023 17:10:28 -0700 (PDT)
From: Justin Chen <justinpopo6@gmail.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	bcm-kernel-feedback-list@broadcom.com
Date: Tue, 18 Apr 2023 17:10:12 -0700
Message-Id: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.174:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3DBAB3E923
X-Spamd-Bar: -
X-MailFrom: justinpopo6@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WK3WIOM35U2IO64FR5VZHIJP6NF5UR5X
X-Message-ID-Hash: WK3WIOM35U2IO64FR5VZHIJP6NF5UR5X
X-Mailman-Approved-At: Wed, 03 May 2023 10:14:31 +0000
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next 0/6] Brcm ASP 2.0 Ethernet controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WK3WIOM35U2IO64FR5VZHIJP6NF5UR5X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Justin Chen <justin.chen@broadcom.com>

Add support for the Broadcom ASP 2.0 Ethernet controller which is first
introduced with 72165.

Add support for 74165 10/100 integrated Ethernet PHY which also uses
the ASP 2.0 Ethernet controller.

Florian Fainelli (2):
  dt-bindings: net: Brcm ASP 2.0 Ethernet controller
  net: phy: bcm7xxx: Add EPHY entry for 74165

Justin Chen (4):
  dt-bindings: net: brcm,unimac-mdio: Add asp-v2.0
  net: bcmasp: Add support for ASP2.0 Ethernet controller
  net: phy: mdio-bcm-unimac: Add asp v2.0 support
  MAINTAINERS: ASP 2.0 Ethernet driver maintainers

 .../devicetree/bindings/net/brcm,asp-v2.0.yaml     |  146 ++
 .../devicetree/bindings/net/brcm,unimac-mdio.yaml  |    2 +
 MAINTAINERS                                        |    9 +
 drivers/net/ethernet/broadcom/Kconfig              |   11 +
 drivers/net/ethernet/broadcom/Makefile             |    1 +
 drivers/net/ethernet/broadcom/asp2/Makefile        |    2 +
 drivers/net/ethernet/broadcom/asp2/bcmasp.c        | 1527 ++++++++++++++++++++
 drivers/net/ethernet/broadcom/asp2/bcmasp.h        |  636 ++++++++
 .../net/ethernet/broadcom/asp2/bcmasp_ethtool.c    |  620 ++++++++
 drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c   | 1425 ++++++++++++++++++
 .../net/ethernet/broadcom/asp2/bcmasp_intf_defs.h  |  238 +++
 drivers/net/mdio/mdio-bcm-unimac.c                 |    2 +
 drivers/net/phy/bcm7xxx.c                          |    1 +
 include/linux/brcmphy.h                            |    1 +
 14 files changed, 4621 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
 create mode 100644 drivers/net/ethernet/broadcom/asp2/Makefile
 create mode 100644 drivers/net/ethernet/broadcom/asp2/bcmasp.c
 create mode 100644 drivers/net/ethernet/broadcom/asp2/bcmasp.h
 create mode 100644 drivers/net/ethernet/broadcom/asp2/bcmasp_ethtool.c
 create mode 100644 drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c
 create mode 100644 drivers/net/ethernet/broadcom/asp2/bcmasp_intf_defs.h

-- 
2.7.4

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
