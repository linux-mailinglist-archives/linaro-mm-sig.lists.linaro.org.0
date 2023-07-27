Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F96C79A8FC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:49:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 761403F003
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:49:46 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by lists.linaro.org (Postfix) with ESMTPS id A26FC3ED9C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jul 2023 05:22:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=BTJaFlWM;
	spf=pass (lists.linaro.org: domain of dg573847474@gmail.com designates 209.85.221.44 as permitted sender) smtp.mailfrom=dg573847474@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-317716a4622so554216f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Jul 2023 22:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690435328; x=1691040128;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zu+TPu8vc5z407cLLTcD0tM3SAh82DPnoPRhY7CjDH8=;
        b=BTJaFlWMXhbYZaQanG+xg4emhc+hhhvUk47ZrMZ0EiTYhk9s7YgWF3qPS07zTSRkne
         wI54D260XhItT6aZ+NgVdCFLFrj/v4mZwR237D27dclMwsLp/mRBsKsHVtHHMq6QWNHo
         xvJiMlY2tfsmswEeyr8Xm78xl5Ti5xcRpPV3YYf8pCYvs0gb0cdp20btX2xU+ZiY5aAn
         Gbk+gryvRkILcxZPiZxVXvuxUoV03e0caxrTw1jgrTYAI6HCjPOfW0X+SFE/gf3USUAZ
         5oExijmaJEIcrhcgl3PUATRtathZGlZMayplGCslIHRHEioTMID1bsxe6/8izyNIIz91
         5Srw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690435328; x=1691040128;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zu+TPu8vc5z407cLLTcD0tM3SAh82DPnoPRhY7CjDH8=;
        b=GgOZ/BprzuRxHR5FJCpkei5ocu7ARc5YZNjgpdgJ85VG4p2kxLQ3UamV3dq//vA8fT
         akAE/+yquELYWX56lS+2F26aYm0jJmqrYNlSKsigeE6v3dN2L0pSrNLTKXLkY7+YxHnk
         SMoFBLSiEr+F9E6ygsQfC0w0YZHpuCFMM5EmaSwd1BRGG/uadGzZEstyy4EHRbD3pPa7
         kdbl35H2tTybG3Xc3XP2heMtF62DMb3oAyNi1r3C93JG9wQOZ2uOAZD2S3rs61rsBVwp
         QGclw/jWCreacdpigsolaEaARq8WbX+lfpkpJGxZ0UEWr7PtWB014j7N2o3KT7/Gh4xV
         0xXA==
X-Gm-Message-State: ABy/qLZMKrTkIy6GLAX5XhKYCB4+Bsh6FeZc6nAOqNe1EY+fds2syw+u
	afBS2LWcOPrJ+BSm7YT6an3c2wL5N9eV5AP7aI8=
X-Google-Smtp-Source: APBJJlHKb/e5eTfcqSQ09CINh7JgQDQGk6myc+uS3OwL7JKK7UjH9Y66gbVO3meh6qK4rCcDgrU39buz7Ga9b73gWWE=
X-Received: by 2002:a5d:6e42:0:b0:314:21b:1ea2 with SMTP id
 j2-20020a5d6e42000000b00314021b1ea2mr819278wrz.39.1690435328409; Wed, 26 Jul
 2023 22:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230726181322.26754-1-dg573847474@gmail.com>
In-Reply-To: <20230726181322.26754-1-dg573847474@gmail.com>
From: Chengfeng Ye <dg573847474@gmail.com>
Date: Thu, 27 Jul 2023 13:21:57 +0800
Message-ID: <CAAo+4rV1GKrzo77Sum89n6ysDyhVhzrM2OX-ADk9AOrFkZfQow@mail.gmail.com>
To: james.smart@broadcom.com, dick.kennedy@broadcom.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, sumit.semwal@linaro.org, christian.koenig@amd.com,
	justin.tee@broadcom.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A26FC3ED9C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.70 / 15.00];
	BAYES_HAM(-2.70)[98.68%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail-wr1-f44.google.com:helo,mail-wr1-f44.google.com:rdns];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_SPAM(0.00)[0.558];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.44:from]
X-MailFrom: dg573847474@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2UL64RCNVP5BDM7TQP5SH3AYWWC5EH2J
X-Message-ID-Hash: 2UL64RCNVP5BDM7TQP5SH3AYWWC5EH2J
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:48 +0000
CC: linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] scsi: lpfc: Fix potential deadlock on &ndlp->lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2UL64RCNVP5BDM7TQP5SH3AYWWC5EH2J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sorry for the interruption, I just notice that the ndlp node
inside timer does not share with that of lpfc_cleanup_pending_mbox().

This is a false alarm and sorry again for this.

Best regards,
Chengfeng
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
