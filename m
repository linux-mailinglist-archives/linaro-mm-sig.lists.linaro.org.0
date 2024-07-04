Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2179270B1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jul 2024 09:34:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6669C43CEE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jul 2024 07:34:43 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by lists.linaro.org (Postfix) with ESMTPS id 496F340D54
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jul 2024 07:34:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=whGLzF6u;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.128.180 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-65011d9bd75so2790137b3.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jul 2024 00:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720078480; x=1720683280; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZSJbA3DiJ1YzPD3LPw7LD0YqK/n1egS96uxWCsi6+XA=;
        b=whGLzF6uSZHc1f03fhOfFwg7AnHzabpBhnSyn6vO+lfKL6ff1fNLYV552aX4ipHBb7
         f9mhG09/imoqTsWFh5IzJoEhZhl/os8NFRdzv2KuAnt74LFfgKUBWnD9y+ZN1JlIA45F
         jXhD2UJ8sKIKjn/GuJkeKE1jfDdVJL2mHQwSqwUelgQmwp3BbGd+xlFHpp81Vc52th/m
         DFjjGYjIyqgk9vIIUoyVyXSp8a2ilKbQ6aX/uOHQliPylnJdN9weNrtHL4YhmDq3vKXk
         RrEYoi5IhrVZutnZzamlcnNTDUbWCheaUWHOHRhUpq91PnSnP7a//9OKSjEbK7z2W4K2
         4TbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720078480; x=1720683280;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZSJbA3DiJ1YzPD3LPw7LD0YqK/n1egS96uxWCsi6+XA=;
        b=eKQLSjqIo0i2qFM216KkeLzq93pQuSoSqlWhtnJDRqtfw4PRGE82ucbL9S51RdKunJ
         KtHTkj0+YpU3dtDwsBmnKdODtluRIYvnbAJQ9GfkGrPJhXJjEvaTWHwrblDjzPK0OO5a
         eIyrg83/7qliM6ptf/+yhh+w86+Z7kq9cNeLa78AiHJnDNeO+35nzSqQxmavda4+QAZk
         HnsAfWjZ2ssA+y+ePOW0tqMorzKOdRiI6VcT0kASUnEEIFK1VqLYHSbSMcbEB98QvI6O
         TLMdjP+xaMBpo+abfSUelbRKPEsWKK90gZi/efs7/ShbZdxFTIkQdp5r2EbszOeSB9+h
         2ekA==
X-Forwarded-Encrypted: i=1; AJvYcCWRgSR+IaXU3mKGLU/4cyGykh7Bc21Y0NoLjpG5eIUqypvbb6uQbms9I4KVrGxvglIPvGclPxP7Og8NOqnp1REEf7PaDWVhi+nFS8ibggs=
X-Gm-Message-State: AOJu0Yx1lE6th0mz9sSamNwbJe9vMgQ75dlCVfjVA/ESaRaivKIqO1MC
	Yym9nIbEX/PLxU6dyIM1ZG4u3Y4YSjs6KqHrpajVTVcHG824siXv1+tI7h8dNgcFH7aBYMnSknQ
	UX+g4swhzmP696tgMpwUKnf+HUWFf59L72O9Jf+90
X-Google-Smtp-Source: AGHT+IHhzigWq58lUOH6s/Jt2RBqXA0UUUMkvO30rPZCplWLfh0mEABxieG1yDWZSLhKM2T0i2/FZBaIpwaJfjilpU0=
X-Received: by 2002:a05:690c:7483:b0:631:2ebf:b8dc with SMTP id
 00721157ae682-652d5333721mr10121657b3.4.1720078479809; Thu, 04 Jul 2024
 00:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <20240702-qcom-tee-object-and-ioctls-v1-0-633c3ddf57ee@quicinc.com>
 <20240702-qcom-tee-object-and-ioctls-v1-1-633c3ddf57ee@quicinc.com>
 <ink4tq3wk2jkpybiisaudkun3g2x2drfogrdw43zdpi6yh2u5g@yrvrxzxsi46g> <836dab13-9c59-4d87-a600-a0be6506deb2@quicinc.com>
In-Reply-To: <836dab13-9c59-4d87-a600-a0be6506deb2@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 4 Jul 2024 10:34:28 +0300
Message-ID: <CAA8EJprp2veCaQq8GsYv4Mu1HQbx8nWv0XWtxcE4cu5kxkA16w@mail.gmail.com>
To: Amirreza Zarrabi <quic_azarrabi@quicinc.com>
X-Rspamd-Queue-Id: 496F340D54
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.180:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LQVINOXJ536NE6GNVSINM2OM4CNTIMAN
X-Message-ID-Hash: LQVINOXJ536NE6GNVSINM2OM4CNTIMAN
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, srinivas.kandagatla@linaro.org, bartosz.golaszewski@linaro.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 1/3] firmware: qcom: implement object invoke support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LQVINOXJ536NE6GNVSINM2OM4CNTIMAN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 4 Jul 2024 at 00:40, Amirreza Zarrabi <quic_azarrabi@quicinc.com> wrote:
>
>
>
> On 7/3/2024 10:13 PM, Dmitry Baryshkov wrote:
> > On Tue, Jul 02, 2024 at 10:57:36PM GMT, Amirreza Zarrabi wrote:
> >> Qualcomm TEE hosts Trusted Applications and Services that run in the
> >> secure world. Access to these resources is provided using object
> >> capabilities. A TEE client with access to the capability can invoke
> >> the object and request a service. Similarly, TEE can request a service
> >> from nonsecure world with object capabilities that are exported to secure
> >> world.
> >>
> >> We provide qcom_tee_object which represents an object in both secure
> >> and nonsecure world. TEE clients can invoke an instance of qcom_tee_object
> >> to access TEE. TEE can issue a callback request to nonsecure world
> >> by invoking an instance of qcom_tee_object in nonsecure world.
> >
> > Please see Documentation/process/submitting-patches.rst on how to write
> > commit messages.
>
> Ack.
>
> >
> >>
> >> Any driver in nonsecure world that is interested to export a struct (or a
> >> service object) to TEE, requires to embed an instance of qcom_tee_object in
> >> the relevant struct and implements the dispatcher function which is called
> >> when TEE invoked the service object.
> >>
> >> We also provids simplified API which implements the Qualcomm TEE transport
> >> protocol. The implementation is independent from any services that may
> >> reside in nonsecure world.
> >
> > "also" usually means that it should go to a separate commit.
>
> I will split this patch to multiple smaller ones.
>

[...]

> >
> >> +    } in, out;
> >> +};
> >> +
> >> +int qcom_tee_object_do_invoke(struct qcom_tee_object_invoke_ctx *oic,
> >> +    struct qcom_tee_object *object, unsigned long op, struct qcom_tee_arg u[], int *result);
> >
> > What's the difference between a result that gets returned by the
> > function and the result that gets retuned via the pointer?
>
> The function result, is local to kernel, for instance memory allocation failure,
> or failure to issue the smc call. The result in pointer, is the remote result,
> for instance return value from TA, or the TEE itself.
>
> I'll use better name, e.g. 'remote_result'?

See how this is handled by other parties. For example, PSCI. If you
have a standard set of return codes, translate them to -ESOMETHING in
your framework and let everybody else see only the standard errors.


-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
